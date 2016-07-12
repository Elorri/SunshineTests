Feature: Detail feature

  A feature that display the weather a chosen day with some important details
  The day details are
  - its name
  - a drawing representing the weather
  - a short description
  - the highest temperature
  - the smallest temperature
  - the humidity (in percentage)
  - the pressure (in hPa)
  - the wind (in km/h)

  Related Udacity branches are :

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
  Sunshine-Version-2	5.08_images
  Advanced_Android_Development	4.01_Basic_Gliding
  Sunshine-Version-2	5.13_alternative_detail_layout
  Sunshine-Version-2	5.19_accessibility
  Advanced_Android_Development	3.00_Accessibility_and_Localization
  Advanced_Android_Development	3.01_Building_an_Accessible_Sunshine
  Advanced_Android_Development	3.02_Sunshine_In_Every_Direction

  Scenario: Sucessful detail display

  Commit I want
  feat : Add a DetailView getting data from a cursor

    Given I have a Cursor
    And a DetailFragment
    When I request a display
    Then Thoses items should be on screen
      | textview short_desc | imageview_weather_id | min_temp | max_temp |
      | clear               | ic_clear             | 94440    | 32       |
      | cloudy              | ic_cloudy            | 94440    | 22       |
    And Images should be cached













