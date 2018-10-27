// Imports
var fs = require('fs');
const { runWebTest } = require('./web-desk.js');
const { runMobileTest } = require('./mobile-desk.js');

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
  for(var test in tests) {
    runWebTest(test, tests[test]);
  }
}

function executeMobileTests(tests) {
  for(var test in tests) {
    runMobileTest(test, tests[test]);
  }
}
