Feature: check the search functionality on Store locator page

  Scenario: Check the search functionality
    Given open the site
    Then press on Locator from header
    And verify the elements on Store locator page
    And search for Alberta
    And verify that Alberta is disaplyed
    Then press on Alberta store and veify that pop-up is disaplyed on the map
    And Navigate to Store Detail page
    And verify that Lcoation detail page is disaplyed
    Then navigate back to Location page

