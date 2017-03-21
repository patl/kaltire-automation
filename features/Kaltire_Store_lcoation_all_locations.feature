Feature: check the all stores lists
  Scenario: check that all stores list is exists
    Given open the site
    Then press on Locator from header
    Then press on List o fall Locations
    And verify that you are on All List location
    And verify that Alberta is expended
    And check that other states are colapsing and exists
    And navigate back to Location page
    Then verify the elements on Store locator page
