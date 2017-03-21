Feature: Check the change password functionality

  Scenario: Change the password
    Given  open the site
    When user press on Log in from header
    Then user press on create account button
    And fill the form with valid data
    Then press on account setting from my account page
    And press on Edit for password
    And fill the form with new password
    And Save cahnges
    Then press on Log Out
    And user press on Log in from header
    And Log in with new password
    Then press on Log Out
