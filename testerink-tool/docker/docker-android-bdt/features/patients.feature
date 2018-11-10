Feature: Patients list

  Scenario: As a user I want to create a new patient so that I can track his medicine information in the app.
    Given I press "mi_button_skip"
    And I wait
    Then I take a screenshot of the phone
    And I swipe left
    And I wait
    And I press "Patients"
    And I press "add_button"
    And I wait
    And I hide my keyboard
    And I wait
    And I enter text "Test" into field with id "patient_name"
    And I press "action_done"
    Then I should see "Test"
    Then I take a screenshot of the phone

  Scenario: As a user I want to delete a patient so that I dont have inconsistent information in the app.
    Given I swipe left
    And I wait
    Then I take a screenshot of the phone
    And I press "Patients"
    And I long press "Test"
    And I press "button1"
    Then I should not see "Test"
    Then I take a screenshot of the phone
