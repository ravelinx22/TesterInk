const prompts = require('prompts');
const {
  executeDocker,
  moveToFolderCommand,
  copyFileToDirectoryCommand,
  buildDockerComposeCommand,
  runDockerComposeCommand,
  commandsToString,
  deleteDirectory
} = require('./executor');

// General
const runMobileTest = (test, info) => {
  switch (test) {
    case "bdt":
      runBDT(info);
      break;
    case "random":
      runRandom(info);
      break;
    default:
      break;
  }
}

// Test executors
function runBDT(info) {

}

function runRandom(info) {

}

// Export all methods
module.exports = {
  runMobileTest
};
