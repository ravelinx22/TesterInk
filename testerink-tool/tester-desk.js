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

const MobilesTypes = [
	{ title: 'Random', value: 'Random' },
	{ title: 'BDT', value: 'BDT' },
]

const WebTypes = [
	{ title: 'E2E', value: 'E2E' },
	{ title: 'Headless', value: 'Headless' },
	{ title: 'BDT', value: 'BDT' },
	{ title: 'Random', value: 'Random' },
  { title: 'VRT', value: 'VRT' },
	{ title: 'Generacion de datos', value: 'Generacion de datos' },
  { title: 'Mutating', value: 'Mutating' },
]

askUserTestType();

//-------------------------------------------
// Input Receiver Helpers
//-------------------------------------------

async function askUserTestType() {
	let questions = [{
		type: 'select',
		name: 'platform',
		message: '¿Que tipo de plataforma quiere probar?',
		choices: [
			{ title: 'Web', value: 'Web' },
			{ title: 'Movil', value: 'Movil' },
		],
		initial: 0
	}, {
		type: 'select',
		name: 'testType',
		message: '¿Que tipo de prueba quiere probar?',
		choices: prev => prev == 'Web' ? WebTypes : MobilesTypes,
		initial: 0
	}]
	const response = await prompts(questions);
	askUserForEspecialInput(response);
}

async function askUserFolderLocation(requestedFileName) {
	const response = await prompts({
		type: 'text',
		name: 'path',
		message: '¿En que carpeta se encuentra ' + requestedFileName + "?"
	});
	return response;
}

async function askUserAppPackage() {
	const response = await prompts({
		type: 'text',
		name: 'appPackage',
		message: '¿Cual es el nombre del paquete de la aplicación a probar?'
	});
	return response;
}

async function askHeadlessType() {
  const response = await prompts({
		type: 'select',
		name: 'headlessType',
		message: '¿Que tipo de prueba headless?',
		choices: [
			{ title: 'Small Chrome', value: 'Small Chrome' },
			{ title: 'Medium Chrome', value: 'Medium Chrome' },
      { title: 'Large Chrome', value: 'Large Chrome' },
      { title: 'Firefox', value: 'Firefox' },
		],
		initial: 0
	});
  return response;
}

async function askE2EType() {
  const response = await prompts({
    type: 'select',
    name: 'e2eType',
    message: '¿Que tipo de prueba E2E?',
    choices: [
      { title: 'Cypress', value: 'Cypress' },
      { title: 'Nightwatch', value: 'Nightwatch' },
    ],
    initial: 0
  });
  return response;
}

async function askMutatorype() {
  const response = await prompts({
    type: 'select',
    name: 'mutatorType',
    message: '¿Que tipo de mutator quiere probar?',
    choices: [
      { title: 'booleanLiterals', value: 'booleanLiterals' },
      { title: 'conditionalsBoundary', value: 'conditionalsBoundary' },
      { title: 'increments', value: 'increments' },
      { title: 'invertNegatives', value: 'invertNegatives' },
      { title: 'math', value: 'math' },
      { title: 'negateConditionals', value: 'negateConditionals' },
      { title: 'numericLiterals', value: 'numericLiterals' },
      { title: 'removeArrayElements', value: 'removeArrayElements' },
      { title: 'removeConditionals', value: 'removeConditionals' },
      { title: 'removeFuncCallArgs', value: 'removeFuncCallArgs' },
      { title: 'removeFuncParams', value: 'removeFuncParams' },
      { title: 'removeFunctions', value: 'removeFunctions' },
      { title: 'removeLines', value: 'removeLines' },
      { title: 'removeObjProps', value: 'removeObjProps' },
      { title: 'removeSwitchCases', value: 'removeSwitchCases' },
      { title: 'stringLiterals', value: 'stringLiterals' },
    ],
    initial: 0
  });
  return response;
}

function askUserForEspecialInput(response) {
	if(response["platform"] == "Web") {
		handleWebTest(response["testType"]);
	} else {
		handleMobileTest(response["testType"]);
	}
}

//-------------------------------------------
// Input Handler Helpers
//-------------------------------------------

