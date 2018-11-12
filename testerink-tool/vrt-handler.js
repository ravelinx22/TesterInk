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
      vrtE2E(test, info, doneTestCallback)
      break;
    case "headless_small_chrome":
      vrtHeadless(test, info, doneTestCallback);
      break;
    case "headless_medium_chrome":
      vrtHeadless(test, info, doneTestCallback);
      break;
    case "headless_large_chrome":
      vrtHeadless(test, info, doneTestCallback);
      break;
    case "headless_firefox":
      vrtHeadless(test, info, doneTestCallback);
      break;
    case "bdt":
      vrtBDT(test, info, doneTestCallback);
      break;
    case "random":
      vrtRandom(test, info, doneTestCallback);
      break;
    case "datos":
      vrtDatos(test, info, doneTestCallback);
      break;
    default:
      break;
  }
}

// VRT Testing specific implementations
function vrtE2E(key, info, doneTestCallback) {
  let pairs = info["screenshot_pairs"];
  let config = info["vrt_config"];
  let path = "./docker/docker-e2e/reports/";
  if(config) {
    let executionId = config["past_execution_id"];
    if(executionId) {
      let beforePath = "./reports/reports-" + executionId + "/" + key + "/";
      generateHTML(pairs, beforePath, path, doneTestCallback);
    } else {
      doneTestCallback();
    }
  } else {
    generateHTML(pairs, path, path, doneTestCallback);
  }
}

function vrtHeadless(key, info, doneTestCallback) {
  let pairs = info["screenshot_pairs"];
  let config = info["vrt_config"];
  let path = "./docker/docker-webdriverio/reports/";
  if(config) {
    let executionId = config["past_execution_id"];
    if(executionId) {
      let beforePath = "./reports/reports-" + executionId + "/" + key + "/";
      generateHTML(pairs, beforePath, path, doneTestCallback);
    } else {
      doneTestCallback();
    }
  } else {
    generateHTML(pairs, path, path, doneTestCallback);
  }
}

function vrtBDT(key, info, doneTestCallback) {
  let pairs = info["screenshot_pairs"];
  let config = info["vrt_config"];
  let path = "./docker/docker-bdt/reports/";
  if(config) {
    let executionId = config["past_execution_id"];
    if(executionId) {
      let beforePath = "./reports/reports-" + executionId + "/" + key + "/";
      generateHTML(pairs, beforePath, path, doneTestCallback);
    } else {
      doneTestCallback();
    }
  } else {
    generateHTML(pairs, path, path, doneTestCallback);
  }
}

function vrtRandom(key, info, doneTestCallback) {
  let pairs = info["screenshot_pairs"];
  let config = info["vrt_config"];
  let path = "./docker/docker-gremlins/reports/";
  if(config) {
    let executionId = config["past_execution_id"];
    if(executionId) {
      let beforePath = "./reports/reports-" + executionId + "/" + key + "/";
      generateHTML(pairs, beforePath, path, doneTestCallback);
    } else {
      doneTestCallback();
    }
  } else {
    generateHTML(pairs, path, path, doneTestCallback);
  }
}

function vrtDatos(key, info, doneTestCallback) {
  let pairs = info["screenshot_pairs"];
  let config = info["vrt_config"];
  let path = "./docker/docker-datos/reports/";
  if(config) {
    let executionId = config["past_execution_id"];
    if(executionId) {
      let beforePath = "./reports/reports-" + executionId + "/" + key + "/";
      generateHTML(pairs, beforePath, path, doneTestCallback);
    } else {
      doneTestCallback();
    }
  } else {
    generateHTML(pairs, path, path, doneTestCallback);
  }
}

// Export all methods
module.exports = {
  setupWebReports,
  setupMobileReports,
  handleVRT
};
