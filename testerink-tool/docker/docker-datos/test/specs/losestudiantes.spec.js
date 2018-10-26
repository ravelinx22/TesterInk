var assert = require('assert');
var Mockaroo = require('mockaroo');

describe('los estudiantes login', function() {
	function setup() {
		browser.url('/');
		browser.click('button=Cerrar');
	}

	setup();

	it('should visit los estudiantes and failed at log in', function () {
		var data = {};
		browser.waitUntil(function () {
			var client = new Mockaroo.Client({
				apiKey: "6e06b9b0"
			})

			return client.generate({
				count: 1,
				fields: [{
					name: 'email',
					type: 'Email Address'
				}, {
					name: 'password',
					type: 'Password'
				}]
			}).then(function(records) {
				data = records;
				return records;
			});
		}, 5000, 'expected text to be different after 5s');

		browser.url('/');
		browser.waitForVisible('button=Ingresar', 5000);
    browser.saveScreenshot("./reports/before1.png");
		browser.click('button=Ingresar');

		var cajaLogIn = browser.element('.cajaLogIn');
		var mailInput = cajaLogIn.element('input[name="correo"]');

		mailInput.click();
		mailInput.keys(data.email);

		var passwordInput = cajaLogIn.element('input[name="password"]');

		passwordInput.click();
		passwordInput.keys(data.password);

		cajaLogIn.element('button=Ingresar').click()
		browser.waitForVisible('.aviso.alert.alert-danger', 5000);

		var alertText = browser.element('.aviso.alert.alert-danger').getText();
		expect(alertText).toBe('Upss! El correo y la contraseña que ingresaste no figuran en la base de datos. Intenta de nuevo por favor.');
    browser.saveScreenshot("./reports/after1.png");
	});
});
