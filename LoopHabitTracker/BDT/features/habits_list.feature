Feature: Habits list
  Scenario: As a user I want to create a new habit in my list for tracking the progress of one of my objectives
    Given I press "next"
    Given I press "next"
    Given I press "done"
    Given I press view with id "actionAdd"
    And I enter text "Test" into field with id "tvName"
    And I enter text "Is Test?" into field with id "tvDescription"
    And I press "spinner"
    And I press "Semanalmente"
    And I press "tvReminderTime"
    And I press "done_button"
    And I press "buttonSave"
    Then I should see "Test"

  Scenario: As I user I want to be remembered that the name of a habit cant be blank when I try to create one with no name.
    Given I press "actionAdd"
    And I press "buttonSave"
    Then I should see "El nombre no puede quedar en blanco."

  Scenario: As I user I want to edit a habit to correct mistakes when I created it.
    Given I long press "Test"
    Given I press "action_edit_habit"
    And I clear input field with id "tvName"
    And  I enter text "New Name" into field with id "tvName"
    Then I see the text "New Name"
