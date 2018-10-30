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
    deleteDirectory("docker/docker-mutode/reports"),
    makeDirectory("docker/docker-bdt/reports"),
    makeDirectory("docker/docker-datos/reports"),
    makeDirectory("docker/docker-e2e/reports"),
    makeDirectory("docker/docker-gremlins/reports"),
    makeDirectory("docker/docker-webdriverio/reports"),
    makeDirectory("docker/docker-mutode/reports")
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
      vrtE2E(info, doneTestCallback)
      break;
    case "headless_small_chrome":
      vrtHeadless(info, doneTestCallback);
      break;
    case "headless_medium_chrome":
      vrtHeadless(info, doneTestCallback);
      break;
    case "headless_large_chrome":
      vrtHeadless(info, doneTestCallback);
      break;
    case "headless_firefox":
      vrtHeadless(info, doneTestCallback);
      break;
    case "bdt":
      vrtBDT(info, doneTestCallback);
      break;
    case "random":
      vrtRandom(info, doneTestCallback);
      break;
    case "datos":
      vrtDatos(info, doneTestCallback);
      break;
    default:
      break;
  }
}

// VRT Testing specific implementations
function vrtE2E(info, doneTestCallback) {
  let pairs = info["screenshot_pairs"];
  generateHTML(pairs, "./docker/docker-e2e/reports/", doneTestCallback);
}

function vrtHeadless(info, doneTestCallback) {
  let pairs = info["screenshot_pairs"];
  generateHTML(pairs, "./docker/docker-webdriverio/reports/", doneTestCallback);
}

function vrtBDT(info, doneTestCallback) {
  let pairs = info["screenshot_pairs"];
  generateHTML(pairs, "./docker/docker-bdt/reports/", doneTestCallback);
}

function vrtRandom(info, doneTestCallback) {
  let pairs = info["screenshot_pairs"];
  generateHTML(pairs, "./docker/docker-gremlins/reports/", doneTestCallback);
}

function vrtDatos(info, doneTestCallback) {
  let pairs = info["screenshot_pairs"];
  generateHTML(pairs, "./docker/docker-datos/reports/", doneTestCallback);
}

// Export all methods
module.exports = {
  clearWebReports,
  clearMobileReports,
  handleVRT
};
