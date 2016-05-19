Feature: Events
  In order to...
  As a...
  I want...

  Rules:
  - List contains upcoming and in-progress events
  - Events are loaded in batches of 6
  - Events are shown earliest starting date/time first

  Scenario: List shows latest 6 events
    Given there are 10 upcoming events
    When I go to the Events page
    Then I should see the 6 earliest upcoming events in the 'Upcoming events list

  Scenario: Loading more events adds previous 6 to the list
    Given there are 20 upcoming events
    When I go to the Events page
    And I load more events
    Then I should see the 12 earliest upcoming events in the 'Upcoming events list
