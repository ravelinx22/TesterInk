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
  executeDocker(command, false, "Limpieza reportes viejos", startTestCallback);
}

const clearMobileReports = (startTestCallback) => {

}

// Export all methods
module.exports = {
  clearWebReports,
  clearMobileReports
};
