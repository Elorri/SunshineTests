Feature: Change notifications Feature

  A feature that allow user to turn off or on his notifications

  Related Udacity branches are :
  Sunshine-Version-2	3.06_launch_settings
  Sunshine-Version-2	3.05_add_settingsactivity
  Sunshine-Version-2	3.08_inflate_settingsactivity



  Commit I want
  feat : Add Change 'weather notifications' option



  Scenario: Visualiasing default 'weather notifications'
    Given It is the first time I use the app
    When I have clicked on Settings
    And I should see 'Enabled' next to 'weather notifications'


  Scenario: Enable 'weather notifications'
    Given  The app is open
    And I have clicked on Settings
    And 'Weather notifications' is 'disabled'
    When I click on 'Weather notifications'
    And I should see 'Enabled' next to 'weather notifications'


  Scenario: Disable 'weather notifications'
    Given  The app is open
    And I have clicked on Settings
    And 'Weather notifications' is 'disabled'
    When I click on 'Weather notifications'
    And I should see 'Disable' next to 'weather notifications'