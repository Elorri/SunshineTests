Feature: Change Location Feature

  A feature that allow user to change his location

  Related Udacity branches are :
  Sunshine-Version-2	3.06_launch_settings
  Sunshine-Version-2	3.05_add_settingsactivity
  Sunshine-Version-2	3.09_location_from_prefs
  Sunshine-Version-2	3.08_inflate_settingsactivity
  Sunshine-Version-2	3.07_add_locations_setting
  Advanced_Android_Development	2.06_Detect_Invalid_Location

  Commit I want
  feat : Add Change location option


  Scenario: Visualiasing default 'location'
    Given It is the first time I use the app
    When I have clicked on Settings
    And I should see location '94440' next to 'Location' label


  Scenario: Valid location change
    Given  The app is open
    And I have clicked on Settings
    And I have clicked on Location
    When I type my location
    Then I should see my location selected


  Scenario: Invalid location change
    Given  The app is open
    And I have clicked on Settings
    And I have clicked on Location
    When I type my location
    Then I should see 'invalid location' message
