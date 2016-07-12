Feature: Action menu feature

  This feature allows user to
  - visualize his location on a map
  - change his location
  - change his prefered temperature unit
  - change his prefered icon pack
  - change his notifications preferences

  Related Udacity branches are :
  Sunshine-Version-2	2.04_inflate_menu
  Sunshine-Version-2	2.03_add_refresh_xml


  Scenario: Successful detail launch
  Commit I want
  feat : Add an Action Menu

    Given I have open the app
    When I click on the action menu
    Then Menu menu should open
    And item 'Map Location' is visible
    And item 'location' is visible
    And item 'temperature unit' is visible
    And item 'Icon Pack' is visible
    And item 'weather notifications' is visible



















