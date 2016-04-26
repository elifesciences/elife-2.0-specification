Feature: Homepage 'Latest research' list
  In order to...
  As a...
  I want...

  Rules:
  - Articles are loaded in batches of 6
  - Articles are shown most recent first
  - If an article is POA, the date used for ordering is the first POA date
  - If an article is VOR, the date used for ordering is the first VOR date
  - The following types of article are included:
    - Research article
    - Research advance
    - Research exchange
    - Short report
    - Tools and resources
    - Replication study

  Scenario: List shows latest 6 articles
    Given 10 articles have been published
    When I go to the homepage
    Then I should see the latest 6 articles in the 'Latest research' list

  Scenario: Loading more articles adds previous 6 to the list
    Given 20 articles have been published
    When I go to the homepage
    And I load more articles
    Then I should see the latest 12 articles in the 'Latest research' list

  Scenario: First VOR date is used in preference to a POA
    Given research article 1 had a POA on 24 April
    And research article 1 had a VOR on 26 April
    And research article 2 has a VOR on 25 April
    When I go to the homepage
    Then I should see research article 1 at the top of the 'Latest research' list

  Scenario: First POA date is used if an article has multiple versions
    Given research article 1 had a first POA on 24 April
    And research article 1 had a second POA on 26 April
    And research article 2 has a POA on 25 April
    When I go to the homepage
    Then I should see research article 2 at the top of the 'Latest research' list

  Scenario: First VOR date is used if an article has multiple versions
    Given research article 1 had a first VOR on 24 April
    And research article 1 had a second VOR on 26 April
    And research article 2 has a VOR on 25 April
    When I go to the homepage
    Then I should see research article 2 at the top of the 'Latest research' list
