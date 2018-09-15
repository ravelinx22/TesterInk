#ahora con tablas de datos:

Feature: Login into losestudiantes
    As an user I want to authenticate myself within losestudiantes website in order to rate teachers

Scenario Outline: Login failed with wrong inputs

  Given I go to prestashop home screen
    When I fill with <email> and <password>
    And I try to login
    Then I expect to see <error>

    Examples:
      | email            | password | error                    |
      | miso@gmail.com   |    1234  | There is one error.      |


Scenario Outline: Vamos a hacer un login exitoso, yeah!
  Given I go to prestashop home screen
    When I fill with <email> and <password>

    And I try to login
    Then I logout <email> and <password>

    Examples:
      | email               | password      |
      | julborre@gmail.com  | miso2017      |

Scenario Outline: Vamos a crear un producto
  Given I go to prestashop home screen
    When I fill with <email> and <password>

    And I try to login
    And I add a new product

    Then I logout <email> and <password>

    Examples:
      | email               | password      |
      | julborre@gmail.com  | miso2017      |


