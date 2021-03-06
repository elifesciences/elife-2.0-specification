Feature: Press packs
  In order to...
  As a...
  I want...

  Rules:
  - Press packs are loaded in batches of 6
  - Press packs are shown most recent first
  - Press packs are about 1 or more articles
  - Press packs MSAs match the MSAs of the articles that they cover

  Background:
    Given there are 20 press packs

  Scenario: List shows latest 6 items
    When I go the press packs page
    Then I should see the latest 6 press packs in the 'Latest' list

  Scenario: Loading more press packs adds previous 6 to the list
    When I go the press packs page
    And I load more press packs
    Then I should see the latest 12 press packs in the 'Latest' list
