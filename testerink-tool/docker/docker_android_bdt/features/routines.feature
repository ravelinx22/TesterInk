Feature: Routines list
  Scenario: As a user I want to create a routine so that I dont forget to take a medicine
    Given I press "mi_button_skip"
    And I wait
    And I swipe left
    And I press "Rutinas"
    And I press "add_button"
    And I clear "routine_edit_name"
    And I enter text "Test" into field with id "routine_edit_name"
    And I press "add_button"
    Then I should see "Test"

  Scenario: As a user I want to delete a routine so that I dont have inconsistent information in my account
    Given I swipe left
    And I press "Rutinas"
    And I long press "Test"
    And I press "md_buttonDefaultPositive"
    Then I should not see "Test"