async function handleWebTest(test) {
	if(test == "E2E") {
    let startCommand = await askE2EType();
    let path = await askUserFolderLocation("sus archivos de pruebas");
    var commands = [];
    if(startCommand["e2eType"] == "Cypress") {
      commands = [
        moveToFolderCommand("docker/docker-cypress"),
        deleteDirectory("docker/docker-cypress/cypress/integration"),
        copyFileToDirectoryCommand(path["path"],"docker/docker-cypress/cypress/integration/", "-r"),
        runDockerComposeCommand("cypress", "./node_modules/.bin/cypress run --browser chrome")
      ];
    } else if(startCommand["e2eType"] == "Nightwatch") {
      commands = [
        moveToFolderCommand("docker/docker-nightwatch"),
        deleteDirectory("docker/docker-nightwatch/test/specs"),
        copyFileToDirectoryCommand(path["path"],"docker/docker-nightwatch/test/specs/", "-r"),
        buildDockerComposeCommand(),
        runDockerComposeCommand("nightwatch", "--rm")
      ];
    }
    let command = commandsToString(commands);
    executeDocker(command, false);
	} else if(test == "Headless") {
    let startCommand = await askHeadlessType()
    if(startCommand["headlessType"] == "Small Chrome") {
      startCommand = "npm run test_small_chrome"
    } else if(startCommand["headlessType"] == "Medium Chrome") {
      startCommand = "npm run test_medium_chrome"
    } else if(startCommand["headlessType"] == "Large Chrome") {
      startCommand = "npm run test_large_chrome"
    } else if(startCommand["headlessType"] == "Firefox") {
      startCommand = "npm run test_firefox"
    }
    let path = await askUserFolderLocation("sus archivos de pruebas");
    let commands = [
      moveToFolderCommand("docker/docker-webdriverio"),
      deleteDirectory("docker/docker-webdriverio/test"),
      copyFileToDirectoryCommand(path["path"],"docker/docker-webdriverio/test/", "-r"),
      buildDockerComposeCommand(),
      runDockerComposeCommand("webdriverio", startCommand)
    ];
    let command = commandsToString(commands);
    executeDocker(command, true);
	} else if(test == "BDT") {
		let path = await askUserFolderLocation("sus archivos de pruebas");
		let commands = [
			moveToFolderCommand("docker/docker-bdt"),
      deleteDirectory("docker/docker-bdt/features"),
			copyFileToDirectoryCommand(path["path"],"docker/docker-bdt/features/", "-r"),
			buildDockerComposeCommand(),
			runDockerComposeCommand("bdt", "npm test")
		];
		let command = commandsToString(commands);
		executeDocker(command, true);
	} else if(test == "Random") {
		let path = await askUserFolderLocation("sus archivos de pruebas");
		let commands = [
			moveToFolderCommand("docker/docker-gremlins"),
      deleteDirectory("docker/docker-gremlins/test"),
			copyFileToDirectoryCommand(path["path"],"docker/docker-gremlins/test/", "-r"),
			buildDockerComposeCommand(),
			runDockerComposeCommand("gremlins", "npm test")
		];
		let command = commandsToString(commands);
		executeDocker(command, true);
	} else if(test == "Generacion de datos") {
		let path = await askUserFolderLocation("sus archivos de pruebas");
		let commands = [
			moveToFolderCommand("docker/docker-datos"),
      deleteDirectory("docker/docker-datos/test"),
      copyFileToDirectoryCommand(path["path"],"docker/docker-datos/test/", "-r"),
			buildDockerComposeCommand(),
			runDockerComposeCommand("datos", "npm test")
		];
		let command = commandsToString(commands);
		executeDocker(command, true);
	} else if(test == "VRT") {
    console.log("Please enter to: http://localhost:8000")
  } else if(test == "Mutating") {
    let path = await askUserFolderLocation("su proyecto de pruebas");
    let mutatorType = await askMutatorype();
    let commands = [
			moveToFolderCommand("docker/docker-mutode"),
      deleteDirectory("docker/docker-mutode/test"),
      copyFileToDirectoryCommand(path["path"],"docker/docker-mutode/test/", "-r"),
			buildDockerComposeCommand(),
			runDockerComposeCommand("mutode", "./node_modules/mutode/bin/mutode --mutators \"" + mutatorType["mutatorType"] + "\"")
		];
    let command = commandsToString(commands);
		executeDocker(command, false);
  }
}

async function handleMobileTest(test) {
	if(test == "BDT") {
		let path = await askUserFolderLocation("su apk");
    let testPath = await askUserFolderLocation("sus archivos de pruebas");
		let commands = [
			moveToFolderCommand("docker/docker-android-bdt"),
			copyFileToDirectoryCommand(path["path"],"docker/docker-android-bdt/app.apk"),
			deleteDirectory("docker/docker-android-bdt/features"),
			copyFileToDirectoryCommand(testPath["path"],"docker/docker-android-bdt/features/", "-r"),
			buildDockerComposeCommand(),
			runDockerComposeCommand("alpine")
		];
		let command = commandsToString(commands);
		executeDocker(command, false);
	} else if(test == "Random") {
		let path = await askUserFolderLocation("su apk");
		let appPackage = await askUserAppPackage();
		let commands = [
			moveToFolderCommand("docker/docker-random"),
			copyFileToDirectoryCommand(path["path"],"docker/docker-random/app.apk"),
			buildDockerComposeCommand(),
			runDockerComposeCommand("alpine", appPackage["appPackage"])
		];
		let command = commandsToString(commands);
		executeDocker(command, false);
	}
}
