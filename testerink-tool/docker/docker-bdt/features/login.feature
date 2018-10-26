Feature: Login into losestudiantes
	As an user I want to authenticate myself within losestudiantes website in order to rate teachers

	Scenario Outline: Login failed with wrong inputs

		Given I go to losestudiantes home screen
		When I open the login screen
    Then I take screenshot with name <imageBefore>
		And I fill with <email> and <password>
		And I try to login
		Then I expect to see <error>
    Then I take screenshot with name <imageAfter>

		Examples:
			| email            | password | error                    | imageBefore | imageAfter |
			|                  |          | Ingresa una contraseña   | before1     | after1     |
			| miso@gmail.com   |    1234  | Upss! El correo y        | before2     | after2     |

	Scenario Outline: Login success

		Given I go to losestudiantes home screen
		When I open the login screen
    Then I take screenshot with name <imageBefore>
		And I fill with <email> and <password>
		And I try to login
		Then I expect to have a my account button
    Then I take screenshot with name <imageAfter>

		Examples:
			| email            | password | imageBefore | imageAfter |
			| test@gmail.com   |12345678  | before3     | after3     |
