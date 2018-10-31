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
      handleE2EReport(test_id, info, doneTestCallback)
      break;
    case "headless_small_chrome":
      handleHeadlessReport(test_id, info, doneTestCallback);
      break;
    case "headless_medium_chrome":
      handleHeadlessReport(test_id, info, doneTestCallback);
      break;
    case "headless_large_chrome":
      handleHeadlessReport(test_id, info, doneTestCallback);
      break;
    case "headless_firefox":
      handleHeadlessReport(test_id, info, doneTestCallback);
      break;
    case "bdt":
      handleBDTReport(test_id, info, doneTestCallback);
      break;
    case "random":
      handleRandomReport(test_id, info, doneTestCallback);
      break;
    case "datos":
      handleDatosReport(test_id, info, doneTestCallback);
      break;
    default:
      break;
  }
}

// Helpers
function handleE2EReport(test_id, info, doneTestCallback) {
  let commands = [
    copyFileToDirectoryCommand("docker/docker-e2e/reports","reports/reports-" + test_id + "/E2E", "-r")
  ];
  let command = commandsToString(commands);
  executeDocker(command, false, "Guardado reportes E2E", null, info, doneTestCallback);
}

function handleHeadlessReport(test_id, info, doneTestCallback) {
  doneTestCallback();
}

function handleBDTReport(test_id, info, doneTestCallback) {
  let commands = [
    copyFileToDirectoryCommand("docker/docker-bdt/reports","reports/reports-" + test_id + "/BDT", "-r")
  ];
  let command = commandsToString(commands);
  executeDocker(command, false, "Guardado reportes BDT", null, info, doneTestCallback);
}

function handleRandomReport(test_id, info, doneTestCallback) {
  let commands = [
    copyFileToDirectoryCommand("docker/docker-gremlins/reports","reports/reports-" + test_id + "/Random", "-r")
  ];
  let command = commandsToString(commands);
  executeDocker(command, false, "Guardado reportes Random", null, info, doneTestCallback);
}

function handleDatosReport(test_id, info, doneTestCallback) {
  let commands = [
    copyFileToDirectoryCommand("docker/docker-datos/reports","reports/reports-" + test_id + "/Datos", "-r")
  ];
  let command = commandsToString(commands);
  executeDocker(command, false, "Guardado reportes Datos", null, info, doneTestCallback);
}

// Export all methods
module.exports = {
  handleReport,
  handleE2EReport,
  handleHeadlessReport,
  handleBDTReport,
  handleRandomReport,
  handleDatosReport
};
