Feature: Check the create account functionality

  Scenario: user open the site
    Given open the site
    When user press on Log in from header
    Then user press on create account button
    And fill the form with valid data
    Then press on Log Out
    And close the browser




