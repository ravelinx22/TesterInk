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

// Constants
let WEB = 0;
let MOBILE = 1;
let NONE = 2;

// General

const handleMutants = (test_id, received_tests, doneMutantsCallback) => {
  test_identificator = test_id;
  tests = received_tests;
  delete tests["mutation"];
  for(var i = 0; i < 10; i++) {
    var subQueue = [];
    for(var test in tests) {
      subQueue.push(test);
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
  let firstTest = execution_queue.shift();
  runMobileTest(firstTest, tests[firstTest], (key) => {
    mobileTestCallback(key, execution_queue, doneRunningCallback);
  });
}

function mobileTestCallback(completedTest, execution_queue, doneRunningCallback) {
  if(completedTest) {
    handleMutantReport(count-1, test_identificator, completedTest, tests[completedTest], () => {
      console.log("Se termino guardando reportes.");
      mobileTestCallback(null, execution_queue, doneRunningCallback);
    })
    return;
  }

  if(execution_queue.length <= 0) {
    doneRunningCallback();
    return;
  }
  let test = execution_queue.shift();

  runMobileTest(test, tests[test], (key) => {
    mobileTestCallback(key, execution_queue, doneRunningCallback);
  });
}
