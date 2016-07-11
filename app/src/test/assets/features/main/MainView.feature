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

  Scenario: Sucessful cursor creation
  Commits I want
  feat : Add the MainView CursorLoader
  test : Add the MainView CursorLoader
    Given Today date in millis is 1
    And I have a ContentProvider contains data
      | date | short_desc | weather_id | city_name | min_temp | max_temp |
      | 1    | clear      | ic_clear   | 94440     | 22       | 32       |
      | 2    | cloudy     | ic_cloudy  | 94440     | 12       | 22       |
      | 3    | rainy      | ic_rain    | 94440     | 20       | 25       |
    And I have a CursorLoader
    When I query date , short_desc, weather_id, city_name, min_temp, max_temp of the next 14  days
    Then I should get a cursor like this
      | date | short_desc | weather_id | city_name | min_temp | max_temp |
      | 1    | clear      | ic_clear   | 94440     | 22       | 32       |
      | 2    | cloudy     | ic_cloudy  | 94440     | 12       | 22       |
      | 3    | rainy      | ic_rain    | 94440     | 20       | 25       |


  Scenario: Successful list display
  Commit I want
  feat : Add a RecyclerView (getting data from a cursor)
    Given I have a cursor with data like this
      | date | short_desc | weather_id | city_name | min_temp | max_temp |
      | 1    | clear      | ic_clear   | 94440     | 22       | 32       |
      | 2    | cloudy     | ic_cloudy  | 94440     | 12       | 22       |
      | 3    | rainy      | ic_rain    | 94440     | 20       | 25       |
    And I have a Fragment with a RecyclerView
    And I have a RecyclerView with an Adapter
    When I request a display
    Then Thoses items should be on screen
      | item_position | textview short_desc | imageview_weather_id | min_temp | max_temp |
      | 1             | clear               | ic_clear             | 94440    | 32       |
      | 2             | cloudy              | ic_cloudy            | 94440    | 22       |
    And Those item shouldn't be visibleon screen
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


  Scenario: Sucessful scroll when rotation change
    Given I have a sucessfull scroll to postion
    Then Item 3 should be visible
    When In change phone orientation
    Then Item 3 should be visible


  Scenario: Correct proportions are displayed on phone
    Given I have a sucessful dispay with several items visibles
    And my device is a phone
    When I request a display
    Then today Item should in first position
    And today Item should take 1/3 of the screen
    And images should be cached

  Scenario: Unsucessful list display
    Given
    Then I should see error message













