Feature: wheels by vehicle
  Scenario: select wheels by vehicle
    Given open the site
    Then navigate to wheels tab from widget
    Then press on shop wheels by vehicle
    Then select year
    Then select Make for wheels by vehicle
    Then select model for wheels by vehicle
    Then select option for wheels by vehicle
    Then select size for wheels by vehicle
    And verify that CLP is open
    And verify searching car by Year and Make for wheels
    And close the browser