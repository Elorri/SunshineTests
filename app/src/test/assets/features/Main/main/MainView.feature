Feature: Main View

  This feature represent the main screen. It show a list of 14 days with weather info.

  Related Udacity branches are :

  Sunshine-Version-2	1.01_hello_world
  Sunshine-Version-2	1.02_add_list_item_forecast_layout
  Sunshine-Version-2	1.03_update_fragment_layout
  Sunshine-Version-2	1.04_add_dummy_data
  Sunshine-Version-2	1.05_create_arrayadapter
  Sunshine-Version-2	1.06_attach_adapter
  Sunshine-Version-2	2.09_display_data
  Sunshine-Version-2	4.20_projections
  Sunshine-Version-2	4.19_loaders
  Sunshine-Version-2	4.18_cursor_adapter
  Advanced_Android_Development	6.15_Starting_RecyclerView_Start
  Advanced_Android_Development	6.16_Starting_RecyclerView_Finish
  Advanced_Android_Development	6.17_Improving_our_RecyclerView
  Advanced_Android_Development	6.18_Bonus_RecyclerView_Code
  Sunshine-Version-2	5.12_scroll_position
  Sunshine-Version-2	5.08_images
  Advanced_Android_Development	4.01_Basic_Gliding
  Advanced_Android_Development	2.08_Implement_Limits_Part_1
  Advanced_Android_Development	2.09_Implement_Limits_Part_2
  Advanced_Android_Development	6.00_Material_Design
  Advanced_Android_Development	6.01_Color_Constants
  Advanced_Android_Development	6.02_Implementing_Toolbar
  Advanced_Android_Development	6.03_Altering_the_Layout_Start
  Advanced_Android_Development	6.04_Altering_the_Layout_Finish
  Advanced_Android_Development	6.05_Improving_the_Forecast_View_Start
  Advanced_Android_Development	6.06_Improving_the_Forecast_View_Finish
  Advanced_Android_Development	6.07_So_Much_Real_Estate_Part_1_Start
  Advanced_Android_Development	6.08_So_Much_Real_Estate_Part_1_Finish
  Advanced_Android_Development	6.09_So_Much_Real_Estate_Part_2_Start
  Advanced_Android_Development	6.10_So_Much_Real_Estate_Part_2_Finish
  Advanced_Android_Development	6.11_So_Much_Real_Estate_Part_3_Start
  Advanced_Android_Development	6.12_So_Much_Real_Estate_Part_3_Finish
  Advanced_Android_Development	6.13_Too_Little_Real_Estate_Start
  Advanced_Android_Development	6.14_Too_Little_Real_Estate_Finish
  Sunshine-Version-2	5.06_formatting_strings
  Sunshine-Version-2	5.05_viewholder
  Sunshine-Version-2	5.04_two_item_view_types
  Sunshine-Version-2	5.03_update_forecast_adapter
  Sunshine-Version-2	5.02_build_today_item
  Advanced_Android_Development	6.19_Implement_Parallax_Scrolling
  Advanced_Android_Development	6.20_Animate_Your_Transitions
  Advanced_Android_Development	6.21_Begin_Sharing_Elements
  Advanced_Android_Development	6.22_Implement_AppBar_Scrolling
  Advanced_Android_Development	6.23_Adding_Elevation
  Advanced_Android_Development	7.00_Building_a_Total_Experience
  Advanced_Android_Development	2.00_Integration_Points_and_Error_Cases
  Advanced_Android_Development	2.01_Empty_Database
  Advanced_Android_Development	2.01_Empty_Database
  Advanced_Android_Development	2.02_Are_We_Offline
  Advanced_Android_Development	2.03_The_State_of_Things
  Advanced_Android_Development	2.04_Status_Storage
  Advanced_Android_Development	2.05_Show_Users_the_Status
  Advanced_Android_Development	2.07_Surface_the_Status_in_Settings
  Sunshine-Version-2	5.10_selected_item
  Sunshine-Version-2	5.11_activated_item
  Sunshine-Version-2	5.14_today_item_tablet
  Sunshine-Version-2	5.19_accessibility
  Advanced_Android_Development	3.00_Accessibility_and_Localization
  Advanced_Android_Development	3.01_Building_an_Accessible_Sunshine
  Advanced_Android_Development	3.02_Sunshine_In_Every_Direction


  Scenario: Successful cursor creation

  Commits I want
  feat : Add the MainView CursorLoader
  test : Add the MainView CursorLoader
