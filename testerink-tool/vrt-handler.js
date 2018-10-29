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
  executeDocker(command, false, "Limpieza reportes viejos", null, startTestCallback);
}

const clearMobileReports = (startTestCallback) => {

}

const handleVRT = (test, info, doneTestCallback) => {
  console.log("RUN VRT YESSSS");
  switch (test) {
    case "e2e":
      break;
    case "headless_small_chrome":
      break;
    case "headless_medium_chrome":
      break;
    case "headless_large_chrome":
      break;
    case "headless_firefox":
      break;
    case "bdt":
      break;
    case "random":
      break;
    case "datos":
      break;
    default:
      break;
  }
}

// VRT Testing specific implementations
function vrtE2E(path, doneTestCallback) {
  //generateHTML("");
}

function vrtHeadless(path, doneTestCallback) {

}

function vrtBDT(path, doneTestCallback) {

}

function vrtRandom(path, doneTestCallback) {

}

function vrtDatos(path, doneTestCallback) {

}

// Export all methods
module.exports = {
  clearWebReports,
  clearMobileReports,
  handleVRT
};
