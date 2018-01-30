Feature: Basic iOS Appium Example

  @ignore
  Scenario: Binding
    Given I bind

  Scenario: Some general scenario
    Given I have launched the iOS app
    And I have successfully signed in
    When I add a basic booking
    Then I am taken to the Bookings screen