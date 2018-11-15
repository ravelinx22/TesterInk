// Imports
var fs = require('fs');
const { runWebTest } = require('./web-desk.js');
const { runMobileTest } = require('./mobile-desk.js');
const { setupWebReports, setupMobileReports, handleVRT } = require('./vrt-handler.js');
const { handleReport } = require('./report-handler.js');
const { insertTest, finishTestExecution } = require('./testdb.js');

// Constants
let WEB = 0;
let MOBILE = 1;
let NONE = 2;

// Initialization
var queue = [];
var tests = [];
var type = NONE;
var path = null;
var mutation_web_path = null;
var test_identificator = null;

// General
const readJSONFile = (file_path, file_mutation_web_path) => {
  path = file_path;
  mutation_web_path = file_mutation_web_path;
  var data = fs.readFileSync(path, 'utf8');
  var configuration = JSON.parse(data);
  insertTest(configuration, readJSONData);
}

module.exports = {
  readJSONFile
};

// Helpers
function readJSONData(test_id, configuration) {
  if(!test_id) {
    return;
  } else {
    test_identificator = test_id;
  }

  console.log("Se comenzo ejecución " + test_identificator);
  type = configuration["type"];
  tests = configuration["tests"];

  // Build test queue
  for(var test in tests) {
    queue.push(test);
  }

  if(type == WEB) {
    if(tests["mutation"]) {
      tests["mutation"]["stryker_conf_path"] = mutation_web_path;
    }
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
  runWebTest(firstTest, tests[firstTest], (key) => {
    webTestCallback(key, null);
  });
}

function executeMobileTests() {
  if(queue.length <= 0) return;
  let firstTest = queue.shift();
  runMobileTest(firstTest, tests[firstTest], (key) => {
    mobileTestCallback(key);
  });
}

// Callbacks
function webTestCallback(completedTest, vrtCompletedTest) {
  let testName = (completedTest ? completedTest : vrtCompletedTest);
  if(testName && (vrtCompletedTest || !tests[completedTest]["run_vrt"])) {
    handleReport(WEB, test_identificator, testName, tests[testName], () => {
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
    runWebTest(test, tests[test], (key) => {
      webTestCallback(key, null);
    });
  }
}

function mobileTestCallback(completedTest) {
  if(completedTest) {
    handleReport(MOBILE, test_identificator, completedTest, tests[completedTest], () => {
      console.log("Se termino guardando reportes.");
      mobileTestCallback(null);
    })
    return;
  }

  if(queue.length <= 0) return;
  let test = queue.shift();

  runMobileTest(test, tests[test], (key) => {
    mobileTestCallback(key);
  });
}
