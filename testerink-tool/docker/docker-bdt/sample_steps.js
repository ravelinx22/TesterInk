var {defineSupportCode} = require('cucumber');
var {expect} = require('chai');
var Mockaroo = require('mockaroo');


// Mockaroo
var client = null;

function setupClient() {
  if(!client) {
    client = new Mockaroo.Client({
      apiKey: "6e06b9b0"
    });
  }
}

var supportedFields = [{
  name: 'email',
  type: 'Email Address'
}, {
  name: 'password',
  type: 'Password'
}, {
  name: 'first_name',
  type: 'First Name'
}, {
  name: 'last_name',
  type: 'Last Name'
}, {
  name: 'buzzword',
  type: 'Buzzword'
}];

// Tests
defineSupportCode(({Given, When, Then}) => {
  Then(/^I type random name in (.*)$/, (selector) => {
    var data = {};
    browser.waitUntil(function () {
      setupClient();
			return client.generate({
				count: 1,
				fields: supportedFields
			}).then(function(records) {
				data = records;
				return records;
			});
		}, 5000, 'expected text to be different after 5s');

    var elemento = browser.element(selector);
    elemento.click();
    elemento.keys(data.first_name)
  })

  Then(/^I type random email in (.*)$/, (selector) => {
    var data = {};
    browser.waitUntil(function () {
      setupClient();
      return client.generate({
        count: 1,
        fields: supportedFields
      }).then(function(records) {
        data = records;
        return records;
      });
    }, 5000, 'expected text to be different after 5s');

    var elemento = browser.element(selector);
    elemento.click();
    elemento.keys(data.email)
  })

  Then(/^I type random password in (.*)$/, (selector) => {
    var data = {};
    browser.waitUntil(function () {
      setupClient();
      return client.generate({
        count: 1,
        fields: supportedFields
      }).then(function(records) {
        data = records;
        return records;
      });
    }, 5000, 'expected text to be different after 5s');

    var elemento = browser.element(selector);
    elemento.click();
    elemento.keys(data.password)
  })

  Then(/^I type random word in (.*)$/, (selector) => {
    var data = {};
    browser.waitUntil(function () {
      setupClient();
      return client.generate({
        count: 1,
        fields: supportedFields
      }).then(function(records) {
        data = records;
        return records;
      });
    }, 5000, 'expected text to be different after 5s');

    var elemento = browser.element(selector);
    elemento.click();
    elemento.keys(data.buzzword)
  })

  Then(/^I type random last name in (.*)$/, (selector) => {
    var data = {};
    browser.waitUntil(function () {
      setupClient();
      return client.generate({
        count: 1,
        fields: supportedFields
      }).then(function(records) {
        data = records;
        return records;
      });
    }, 5000, 'expected text to be different after 5s');

    var elemento = browser.element(selector);
    elemento.click();
    elemento.keys(data.last_name)
  })
});
