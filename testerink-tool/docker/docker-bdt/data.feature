Feature: Sign up to losestudiantes
  Scenario Outline: Sign up failed because of not accepting terms and conditions

  Given I go to losestudiantes home screen
  When I open the login screen
  Then I take screenshot with name <imageBefore>
  Then I type random name in input[name="nombre"]
  Then I type random last name in input[name="apellido"]
  Then I type random email in input[name="correo"]
  Then I type random password in input[name="password"]
  And I try to sign up
  Then I expect to see <error>
  Then I take screenshot with name <imageAfter>

  Examples:
    | error                                    | imageBefore | imageAfter |
    | Debes aceptar los términos y condiciones | before1     | after1     |
