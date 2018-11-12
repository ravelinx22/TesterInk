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

const setupWebReports = (test_id, startTestCallback) => {
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
    makeDirectory("docker/docker-mutode/reports"),
    makeDirectory("reports/reports-" + test_id)
  ];
  let command = commandsToString(commands);
  executeDocker(command, false, "Limpieza reportes viejos", null, null, startTestCallback);
}

const setupMobileReports = (test_id, startTestCallback) => {

}

const handleVRT = (test, info, doneTestCallback) => {
  console.log("Generando VRT.");
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
  let config = info["vrt_config"]
  if(config) {

  } else {
    let path = "./docker/docker-e2e/reports/";
    generateHTML(pairs, path, path, doneTestCallback);
  }
}

function vrtHeadless(info, doneTestCallback) {
  let pairs = info["screenshot_pairs"];
  let config = info["vrt_config"]
  if(config) {

  } else {
    let path = "./docker/docker-webdriverio/reports/";
    generateHTML(pairs, path, path, doneTestCallback);
  }
}

function vrtBDT(info, doneTestCallback) {
  let pairs = info["screenshot_pairs"];
  let config = info["vrt_config"]
  if(config) {

  } else {
    let path = "./docker/docker-bdt/reports/";
    generateHTML(pairs, path, path, doneTestCallback);
  }
}

function vrtRandom(info, doneTestCallback) {
  let pairs = info["screenshot_pairs"];
  let config = info["vrt_config"]
  if(config) {

  } else {
    let path = "./docker/docker-gremlins/reports/";
    generateHTML(pairs, path, path, doneTestCallback);
  }
}

function vrtDatos(info, doneTestCallback) {
  let pairs = info["screenshot_pairs"];
  let config = info["vrt_config"]
  if(config) {

  } else {
    let path = "./docker/docker-datos/reports/";
    generateHTML(pairs, path, path, doneTestCallback);
  }
}

// Export all methods
module.exports = {
  setupWebReports,
  setupMobileReports,
  handleVRT
};
