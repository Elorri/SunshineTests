Feature: Change temperature Feature

  A feature that allow user to change his temperature unit

  Related Udacity branches are :
  Sunshine-Version-2	3.06_launch_settings
  Sunshine-Version-2	3.05_add_settingsactivity
  Sunshine-Version-2	3.08_inflate_settingsactivity
  Sunshine-Version-2	3.11_add_units_setting


  Commit I want
  feat : Add Change 'temperature unit' option


  Scenario: Visualiasing default 'temperature unit'
    Given It is the first time I use the app
    When I have clicked on Settings
    And I should see location 'Metrics' next to 'Temperature Units'

  Scenario: Temperature unit change to Imperial
    Given  The app is open
    And I have clicked on Settings
    And I have clicked on Temperature unit
    When I select 'Imperial' option
    Then I should see 'Imperial' next to 'Temperature Units'

  Scenario: Temperature unit change to Metrics
    Given  The app is open
    And I have clicked on Settings
    And I have clicked on Temperature unit
    When I select 'Metrics' option
    Then I should see 'Metrics' next to 'Temperature Units'