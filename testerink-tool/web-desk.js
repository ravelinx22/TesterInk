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
  let test_path = info["test_path"];
  let browser = info["browser"];
  let run_vrt = info["run_vrt"];
  var startCommand = "chrome";
  if(browser === "small_chrome") {
    startCommand = "npm run test_small_chrome"
  } else if(browser === "medium_chrome") {
    startCommand = "npm run test_medium_chrome"
  } else if(browser === "large_chrome") {
    startCommand = "npm run test_large_chrome"
  } else {
    startCommand = "npm run test_firefox"
  }
  let commands = [
    moveToFolderCommand("docker/docker-webdriverio"),
    deleteDirectory("docker/docker-webdriverio/test"),
    copyFileToDirectoryCommand(test_path,"docker/docker-webdriverio/test/", "-r"),
    buildDockerComposeCommand(),
    runDockerComposeCommand("webdriverio", startCommand)
  ];
  let command = commandsToString(commands);
  executeDocker(command, true, "Headless " + browser, doneRunningCallback);
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
  let test_path = info["test_path"];
  let run_vrt = info["run_vrt"];
  let commands = [
    moveToFolderCommand("docker/docker-gremlins"),
    deleteDirectory("docker/docker-gremlins/test"),
    copyFileToDirectoryCommand(test_path,"docker/docker-gremlins/test/", "-r"),
    buildDockerComposeCommand(),
    runDockerComposeCommand("gremlins", "npm test")
  ];
  let command = commandsToString(commands);
  executeDocker(command, true, "Random", doneRunningCallback);
}

function runDatos(info, doneRunningCallback) {
  let test_path = info["test_path"];
  let run_vrt = info["run_vrt"];
  let commands = [
    moveToFolderCommand("docker/docker-datos"),
    deleteDirectory("docker/docker-datos/test"),
    copyFileToDirectoryCommand(test_path,"docker/docker-datos/test/", "-r"),
    buildDockerComposeCommand(),
    runDockerComposeCommand("datos", "npm test")
  ];
  let command = commandsToString(commands);
  executeDocker(command, true, "Generación de datos", doneRunningCallback);
}

// Export all methods
module.exports = {
  runWebTest
};
