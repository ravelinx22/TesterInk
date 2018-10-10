const prompts = require('prompts');:
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
	{ title: 'Generacion de datos', value: 'Generacion de datos' },
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
		// TODO Varios
		let path = await askUserFolderLocation("sus archivos de pruebas");
	} else if(test == "Headless") {
		// TODO Varios
		let path = await askUserFolderLocation("sus archivos de pruebas");
	} else if(test == "BDT") {
		let path = await askUserFolderLocation("sus archivos de pruebas");
		let commands = [
			moveToFolderCommand("docker/docker-bdt"),
			buildDockerComposeCommand(),
			runDockerComposeCommand("bdt", "npm test")
		];
		let command = commandsToString(commands);
		executeDocker(command);
	} else if(test == "Random") {
		let path = await askUserFolderLocation("sus archivos de pruebas");
		let commands = [
			moveToFolderCommand("docker/docker-gremlins"),
			buildDockerComposeCommand(),
			runDockerComposeCommand("gremlins", "npm test")
		];
		let command = commandsToString(commands);
		executeDocker(command);
	} else if(test == "Generacion de datos") {
		let path = await askUserFolderLocation("sus archivos de pruebas");
		let commands = [
			moveToFolderCommand("docker/docker-datos"),
			buildDockerComposeCommand(),
			runDockerComposeCommand("datos", "npm test")
		];
		let command = commandsToString(commands);
		executeDocker(command);
	}
}

async function handleMobileTest(test) {
	if(test == "BDT") {
		let path = await askUserFolderLocation("su apk");
		let testPath = await askUserFolderLocation("sus archivos de pruebas");
		let commands = [
			moveToFolderCommand("docker/docker-android-bdt"),
			copyFileToDirectoryCommand(path["path"],"docker/docker-android-bdt/app.apk"),
			deleteDirectory(testPath["path"]),
			copyFileToDirectoryCommand(testPath["path"],"docker/docker-android-bdt/features/", "-r"),
			buildDockerComposeCommand(),
			runDockerComposeCommand("alpine")
		];
		let command = commandsToString(commands);
		executeDocker(command);
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
		executeDocker(command);
	}
}
