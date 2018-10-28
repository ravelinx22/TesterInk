// Imports
var fs = require('fs');
const { runWebTest } = require('./web-desk.js');
const { runMobileTest } = require('./mobile-desk.js');
var queue = [];

// Constants
let WEB = 0;
let MOBILE = 1;
let PATH = "./test.json";

// General
const readJSON = (path) => {
  var data = fs.readFileSync(path, 'utf8');
  var configuration = JSON.parse(data);
  let type = configuration["type"];
  let tests = configuration["tests"];

  // Build test queue
  for(var test in tests) {
    queue.push(test);
  }

  if(type == WEB) {
    executeWebTests(tests);
  } else if(type == MOBILE) {
    executeMobileTests(tests);
  }
}

readJSON(PATH);

module.exports = {
  readJSON
};

// Helpers
function executeWebTests(tests) {
  if(queue.length <= 0) return;
  let firstTest = queue.shift();
  runWebTest(firstTest, tests[firstTest], webTestCallback);
}

function executeMobileTests(tests) {
  for(var test in tests) {
    runMobileTest(test, tests[test]);
  }
}

// Callback
function webTestCallback() {
  if(queue.length <= 0) return;
  let test = queue.shift();
  runWebTest(test, tests[test]);
}

function mobileTestCallback() {
  if(queue.length <= 0) return;
  let test = queue.shift();
  runMobileTest(test, tests[test]);
}
