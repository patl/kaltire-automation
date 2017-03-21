Feature: Log in to My account and check the order history

  Scenario: Log in
    Given open the site
    Then user press on Log in from header
    And fill the email filed
    And fill the password filed
    Then press on Log in button
    And open order detailed page
    And press on Log Out
    And close the browser