Feature: Sign up to losestudiantes
	As an user I want to create a account within losestudiantes website in order to rate teachers

	Scenario Outline: Sign up failed with wrong inputs

		Given I go to losestudiantes home screen
		When I open the login screen
    Then I take screenshot with name <imageBefore>
		And I fill name with <name>
		And I fill last name with <last_name>
		And I fill email with <email>
		And I fill password with <password>
		And I accept the terms and conditions
		And I try to sign up
		Then I expect to see <error>
    Then I take screenshot with name <imageAfter>

		Examples:
			| name  | last_name | email        | password | error                  | imageBefore | imageAfter |
			|william| ravelo    |test@gmail.com|          | Ingresa una contraseña | before4     |     after4 |
			|william| ravelo    |              | 12345678 | Ingresa tu correo      | before5     |     after5 |

	Scenario Outline: Sign up failed because of not accepting terms and conditions

		Given I go to losestudiantes home screen
		When I open the login screen
    Then I take screenshot with name <imageBefore>
		And I fill name with <name>
		And I fill last name with <last_name>
		And I fill email with <email>
		And I fill password with <password>
		And I try to sign up
		Then I expect to see <error>
    Then I take screenshot with name <imageAfter>

		Examples:
			| name  | last_name | email        | password | error                                    | imageBefore | imageAfter |
			|william| ravelo    |test@gmail.com|12345678  | Debes aceptar los términos y condiciones | before6     |  after6    |
