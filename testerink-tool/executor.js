const mongoose = require('mongoose'); // An Object-Document Mapper for Node.js
const assert = require('assert'); // N.B: Assert module comes bundled with NodeJS.
const exec = require('child_process').exec;

const executeDocker = (_command) => {
    console.log(_command);
    let execCallback = (error, stdout, stderr) => {
        if (error) console.log("exec error: " + error);
        if (stdout) console.log("Result: " + stdout);
        if (stderr) console.log("shell error: " + stderr);
        exec("sudo docker stop $(sudo docker ps -a -q) && sudo docker rm $(sudo docker ps -a -q)", (error, stdout, stderr) => {
          if (error) console.log("exec error: " + error);
          if (stdout) console.log("Result: " + stdout);
          if (stderr) console.log("shell error: " + stderr);
        });
      };

    exec( _command, execCallback);
};

const moveToFolderCommand = (folder) => {
  return "cd " + folder;
};

const copyFileToDirectoryCommand = (filePath, newDirectory) => {
  return "cp " + filePath + " " + newDirectory;
};

const buildDockerComposeCommand = (options) => {
  var command = "sudo docker-compose build";
  if(options) {
    command += " " + options;
  }
  return command;
};

const runDockerComposeCommand = (service, options) => {
  var command = "sudo docker-compose run " + service;
  if(options) {
    command += " " + options;
  }
  return command;
};

const commandsToString = (commandLists) => {
  var command = " ";
  for(var i = 0; i < commandLists.length; i++) {
    command += commandLists[i];
    if(i != commandLists.length-1) {
      command += " && ";
    }
  }
  return command;
};

// Export all methods
module.exports = {
  executeDocker,
  moveToFolderCommand,
  copyFileToDirectoryCommand,
  buildDockerComposeCommand,
  runDockerComposeCommand,
  commandsToString
};
