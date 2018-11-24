// Imports
var fs = require('fs');
const { runWebTest } = require('./web-desk.js');
const { runMobileTest } = require('./mobile-desk.js');
const { setupWebReports, setupMobileReports, handleVRT } = require('./vrt-handler.js');
const { handleReport, handleMutantReport } = require('./report-handler.js');
const { insertTest, finishTestExecution } = require('./testdb.js');

// Initialization
var queue = [];
var tests = [];
var test_identificator = null;
var count = 1;
var app_package = null;

// Constants
let WEB = 0;
let MOBILE = 1;
let NONE = 2;

// General

const handleMutants = (test_id, package_name, received_tests, doneMutantsCallback) => {
  test_identificator = test_id;
  tests = received_tests;
  app_package = package_name;
  for(var i = 0; i < 10; i++) {
    var subQueue = [];
    for(var test in tests) {
      if(test.type!='mutation'){
        subQueue.push(test);
      }
    }
    queue.push(subQueue);
  }
  executeMutants(doneMutantsCallback);
}

module.exports = {
  handleMutants
};

// Helpers
function executeMutants(doneMutantsCallback) {
  if(queue.length <= 0) {
    doneMutantsCallback();
    return;
  }
  console.log("\n\n/////////////////////////////////");
  console.log("Mutante " + count);
  console.log("/////////////////////////////////\n\n");
  setupMobileReports(test_identificator, () => {
    let execution_queue = queue.shift();
    count++;
    executeMobileTests(execution_queue, () => {
      executeMutants(doneMutantsCallback);
    });
  });
}

// Ejecutar un solo mutante
function executeMobileTests(execution_queue, doneRunningCallback) {
  if(execution_queue.length <= 0) {
    doneRunningCallback()
    return;
  }
  let apk_path = "../../reports/reports-" + test_identificator + "/mutation/" + app_package + "-mutant" + (count-1) + "/app.apk";
  let firstTest = execution_queue.shift();
  tests[firstTest]["apk_path"] = apk_path;
  if(tests[firstTest].type != 'mutation'){
    runMobileTest(tests[firstTest].type, tests[firstTest], (key) => {
      mobileTestCallback(key, execution_queue, doneRunningCallback);
    });
  }else{
    executeMobileTests(execution_queue, doneRunningCallback);
  }
}

function mobileTestCallback(completedTest, execution_queue, doneRunningCallback) {
  if(completedTest && completedTest != 'mutation') {
    handleMutantReport(count-1, app_package, test_identificator, completedTest, tests[completedTest], () => {
      console.log("Se termino guardando reportes.");
      mobileTestCallback(null, execution_queue, doneRunningCallback);
    })
    return;
  }

  if(execution_queue.length <= 0) {
    doneRunningCallback();
    return;
  }
  let apk_path = "../../reports/reports-" + test_identificator + "/mutation/" + app_package + "-mutant" + (count-1) + "/app.apk";
  let test = execution_queue.shift();
  tests[test]["apk_path"] = apk_path;
  if(tests[firstTest].type != 'mutation'){
    runMobileTest(tests[test].type, tests[test], (key) => {
      mobileTestCallback(key, execution_queue, doneRunningCallback);
    });
  }else{
    mobileTestCallback(completedTest, execution_queue, doneRunningCallback)
  }
}
