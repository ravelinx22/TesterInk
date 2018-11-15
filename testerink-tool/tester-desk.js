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
const { readJSONFile } = require('./json-reader.js');

const MobilesTypes = [
	{ title: 'Random', value: 'Random' },
	{ title: 'BDT', value: 'BDT' },
  { title: 'Mutation', value: 'Mutation' },
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
	}]
	const response = await prompts(questions);
	handleTestType(response);
}

async function askUserFolderLocation(requestedFileName) {
	const response = await prompts({
		type: 'text',
		name: 'path',
		message: '¿En que carpeta se encuentra ' + requestedFileName + "?"
	});
	return response;
}

async function askYesOrNoQuestion(question) {
  const response = await prompts({
    type: 'select',
    name: 'questionAnswer',
    message: '¿' + question + '?',
    choices: [
    	{ title: 'Si', value: true },
    	{ title: 'No', value: false },
    ],
    initial: 0
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

async function askMobileType() {
  const response = await prompts({
		type: 'select',
		name: 'mobileTestType',
		message: '¿Que tipo de prueba quiere probar?',
		choices: MobilesTypes,
		initial: 0
	});
  return response;
}

//-------------------------------------------
// Input Handler Helpers
//-------------------------------------------
async function handleTestType(response) {
  if(response["platform"] == "Web") {
    handleWebTest();
  } else {
    handleMobileTest();
  }
}

async function handleWebTest() {
  let confPath = await askUserFolderLocation("su archivo de configuración de ejecución");
  let useMutation = await askYesOrNoQuestion("Desea realizar mutation sobre su set de pruebas");
  var strykerConfPath = null;
  if(useMutation["questionAnswer"] === true) {
    let strykerPath = await askUserFolderLocation("su archivo de configuración de stryker");
    strykerConfPath = strykerPath["path"];
  }
  readJSONFile(confPath["path"], strykerConfPath);
}

async function handleMobileTest() {
  let confPath = await askUserFolderLocation("su archivo de configuración de ejecución");
  readJSONFile(confPath["path"], strykerConfPath);
}
