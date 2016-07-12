Feature: Icon Pack Feature

  A feature that allow user to change his icon pack

  Related Udacity branches are :
  Sunshine-Version-2	3.06_launch_settings
  Sunshine-Version-2	3.05_add_settingsactivity
  Sunshine-Version-2	3.08_inflate_settingsactivity


  Commit I want
  feat : Add Change 'icon pack' option


  Scenario: Visualising default 'icon pack'
    Given It is the first time I use the app
    When I have clicked on Settings
    And I should see 'Sunshine' next to 'Icon Pack'


  Scenario: Icon pack unit change to Sunshine
    Given  The app is open
    And I have clicked on Settings
    And I have clicked on 'Icon Pack'
    When I select 'Sunshine' option
    And I should see 'Sunshine' next to 'Icon Pack'

  Scenario: Icon pack unit change to Cute Dogs
    Given  The app is open
    And I have clicked on Settings
    And I have clicked on 'Icon Pack'
    When I select 'Cute Dogs' option
    And I should see 'Sunshine' next to 'Cute Dogs'