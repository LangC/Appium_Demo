Feature: Create a text comments in wechat
  After I logged in
  I want to create a text comment "Hello,Appium!"


  Scenario: CREATE A TEXT COMMENT 222
    Given I launched the app
    Then  I should see Login button
    When  I tap the login button
    Then  I should see bouch of welcome screens
    Given I swipe them in order to access main screen
    And   I find out Comments and create a text
    Then  I should see the text content showing correct in comments

  Scenario: DELETE THE TEXT COMMENT 222
    Given I launched the app
    And   I open comments
    Then  I should see the comment deleted