// Imports
var CronJob = require('cron').CronJob;
var axios = require('axios');
var fs = require('fs');
const { runWebTest } = require('./web-desk.js');
const { runMobileTest } = require('./mobile-desk.js');
const { setupWebReports, setupMobileReports, handleVRT } = require('./vrt-handler.js');
const { handleReport } = require('./report-handler.js');
const { insertTest, finishTestExecution } = require('./testdb.js');
const { getExecutions, getSetTest } = require('./api-client.js');

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


let executions = [];

let job = new CronJob('*/10 * * * * *', function(){
    getActiveExecutions();
});
job.start(); 


const getActiveExecutions = async () => {
    res = await getExecutions()
  
    executions = res.data.data;
    if(executions){
        executions.forEach(execution => {
            //TODO:  Actualizar estado de la ejecucion

            getTests(execution);
        });
    }
  }


getTests = async (execution) => {
    let testSet = null;
    res = await getSetTest(execution.setPrueba);
    
    if(res.status === 200){
        testSet = res.data.data;
        test_identificator = execution._id;
        type = execution.tipo;
        tests = testSet.arrayPruebas;
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

    /*runWebTest(firstTest.tipoPrueba, firstTest, (key) => {
      webTestCallback(key, null);
    });*/
  }
  
  function executeMobileTests() {
    for(var test in tests) {
      runMobileTest(test, tests[test]);
    }
  }
  
  // Callbacks
  function webTestCallback(completedTest, vrtCompletedTest) {
    let testName = (completedTest ? completedTest : vrtCompletedTest);
    if(testName && (vrtCompletedTest || !tests[completedTest]["run_vrt"])) {
      handleReport(test_identificator, testName, tests[testName], () => {
        console.log("Se termino guardando reportes.");
        webTestCallback(null,null);
      })
      return;
    }
  
    if(queue.length <= 0) {
      finishTestExecution(test_identificator);
    }
  
    let run_vrt = tests[completedTest] ? tests[completedTest]["run_vrt"] : null;
    if(run_vrt) {
      handleVRT(completedTest, tests[completedTest], (key) => {
        webTestCallback(null, completedTest);
      });
    } else {
      let test = queue.shift();
      runWebTest(test.tipoPrueba, test, (key) => {
        webTestCallback(key, null);
      });
    }
  }
  
  function mobileTestCallback(completedTestInfo) {
    if(queue.length <= 0) return;
    let test = queue.shift();
    runMobileTest(test, tests[test], mobileTestCallback);
  }
  


