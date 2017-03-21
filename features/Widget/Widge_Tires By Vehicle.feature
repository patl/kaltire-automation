Feature: Tires By Vehicle

  Scenario: Chose any Tires By Vehicle

    Given open the site
    Then press on Shop Tires By Vehicle tab
    Then select year for tires by vehicle
    Then select Make
    Then select Model
    And select options
    And select size
    Then verify that searched page is displayed
    And verify searching car by Year and Make
    And close the browser




