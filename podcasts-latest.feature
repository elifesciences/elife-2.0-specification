Feature: Podcasts page latest podcasts
  In order to...
  As a...
  I want...

  Rules:
  - Podcast episodes are loaded in batches of 6
  - Podcast episodes are shown most recent first

  Background:
    Given there are 20 podcast episodes

  Scenario: List shows latest 6 episodes
    When I go the Podcasts page
    Then I should see the latest 6 podcast episodes in the 'Latest podcasts' list

  Scenario: Loading more content adds previous 6 to the list
    When I go the Podcasts page
    And I load more episodes
    Then I should see the latest 12 podcast episodes in the 'Latest podcasts' list
