Feature: Guided Selling Path

  Scenario: Check the Guided Selling Path

   Given open the site
    Then press on Shop Tires By Vehicle tab
    Then select year
    Then  select Make
    Then select Model
    Then  select options
    Then  select size
    And verify searching car by Year and Make
    And verify 'have category in minD?'
    And press on Get started button
    Then Navigate to step 1
    And go thro the Guided Selling Path
    And Verify Recoma ndations in CLP
   And close the browser



