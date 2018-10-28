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
const runWebTest = (test, info) => {
  switch (test) {
    case "e2e":
      runE2E(info);
      break;
    case "headless":
      runHeadless(info);
      break;
    case "bdt":
      runBDT(info);
      break;
    case "random":
      runRandom(info);
      break;
    case "datos":
      runDatos(info);
      break;
    default:
      break;
  }
}

// Test executors
function runE2E(info) {
  let test_path = info["test_path"];
  let run_vrt = info["run_vrt"];
  var commands = [
    moveToFolderCommand("docker/docker-e2e"),
    deleteDirectory("docker/docker-e2e/test"),
    copyFileToDirectoryCommand(test_path,"docker/docker-e2e/test/", "-r"),
    buildDockerComposeCommand(),
    runDockerComposeCommand("e2e", "npm test")
  ];
  let command = commandsToString(commands);
  executeDocker(command, true, "E2E");
}

function runHeadless(info) {
  console.log("Headless");
}

function runBDT(info) {
  console.log("BDT");
}

function runRandom(info) {
  console.log("Random");
}

function runDatos(info) {
  console.log("Datos");
}

// Export all methods
module.exports = {
  runWebTest
};
