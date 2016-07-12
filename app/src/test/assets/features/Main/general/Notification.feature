Feature: Notification feature

  A feature that send notification when weather has been updated

  Related Udacity branches are :
  Sunshine-Version-2	6.08_turn_off_notifications
  Sunshine-Version-2	6.07_notifications_answer
  Sunshine-Version-2	6.06_notifications_quiz

  Commit I want
  feat : Add notifications

  Scenario: Sucessfull notification send
    Given I have enable the notifications in settings
    When I request to send a notification
    Then I should see a notification







