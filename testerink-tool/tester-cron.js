// Imports
var CronJob = require('cron').CronJob;
var axios = require('axios');
var fs = require('fs');
const { runWebTest } = require('./web-desk.js');
const { runMobileTest } = require('./mobile-desk.js');
const { setupWebReports, setupMobileReports, handleVRT } = require('./vrt-handler.js');
const { handleReport } = require('./report-handler.js');
const { insertTest, finishTestExecution } = require('./testdb.js');
const { getExecutions, getSetTest, getExecutionsByState, updateExecution, saveResult } = require('./api-client.js');

// Constants
let WEB = 'Web';
let MOBILE = 'Movil';
let NONE = 2;

// Initialization
var queue = [];
var tests = [];
var type = NONE;
var path = null;
var mutation_web_path = null;
var test_identificator = null;
var currentTest = null;
var currentExecuction = null;


let executions = [];

let job = new CronJob('0 */5 * * * *', function(){
    getActiveExecutions();
});
job.start(); 


const getActiveExecutions = async () => {
    console.log(":::::::INICIANDO WORKER::::::::::");
    res = await getExecutionsByState('Register');
  
    executions = res.data.data;
    if(executions){
        executions.forEach(execution => {
          execution.state = 'Pending';
          
          updateExecution(execution);
          currentExecution = execution;
          getTests(execution);
        });
    }
  }


getTests = async (execution) => {
    let testSet = null;
    res = await getSetTest(execution.test_id);
    
    if(res.status === 200){
        testSet = res.data.data;
        test_identificator = execution._id;
        type = testSet.type_test;
        tests = testSet.tests;
        readJSONData();
    }

}




// Helpers
function readJSONData() {
    console.log("Se comenzo ejecución " + test_identificator);
    
    // Build test queue
    for(var test in tests) {
      queue.push(test);
    }
    
    if(type == WEB) {
      /*if(tests["mutation"]) {
        tests["mutation"]["stryker_conf_path"] = mutation_web_path;
      }*/
      setupWebReports(test_identificator, startTests);
    } else if(type == MOBILE) {
      setupMobileReports(test_identificator, startTests);
    }
  }
  
  function startTests() {
    if(type == WEB) {
      executeWebTests();
    } else if(type == MOBILE) {
      executeMobileTests();
    }
  }
  
  function executeWebTests() {
    if(queue.length <= 0) return;
    let firstTest = queue.shift();
    currentTest = tests[firstTest];
    runWebTest(currentTest.type, currentTest, (key) => {
      webTestCallback(key, null);
    });
  }
  
  function executeMobileTests() {
    for(var test in tests) {
      runMobileTest(test, tests[test]);
    }
  }
  
  // Callbacks
  function webTestCallback(completedTest, vrtCompletedTest) {
    let testName = (completedTest ? completedTest : vrtCompletedTest);
    if(testName && (vrtCompletedTest || !currentTest["run_vrt"])) {
      handleReport(type ==WEB? 0: type==MOVIL? 1:NONE , test_identificator, testName, currentTest, () => {
        console.log("Guardando reportes y resultado.")
        let result = {
          execution_id: test_identificator,
          id_test: currentTest.id_test,
          name_test: currentTest.description,
          type: type,
          type_test: currentTest.type,
          state: "Executed",
          path_results: "https://s3-us-west-2.amazonaws.com/testerink-tool-bucket/reports/reports-" + test_identificator + "/" + currentTest.type + "/wdio-report.html"
        }
        saveResult(result);
        webTestCallback(null,null);
      })
      return;
    }
  
    if(queue.length <= 0) {
      currentExecution.state = "Executed"
      updateExecution(currentExecution);
      return;
    }
  
    let run_vrt = currentTest ? currentTest["run_vrt"] : null;
    if(run_vrt) {
      handleVRT(completedTest, currentTest, (key) => {
        webTestCallback(null, completedTest);
      });
    } else {
      let idTest = queue.shift();
      currentTest =tests[idTest];
      runWebTest(currentTest.type, currentTest, (key) => {
        webTestCallback(key, null);
      });
    }
  }
  
  function mobileTestCallback(completedTestInfo) {
    if(queue.length <= 0) return;
    let test = queue.shift();
    runMobileTest(test, tests[test], mobileTestCallback);
  }
  


