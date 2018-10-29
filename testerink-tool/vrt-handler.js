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
const {
  generateHTML
} = require('./vrt-generator');

const clearWebReports = (startTestCallback) => {
  let commands = [
    deleteDirectory("docker/docker-bdt/reports"),
    deleteDirectory("docker/docker-datos/reports"),
    deleteDirectory("docker/docker-e2e/reports"),
    deleteDirectory("docker/docker-gremlins/reports"),
    deleteDirectory("docker/docker-random/reports"),
    deleteDirectory("docker/docker-webdriver/reports")
  ];
  let command = commandsToString(commands);
  executeDocker(command, false, "Limpieza reportes viejos", null, null, startTestCallback);
}

const clearMobileReports = (startTestCallback) => {

}

const handleVRT = (test, info, doneTestCallback) => {
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
  generateHTML("./e2e");
  doneTestCallback(null);
}

function vrtHeadless(doneTestCallback) {
  generateHTML("./headless");
  doneTestCallback(null);
}

function vrtBDT(doneTestCallback) {
  generateHTML("./bdt");
  doneTestCallback(null);
}

function vrtRandom(doneTestCallback) {
  generateHTML("./random");
  doneTestCallback(null);
}

function vrtDatos(doneTestCallback) {
  generateHTML("./datos");
  doneTestCallback(null);
}

// Export all methods
module.exports = {
  clearWebReports,
  clearMobileReports,
  handleVRT
};