#  Make relevant data show up. And use parameters in their corresponding test method
#  Avoid Incidental details (they are just noise)
#  Avoid Imperative style (how to) like this. It is stakeholder boring and too low level.
#  * It will cause duplications and stuff to move in background.
#  * Use declarative style (what it should be or do)
#  Example : Replace this
#  Scenario: Redirect user to originally requested page after logging in
#    Given a User "dave" exists with password "secret"
#    And I am not logged in
#    When I navigate to the home page
#    Then I am redirected to the login form
#    When I fill in "Username" with "dave"
#    And I fill in "Password" with "secret"
#    And I press "Login"
#    Then I should be on the home page
#  By this
#  Scenario: Redirect user to originally requested page after logging in
#    Given I am an unauthenticated User
#    When I attempt to view some restricted content
#    Then I am shown a login form
#    When I authenticate with valid credentials
#    Then I should be shown the restricted content

    Given Today date in millis is 1468188000000
    And I have a table location with data
      | _id | location_setting | city_name     | coord_lat | coord_long  |
      | 1   | 94043            | Mountain View | 37.386051 | -122.083847 |
    And I have a table weather with data
      | _id | location_id | date          | short_desc | icon_id | min   | max   | humidity | pressure | wind | degrees |
      | 1   | 1           | 1468188000000 | Clear      | 800     | 12.99 | 12.99 | 98       | 989.07   | 0.22 | 136     |
      | 2   | 1           | 1468274400000 | Clear      | 800     | 12.98 | 31.06 | 57       | 988.58   | 1.42 | 263     |
      | 3   | 1           | 1468360800000 | Clear      | 800     | 10.42 | 27.83 | 57       | 990.42   | 1.32 | 248     |
      | 4   | 1           | 1468447200000 | Clear      | 800     | 11.01 | 29.44 | 56       | 989.72   | 1.5  | 280     |
      | 5   | 1           | 1468533600000 | Clear      | 800     | 10.63 | 30.23 | 52       | 988.83   | 1.43 | 221     |
      | 6   | 1           | 1468620000000 | Clear      | 800     | 10.78 | 22.17 | 0        | 1003.98  | 1.28 | 243     |
      | 7   | 1           | 1468706400000 | Clear      | 800     | 11.13 | 21.82 | 0        | 1003.04  | 1.83 | 274     |
      | 8   | 1           | 1468792800000 | Clear      | 800     | 11.38 | 22.42 | 0        | 1003.62  | 2.95 | 314     |
      | 9   | 1           | 1468879200000 | Clear      | 800     | 12.22 | 21.52 | 0        | 1004.65  | 3.42 | 312     |
      | 10  | 1           | 1468965600000 | Clear      | 800     | 11.4  | 19.68 | 0        | 1006.8   | 4.34 | 317     |
      | 11  | 1           | 1469052000000 | Rain       | 500     | 10.54 | 24.39 | 0        | 1008.05  | 1.37 | 357     |
      | 12  | 1           | 1469138400000 | Rain       | 500     | 15.67 | 25.31 | 0        | 1009.31  | 1.17 | 337     |
      | 13  | 1           | 1469224800000 | Clear      | 800     | 16.96 | 25.93 | 0        | 1011.36  | 1.55 | 292     |
      | 14  | 1           | 1469311200000 | Clear      | 800     | 16.26 | 25.01 | 0        | 1012.33  | 1.66 | 270     |

    And I have a ContentProvider
    When I query ContentProvider with an uri of type 101
    Then I should get a cursor like this
      | weath_id | loc_id | loc_settings | city_name     | lat       | coord_long  | date          | short_desc | icon_id | min   | max   | humidity | pressure | wind | degrees |
      | 1        | 1      | 94043        | Mountain View | 37.386051 | -122.083847 | 1468188000000 | Clear      | 800     | 12.99 | 12.99 | 98       | 989.07   | 0.22 | 136     |
      | 2        | 1      | 94043        | Mountain View | 37.386051 | -122.083847 | 1468274400000 | Clear      | 800     | 12.98 | 31.06 | 57       | 988.58   | 1.42 | 263     |
      | 3        | 1      | 94043        | Mountain View | 37.386051 | -122.083847 | 1468360800000 | Clear      | 800     | 10.42 | 27.83 | 57       | 990.42   | 1.32 | 248     |
      | 4        | 1      | 94043        | Mountain View | 37.386051 | -122.083847 | 1468447200000 | Clear      | 800     | 11.01 | 29.44 | 56       | 989.72   | 1.5  | 280     |
      | 5        | 1      | 94043        | Mountain View | 37.386051 | -122.083847 | 1468533600000 | Clear      | 800     | 10.63 | 30.23 | 52       | 988.83   | 1.43 | 221     |
      | 6        | 1      | 94043        | Mountain View | 37.386051 | -122.083847 | 1468620000000 | Clear      | 800     | 10.78 | 22.17 | 0        | 1003.98  | 1.28 | 243     |
      | 7        | 1      | 94043        | Mountain View | 37.386051 | -122.083847 | 1468706400000 | Clear      | 800     | 11.13 | 21.82 | 0        | 1003.04  | 1.83 | 274     |
      | 8        | 1      | 94043        | Mountain View | 37.386051 | -122.083847 | 1468792800000 | Clear      | 800     | 11.38 | 22.42 | 0        | 1003.62  | 2.95 | 314     |
      | 9        | 1      | 94043        | Mountain View | 37.386051 | -122.083847 | 1468879200000 | Clear      | 800     | 12.22 | 21.52 | 0        | 1004.65  | 3.42 | 312     |
      | 10       | 1      | 94043        | Mountain View | 37.386051 | -122.083847 | 1468965600000 | Clear      | 800     | 11.4  | 19.68 | 0        | 1006.8   | 4.34 | 317     |
      | 11       | 1      | 94043        | Mountain View | 37.386051 | -122.083847 | 1469052000000 | Rain       | 500     | 10.54 | 24.39 | 0        | 1008.05  | 1.37 | 357     |
      | 12       | 1      | 94043        | Mountain View | 37.386051 | -122.083847 | 1469138400000 | Rain       | 500     | 15.67 | 25.31 | 0        | 1009.31  | 1.17 | 337     |
      | 13       | 1      | 94043        | Mountain View | 37.386051 | -122.083847 | 1469224800000 | Clear      | 800     | 16.96 | 25.93 | 0        | 1011.36  | 1.55 | 292     |
      | 14       | 1      | 94043        | Mountain View | 37.386051 | -122.083847 | 1469311200000 | Clear      | 800     | 16.26 | 25.01 | 0        | 1012.33  | 1.66 | 270     |


  Scenario: Successful list display
  Commit I want
  feat : Add a RecyclerView (getting data from a cursor)
    Given I have a cursor with data like this
      | weath_id | loc_id | loc_settings | city_name     | lat       | coord_long  | date          | short_desc | icon_id | min   | max   | humidity | pressure | wind | degrees |
      | 1        | 1      | 94043        | Mountain View | 37.386051 | -122.083847 | 1468188000000 | Clear      | 800     | 12.99 | 12.99 | 98       | 989.07   | 0.22 | 136     |
      | 2        | 1      | 94043        | Mountain View | 37.386051 | -122.083847 | 1468274400000 | Clear      | 800     | 12.98 | 31.06 | 57       | 988.58   | 1.42 | 263     |
      | 3        | 1      | 94043        | Mountain View | 37.386051 | -122.083847 | 1468360800000 | Clear      | 800     | 10.42 | 27.83 | 57       | 990.42   | 1.32 | 248     |
      | 4        | 1      | 94043        | Mountain View | 37.386051 | -122.083847 | 1468447200000 | Clear      | 800     | 11.01 | 29.44 | 56       | 989.72   | 1.5  | 280     |
      | 5        | 1      | 94043        | Mountain View | 37.386051 | -122.083847 | 1468533600000 | Clear      | 800     | 10.63 | 30.23 | 52       | 988.83   | 1.43 | 221     |
      | 6        | 1      | 94043        | Mountain View | 37.386051 | -122.083847 | 1468620000000 | Clear      | 800     | 10.78 | 22.17 | 0        | 1003.98  | 1.28 | 243     |
      | 7        | 1      | 94043        | Mountain View | 37.386051 | -122.083847 | 1468706400000 | Clear      | 800     | 11.13 | 21.82 | 0        | 1003.04  | 1.83 | 274     |
      | 8        | 1      | 94043        | Mountain View | 37.386051 | -122.083847 | 1468792800000 | Clear      | 800     | 11.38 | 22.42 | 0        | 1003.62  | 2.95 | 314     |
      | 9        | 1      | 94043        | Mountain View | 37.386051 | -122.083847 | 1468879200000 | Clear      | 800     | 12.22 | 21.52 | 0        | 1004.65  | 3.42 | 312     |
      | 10       | 1      | 94043        | Mountain View | 37.386051 | -122.083847 | 1468965600000 | Clear      | 800     | 11.4  | 19.68 | 0        | 1006.8   | 4.34 | 317     |
      | 11       | 1      | 94043        | Mountain View | 37.386051 | -122.083847 | 1469052000000 | Rain       | 500     | 10.54 | 24.39 | 0        | 1008.05  | 1.37 | 357     |
      | 12       | 1      | 94043        | Mountain View | 37.386051 | -122.083847 | 1469138400000 | Rain       | 500     | 15.67 | 25.31 | 0        | 1009.31  | 1.17 | 337     |
      | 13       | 1      | 94043        | Mountain View | 37.386051 | -122.083847 | 1469224800000 | Clear      | 800     | 16.96 | 25.93 | 0        | 1011.36  | 1.55 | 292     |
      | 14       | 1      | 94043        | Mountain View | 37.386051 | -122.083847 | 1469311200000 | Clear      | 800     | 16.26 | 25.01 | 0        | 1012.33  | 1.66 | 270     |
    And I have a Fragment with a RecyclerView
    And I have a RecyclerView with an Adapter
    When I request a display
    Then Thoses items should be on screen
      | item_position | textview short_desc | imageview_weather_id | min_temp | max_temp |
      | 1             | clear               | ic_clear             | 94440    | 32       |
      | 2             | cloudy              | ic_cloudy            | 94440    | 22       |
    And Those item shouldn't be visible on screen
      | item_position | textview short_desc | imageview_weather_id | min_temp | max_temp |
      | 3             | rainy               | ic_rain              | 94440    | 25       |


  Scenario: Sucessful scroll to position
    Given I have a sucessful dispay with those items visibles
      | item_position | textview short_desc | imageview_weather_id | min_temp | max_temp |
      | 1             | clear               | ic_clear             | 94440    | 32       |
      | 2             | cloudy              | ic_cloudy            | 94440    | 22       |
    And I have a sucessful dispay with those items invisibles
      | item_position | textview short_desc | imageview_weather_id | min_temp | max_temp |
      | 3             | rainy               | ic_rain              | 94440    | 25       |
    When I scroll to position of item 3
    Then Item 3 should be visible


  Scenario: Successful scroll when rotation change
    Given I have a successful scroll to postion
    Then Item 3 should be visible
    When In change phone orientation
    Then Item 3 should be visible


  Scenario: Correct proportions are displayed on phone
    Given I have a successful dispay with several items visible
    And my device is a phone
    When I request a display
    Then today Item should in first position
    And today Item should take 1/3 of the screen
    And images should be cached

  Scenario: Unsuccessful list display
    Given
    Then I should see error message













