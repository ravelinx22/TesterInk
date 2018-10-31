const prompts = require('prompts');
const {
  executeDocker,
  moveToFolderCommand,
  copyFileToDirectoryCommand,
  buildDockerComposeCommand,
  runDockerComposeCommand,
  commandsToString,
  deleteDirectory,
  makeDirectory
} = require('./executor');

function handleReport(test_id, test, info, doneTestCallback) {
  switch (test) {
    case "e2e":
      handleE2EReport(test_id, test, info, doneTestCallback)
      break;
    case "headless_small_chrome":
      handleHeadlessReport(test_id, test, info, doneTestCallback);
      break;
    case "headless_medium_chrome":
      handleHeadlessReport(test_id, test, info, doneTestCallback);
      break;
    case "headless_large_chrome":
      handleHeadlessReport(test_id, test, info, doneTestCallback);
      break;
    case "headless_firefox":
      handleHeadlessReport(test_id, test, info, doneTestCallback);
      break;
    case "bdt":
      handleBDTReport(test_id, info, test, doneTestCallback);
      break;
    case "random":
      handleRandomReport(test_id, test, info, doneTestCallback);
      break;
    case "datos":
      handleDatosReport(test_id, test, info, doneTestCallback);
      break;
    case "mutation":
      handleMutationReport(test_id, test, info, doneTestCallback);
      break;
    default:
      break;
  }
}

// Helpers
function handleE2EReport(test_id, key, info, doneTestCallback) {
  let commands = [
    copyFileToDirectoryCommand("docker/docker-e2e/reports","reports/reports-" + test_id + "/e2e", "-r")
  ];
  let command = commandsToString(commands);
  executeDocker(command, false, "Guardado reportes E2E", null, info, doneTestCallback);
}

function handleHeadlessReport(test_id, key, info, doneTestCallback) {
  let commands = [
    copyFileToDirectoryCommand("docker/docker-webdriverio/reports","reports/reports-" + test_id + "/" + key, "-r")
  ];
  let command = commandsToString(commands);
  executeDocker(command, false, "Guardado reportes " + key, null, info, doneTestCallback);
}

function handleBDTReport(test_id, key, info, doneTestCallback) {
  let commands = [
    copyFileToDirectoryCommand("docker/docker-bdt/reports","reports/reports-" + test_id + "/bdt", "-r")
  ];
  let command = commandsToString(commands);
  executeDocker(command, false, "Guardado reportes BDT", null, info, doneTestCallback);
}

function handleRandomReport(test_id, key, info, doneTestCallback) {
  let commands = [
    copyFileToDirectoryCommand("docker/docker-gremlins/reports","reports/reports-" + test_id + "/random", "-r")
  ];
  let command = commandsToString(commands);
  executeDocker(command, false, "Guardado reportes Random", null, info, doneTestCallback);
}

function handleDatosReport(test_id, key, info, doneTestCallback) {
  let commands = [
    copyFileToDirectoryCommand("docker/docker-datos/reports","reports/reports-" + test_id + "/datos", "-r")
  ];
  let command = commandsToString(commands);
  executeDocker(command, false, "Guardado reportes Datos", null, info, doneTestCallback);
}

function handleMutationReport(test_id, key, info, doneTestCallback) {
  let commands = [
    copyFileToDirectoryCommand("docker/docker-mutode/reports","reports/reports-" + test_id + "/mutation", "-r")
  ];
  let command = commandsToString(commands);
  executeDocker(command, false, "Guardado reportes Mutation", null, info, doneTestCallback);
}

// Export all methods
module.exports = {
  handleReport,
  handleE2EReport,
  handleHeadlessReport,
  handleBDTReport,
  handleRandomReport,
  handleDatosReport,
  handleMutationReport
};
