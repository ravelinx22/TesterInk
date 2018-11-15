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
const runMobileTest = (test, info, doneRunningCallback) => {
  switch (test) {
    case "random":
      runRandom(test, info, doneRunningCallback);
      break;
    case "bdt":
      runBDT(test, info, doneRunningCallback);
      break;
    case "mutation":
      runMutation(test, info, doneRunningCallback);
      break;
    default:
      break;
  }
}

// Test executors
function runRandom(key, info, doneRunningCallback) {
  let apk_path = info["apk_path"];
  let package_name = info["package_name"];
  let commands = [
    moveToFolderCommand("docker/docker-random"),
    copyFileToDirectoryCommand(apk_path,"docker/docker-random/app.apk"),
    buildDockerComposeCommand(),
    runDockerComposeCommand("alpine", package_name)
  ];
  let command = commandsToString(commands);
  executeDocker(command, false, "Random", key, info, doneRunningCallback);
}

function runBDT(key, info, doneRunningCallback) {
  let apk_path = info["apk_path"];
  let test_path = info["test_path"];
  let commands = [
    moveToFolderCommand("docker/docker-android-bdt"),
    copyFileToDirectoryCommand(apk_path,"docker/docker-android-bdt/app.apk"),
    deleteDirectory("docker/docker-android-bdt/features"),
    copyFileToDirectoryCommand(test_path,"docker/docker-android-bdt/features/", "-r"),
    buildDockerComposeCommand(),
    runDockerComposeCommand("alpine")
  ];
  let command = commandsToString(commands);
  executeDocker(command, false, "BDT", key, info, doneRunningCallback);
}

function runMutation(key, info, doneRunningCallback) {
  let apk_path = info["apk_path"];
}

// Export all methods
module.exports = {
  runMobileTest
};
