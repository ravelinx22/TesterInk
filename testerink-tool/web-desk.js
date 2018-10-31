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
    case "mutation":
      runMutation(test,info,doneRunningCallback);
      break;
    case "e2e":
      runE2E(test, info, doneRunningCallback);
      break;
    case "headless_small_chrome":
      runHeadless(test, info, doneRunningCallback);
      break;
    case "headless_medium_chrome":
      runHeadless(test, info, doneRunningCallback);
      break;
    case "headless_large_chrome":
      runHeadless(test, info, doneRunningCallback);
      break;
    case "headless_firefox":
      runHeadless(test, info, doneRunningCallback);
      break;
    case "bdt":
      runBDT(test, info, doneRunningCallback);
      break;
    case "random":
      runRandom(test, info, doneRunningCallback);
      break;
    case "datos":
      runDatos(test, info, doneRunningCallback);
      break;
    default:
      break;
  }
}

// Test executors
function runMutation(key, info, doneRunningCallback) {
  let test_path = info["test_path"];
  let stryker_path = info["stryker_conf_path"];
  if(!stryker_path) doneRunningCallback();
  var commands = [
    moveToFolderCommand("docker/docker-mutode"),
    deleteDirectory("docker/docker-mutode/test"),
    copyFileToDirectoryCommand(test_path,"docker/docker-mutode/test/", "-r"),
    copyFileToDirectoryCommand(stryker_path,"docker/docker-mutode/stryker.conf.js", "-r"),
    buildDockerComposeCommand(),
    runDockerComposeCommand("mutode", "./node_modules/stryker/bin/stryker run")
  ];
  let command = commandsToString(commands);
  executeDocker(command, false, "Mutation", key, info, doneRunningCallback);
}

function runE2E(key, info, doneRunningCallback) {
  let test_path = info["test_path"];
  var commands = [
    moveToFolderCommand("docker/docker-e2e"),
    deleteDirectory("docker/docker-e2e/test"),
    copyFileToDirectoryCommand(test_path,"docker/docker-e2e/test/", "-r"),
    buildDockerComposeCommand(),
    runDockerComposeCommand("e2e", "npm test")
  ];
  let command = commandsToString(commands);
  executeDocker(command, true, "E2E", key, info, doneRunningCallback);
}

function runHeadless(key, info, doneRunningCallback) {
  let test_path = info["test_path"];
  var startCommand = "chrome";
  if(key === "headless_small_chrome") {
    startCommand = "npm run test_small_chrome"
  } else if(key === "headless_medium_chrome") {
    startCommand = "npm run test_medium_chrome"
  } else if(key === "headless_large_chrome") {
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
  executeDocker(command, true, "Headless " + key, key, info, doneRunningCallback);
}

function runBDT(key, info, doneRunningCallback) {
  let test_path = info["test_path"];
  let commands = [
    moveToFolderCommand("docker/docker-bdt"),
    deleteDirectory("docker/docker-bdt/features"),
    copyFileToDirectoryCommand(test_path,"docker/docker-bdt/features/", "-r"),
    buildDockerComposeCommand(),
    runDockerComposeCommand("bdt", "npm test")
  ];
  let command = commandsToString(commands);
  executeDocker(command, true, "BDT", key, info, doneRunningCallback);
}

function runRandom(key, info, doneRunningCallback) {
  let test_path = info["test_path"];
  let commands = [
    moveToFolderCommand("docker/docker-gremlins"),
    deleteDirectory("docker/docker-gremlins/test"),
    copyFileToDirectoryCommand(test_path,"docker/docker-gremlins/test/", "-r"),
    buildDockerComposeCommand(),
    runDockerComposeCommand("gremlins", "npm test")
  ];
  let command = commandsToString(commands);
  executeDocker(command, true, "Random", key, info, doneRunningCallback);
}

function runDatos(key, info, doneRunningCallback) {
  let test_path = info["test_path"];
  let commands = [
    moveToFolderCommand("docker/docker-datos"),
    deleteDirectory("docker/docker-datos/test"),
    copyFileToDirectoryCommand(test_path,"docker/docker-datos/test/", "-r"),
    buildDockerComposeCommand(),
    runDockerComposeCommand("datos", "npm test")
  ];
  let command = commandsToString(commands);
  executeDocker(command, true, "Generación de datos", key, info, doneRunningCallback);
}

// Export all methods
module.exports = {
  runWebTest
};
