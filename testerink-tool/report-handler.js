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
const { uploadFile } = require('./api-client.js');
const fs = require('fs');
const FormData = require('form-data');
const {  uploadDir } =require('./s3-client.js');

// Constants
let WEB = 0;
let MOBILE = 1;
let NONE = 2;

function handleReport(type, test_id, test, info, doneTestCallback) {
  if(type == WEB) {
    handleWebReport(test_id, test, info, doneTestCallback)
  } else if(type == MOBILE) {
    handleMobileReport(test_id, test, info, doneTestCallback)
  }
}

function handleWebReport(test_id, test, info, doneTestCallback) {
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

function handleMobileReport(test_id, test, info, doneTestCallback) {
  switch (test) {
    case "random":
      handleMobileRandomReport(test_id, test, info, doneTestCallback)
      break;
    case "bdt":
      handleMobileBDTReport(test_id, test, info, doneTestCallback);
      break;
    case "mutation":
      handleMobileMutationReport(test_id, test, info, doneTestCallback);
      break;
    default:
      break;
  }
}

function handleMutantReport(mutant_id, package_name, test_id, test, info, doneTestCallback) {
  switch (test) {
    case "random":
      handleMutantRandomReport(mutant_id, package_name, test_id, test, info, doneTestCallback)
      break;
    case "bdt":
      handleMutantBDTReport(mutant_id, package_name, test_id, test, info, doneTestCallback);
      break;
    default:
      break;
  }
}

// Helpers


// Web
function handleE2EReport(test_id, key, info, doneTestCallback){
  let commands = [
    copyFileToDirectoryCommand("docker/docker-e2e/reports","reports/reports-" + test_id + "/e2e", "-r")
  ];
  uploadDir("./docker/docker-e2e/reports", "reports/reports-" + test_id + "/e2e");
  let command = commandsToString(commands);
  executeDocker(command, false, "Guardado reportes E2E", null, info, doneTestCallback);
}

function handleHeadlessReport(test_id, key, info, doneTestCallback) {
  let commands = [
    copyFileToDirectoryCommand("docker/docker-webdriverio/reports","reports/reports-" + test_id + "/" + key, "-r")
  ];
  uploadDir("./docker/docker-webdriverio/reports", "reports/reports-" + test_id + "/" + key);
  let command = commandsToString(commands);
  executeDocker(command, false, "Guardado reportes " + key, null, info, doneTestCallback);
}

function handleBDTReport(test_id, key, info, doneTestCallback) {
  let commands = [
    copyFileToDirectoryCommand("docker/docker-bdt/reports","reports/reports-" + test_id + "/bdt", "-r")
  ];
  uploadDir("./docker/docker-bdt/reports","reports/reports-" + test_id + "/bdt");
  let command = commandsToString(commands);
  executeDocker(command, false, "Guardado reportes BDT", null, info, doneTestCallback);
}

function handleRandomReport(test_id, key, info, doneTestCallback) {
  let commands = [
    copyFileToDirectoryCommand("docker/docker-gremlins/reports","reports/reports-" + test_id + "/random", "-r")
  ];
  uploadDir("./docker/docker-gremlins/reports","reports/reports-" + test_id + "/random");
  let command = commandsToString(commands);
  executeDocker(command, false, "Guardado reportes Random", null, info, doneTestCallback);
}

function handleDatosReport(test_id, key, info, doneTestCallback) {
  let commands = [
    copyFileToDirectoryCommand("docker/docker-datos/reports","reports/reports-" + test_id + "/datos", "-r")
  ];
  uploadDir("./docker/docker-gremlins/reports","reports/reports-" + test_id + "/datos");
  let command = commandsToString(commands);
  executeDocker(command, false, "Guardado reportes Datos", null, info, doneTestCallback);
}

function handleMutationReport(test_id, key, info, doneTestCallback) {
  let commands = [
    copyFileToDirectoryCommand("docker/docker-mutode/reports","reports/reports-" + test_id + "/mutation", "-r")
  ];
  uploadDir("./docker/docker-mutode/reports","reports/reports-" + test_id + "/mutation");
  let command = commandsToString(commands);
  executeDocker(command, false, "Guardado reportes Mutation", null, info, doneTestCallback);
}

// Mobile
function handleMobileRandomReport(test_id, key, info, doneTestCallback) {
  let commands = [
    copyFileToDirectoryCommand("docker/docker-random/reports","reports/reports-" + test_id + "/random", "-r")
  ];
  uploadDir("./docker/docker-random/reports","reports/reports-" + test_id + "/random");
  let command = commandsToString(commands);
  executeDocker(command, false, "Guardado reportes Random", null, info, doneTestCallback);
}

function handleMobileBDTReport(test_id, key, info, doneTestCallback) {
  let commands = [
    copyFileToDirectoryCommand("docker/docker-android-bdt/reports","reports/reports-" + test_id + "/bdt", "-r")
  ];
  uploadDir("./docker/docker-android-bdt/reports","reports/reports-" + test_id + "/bdt");
  let command = commandsToString(commands);
  executeDocker(command, false, "Guardado reportes BDT", null, info, doneTestCallback);
}

function handleMobileMutationReport(test_id, key, info, doneTestCallback) {
  let commands = [
    copyFileToDirectoryCommand("docker/docker-android-mutode/reports","reports/reports-" + test_id + "/mutation", "-r")
  ];
  uploadDir("./docker/docker-android-mutode/reports","reports/reports-" + test_id + "/mutation");
  let command = commandsToString(commands);
  executeDocker(command, false, "Guardado reportes Mutation", null, info, doneTestCallback);
}

// Mutant
function handleMutantRandomReport(mutant_id, package_name, test_id, key, info, doneTestCallback) {
  let commands = [
    copyFileToDirectoryCommand("docker/docker-random/reports","reports/reports-" + test_id + "/mutation/" +  package_name + "-mutant" + mutant_id + "/random", "-r")
  ];
  uploadDir("./docker/docker-random/reports","reports/reports-" + test_id + "/mutation/" +  package_name + "-mutant" + mutant_id + "/random");
  let command = commandsToString(commands);
  executeDocker(command, false, "Guardado reportes Random para mutante " + mutant_id, null, info, doneTestCallback);
}

function handleMutantBDTReport(mutant_id, package_name, test_id, key, info, doneTestCallback) {
  let commands = [
    copyFileToDirectoryCommand("docker/docker-android-bdt/reports","reports/reports-" + test_id + "/mutation/" +  package_name + "-mutant" + mutant_id + "/bdt", "-r")
  ];
  uploadDir("./docker/docker-android-bdt/reports","reports/reports-" + test_id + "/mutation/" +  package_name + "-mutant" + mutant_id + "/bdt");
  let command = commandsToString(commands);
  executeDocker(command, false, "Guardado reportes BDT para mutante " + mutant_id, null, info, doneTestCallback);
}


// Export all methods
module.exports = {
  handleReport,
  handleE2EReport,
  handleHeadlessReport,
  handleBDTReport,
  handleRandomReport,
  handleDatosReport,
  handleMutationReport,
  handleMutantReport
};
