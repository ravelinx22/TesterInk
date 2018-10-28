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
const runWebTest = (test, info, doneRunningCallback) => {
  switch (test) {
    case "e2e":
      runE2E(info, doneRunningCallback);
      break;
    case "headless":
      runHeadless(info, doneRunningCallback);
      break;
    case "bdt":
      runBDT(info, doneRunningCallback);
      break;
    case "random":
      runRandom(info, doneRunningCallback);
      break;
    case "datos":
      runDatos(info, doneRunningCallback);
      break;
    default:
      break;
  }
}

// Test executors
function runE2E(info, doneRunningCallback) {
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
  executeDocker(command, true, "E2E", doneRunningCallback);
}

function runHeadless(info, doneRunningCallback) {
  console.log("Headless");
}

function runBDT(info, doneRunningCallback) {
  let test_path = info["test_path"];
  let run_vrt = info["run_vrt"];
  let commands = [
    moveToFolderCommand("docker/docker-bdt"),
    deleteDirectory("docker/docker-bdt/features"),
    copyFileToDirectoryCommand(test_path,"docker/docker-bdt/features/", "-r"),
    buildDockerComposeCommand(),
    runDockerComposeCommand("bdt", "npm test")
  ];
  let command = commandsToString(commands);
  executeDocker(command, true, "BDT", doneRunningCallback);
}

function runRandom(info, doneRunningCallback) {
  console.log("Random");
}

function runDatos(info, doneRunningCallback) {
  console.log("Datos");
}

// Export all methods
module.exports = {
  runWebTest
};
