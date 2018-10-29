// Imports
var fs = require('fs');
const { runWebTest } = require('./web-desk.js');
const { runMobileTest } = require('./mobile-desk.js');
const { clearWebReports, clearMobileReports, handleVRT } = require('./vrt-handler.js');

// Constants
let WEB = 0;
let MOBILE = 1;
let NONE = 2;
let PATH = "./test.json";

// Initialization
var queue = [];
var tests = [];
var type = NONE;

// General
const readJSON = (path) => {
  var data = fs.readFileSync(path, 'utf8');
  var configuration = JSON.parse(data);
  type = configuration["type"];
  tests = configuration["tests"];

  // Build test queue
  for(var test in tests) {
    queue.push(test);
  }

  if(type == WEB) {
    clearWebReports(startTests);
  } else if(type == MOBILE) {
    clearMobileReports(startTests);
  }
}

readJSON(PATH);

module.exports = {
  readJSON
};

// Helpers
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
  if(queue.length <= 0) return;
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
