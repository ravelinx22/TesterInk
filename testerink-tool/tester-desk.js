#!/usr/bin/env node

const program = require('commander');
const { prompt } = require('inquirer');
var Choices = require('prompt-choices');
var choices = new Choices(['foo', 'bar', 'baz']);

const List = require('prompt-list');
const list = new List({
  name: 'order',
  message: 'Que tipo de pruebas EndtoEnd desea ejecutar?',
  // choices may be defined as an array or a function that returns an array
  choices: [
    {name:'cd docker/docker-cypress && sudo docker-compose run cypress ./node_modules/.bin/cypress run --browser chrome', value:'Cypress - Chrome 63'},
    {name:'cd docker/docker-nightwatch && sudo docker-compose run --rm nightwatch', value: 'Nightwatch'},
    {name: 'Cypress - Chrome 69', disabled: 'Temporarily unavailable'},
    {name: 'Cypress - Chrome 68', disabled: 'Temporarily unavailable'},
    {name: 'Cypress - Chrome 67', disabled: 'Temporarily unavailable'},
    {name: 'Cypress - Chrome 66', disabled: 'Temporarily unavailable'},
    {name: 'Cypress - Chrome 65', disabled: 'Temporarily unavailable'},
    {name: 'Cypress - Chrome 64', disabled: 'Temporarily unavailable'}
  ]
});

const { 
  addContact,
  getContact,
  getContactList,
  updateContact,
  deleteContact,
  executeDocker
} = require('./executor'); 

const questions = [
  {
    type : 'input',
    name : 'firstname',
    message : 'Enter firstname ..'
  },
  {
    type : 'input',
    name : 'lastname',
    message : 'Enter lastname ..'
  },
  {
    type : 'input',
    name : 'phone',
    message : 'Enter phone number ..'
  },
  {
    type : 'input',
    name : 'email',
    message : 'Enter email address ..'
  }
];

program
  .version('0.0.1')
  .description('contact management system')

program
  .command('addContact')
  .alias('a')
  .description('Add a contact')
  .action(() => {
    prompt(questions).then((answers) =>
      addContact(answers));
  });

program
  .command('getContact <name>')
  .alias('r')
  .description('Get contact')
  .action(name => getContact(name));

program
  .command('updateContact <_id>')
  .alias('u')
  .description('Update contact')
  .action(_id => {
    prompt(questions).then((answers) =>
      updateContact(_id, answers));
  });

program
  .command('deleteContact <_id>')
  .alias('d')
  .description('Delete contact')
  .action(_id => deleteContact(_id));

program
  .command('executeDocker')
  .alias('x')
  .description('Execute docker container')
  .action(()=> {
    list.run().then((answer) =>
        executeDocker(answer)); 
  });

program
  .command('getContactList')
  .alias('l')
  .description('List contacts')
  .action(() => getContactList());

// Assert that a VALID command is provided 
if (!process.argv.slice(2).length || !/[arudl]/.test(process.argv.slice(2))) {
  program.outputHelp();
  process.exit();
}
program.parse(process.argv)