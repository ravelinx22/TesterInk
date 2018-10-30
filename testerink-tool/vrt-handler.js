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
const {
  generateHTML
} = require('./vrt-generator');

const clearWebReports = (startTestCallback) => {
  let commands = [
    deleteDirectory("docker/docker-bdt/reports"),
    deleteDirectory("docker/docker-datos/reports"),
    deleteDirectory("docker/docker-e2e/reports"),
    deleteDirectory("docker/docker-gremlins/reports"),
    deleteDirectory("docker/docker-webdriverio/reports"),
    makeDirectory("docker/docker-bdt/reports"),
    makeDirectory("docker/docker-datos/reports"),
    makeDirectory("docker/docker-e2e/reports"),
    makeDirectory("docker/docker-gremlins/reports"),
    makeDirectory("docker/docker-webdriverio/reports")
  ];
  let command = commandsToString(commands);
  executeDocker(command, false, "Limpieza reportes viejos", null, null, startTestCallback);
}

const clearMobileReports = (startTestCallback) => {

}

const handleVRT = (test, info, doneTestCallback) => {
  console.log("Generating VRT");
  switch (test) {
    case "e2e":
      vrtE2E(doneTestCallback)
      break;
    case "headless_small_chrome":
      vrtHeadless(doneTestCallback);
      break;
    case "headless_medium_chrome":
      vrtHeadless(doneTestCallback);
      break;
    case "headless_large_chrome":
      vrtHeadless(doneTestCallback);
      break;
    case "headless_firefox":
      vrtHeadless(doneTestCallback);
      break;
    case "bdt":
      vrtBDT(doneTestCallback);
      break;
    case "random":
      vrtRandom(doneTestCallback);
      break;
    case "datos":
      vrtDatos(doneTestCallback);
      break;
    default:
      break;
  }
}

// VRT Testing specific implementations
function vrtE2E(doneTestCallback) {
  generateHTML("./docker/docker-e2e/reports/", doneTestCallback);
}

function vrtHeadless(doneTestCallback) {
  generateHTML("./docker/docker-webdriverio/reports/", doneTestCallback);
}

function vrtBDT(doneTestCallback) {
  generateHTML("./docker/docker-bdt/reports/", doneTestCallback);
}

function vrtRandom(doneTestCallback) {
  generateHTML("./docker/docker-gremlins/reports/", doneTestCallback);
}

function vrtDatos(doneTestCallback) {
  generateHTML("./docker/docker-datos/reports/", doneTestCallback);
}

// Export all methods
module.exports = {
  clearWebReports,
  clearMobileReports,
  handleVRT
};
