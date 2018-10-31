// Imports
var fs = require('fs');
const { runWebTest } = require('./web-desk.js');
const { runMobileTest } = require('./mobile-desk.js');
const { clearWebReports, clearMobileReports, handleVRT } = require('./vrt-handler.js');
const { insertTest, finishTestExecution } = require('./testdb.js');

// Constants
let WEB = 0;
let MOBILE = 1;
let NONE = 2;
let PATH = "./test.json";
let MUTATION_WEB_PATH = "~/Desktop/stryker.conf.js";

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

readJSONFile(PATH, MUTATION_WEB_PATH);

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
    clearWebReports(startTests);
  } else if(type == MOBILE) {
    clearMobileReports(startTests);
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
  runWebTest(firstTest, tests[firstTest], webTestCallback);
}

function executeMobileTests() {
  for(var test in tests) {
    runMobileTest(test, tests[test]);
  }
}

// Callbacks
function webTestCallback(completedTest) {
  if(queue.length <= 0) {
    finishTestExecution(test_identificator);
  }
  let run_vrt = tests[completedTest] ? tests[completedTest]["run_vrt"] : null;
  if(run_vrt) {
    handleVRT(completedTest, tests[completedTest], webTestCallback);
  } else {
    let test = queue.shift();
    runWebTest(test, tests[test], webTestCallback);
  }
}

function mobileTestCallback(completedTestInfo) {
  if(queue.length <= 0) return;
  let test = queue.shift();
  runMobileTest(test, tests[test], mobileTestCallback);
}
