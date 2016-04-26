Feature: Homepage 'Magazine' list
  In order to...
  As a...
  I want...

  Rules:
  - 7 most recent items from the Magazine page are shown

  Scenario: List shows latest 7 Magazine items
    Given the Magazine has 10 items
    When I go to the homepage
    Then I should see the latest 7 Magazine items in the 'Magazine' list
