Feature: Monthly archive
  In order to...
  As a...
  I want...

  Rules:
  - Each year has a monthly archive
  - Months are ordered from January to December
  - The current month is not included
  - Each month has the 4 most viewed items that have appeared in the homepage carousel
  - Each month uses the image from the most viewed item that has appeared in the homepage carousel
  - It doesn't matter when the item has appeared in the homepage carousel

  Background:
    Given today is 26 April 2016

  Scenario: Current month is not included
    Given there are articles published in every month during 2016
    When I go to the monthly archive for 2016
    Then I should see archives for:
      | January 2016  |
      | February 2016 |
      | March 2016    |

  Scenario: Each month shows up to 4 most viewed items that have appeared in the carousel
    Given there are articles with homepage carousel hero items:
      | Article   | Hero item text  | Page views | Published     |
      | Article 1 | Article 1       |        100 | 14 March 2016 |
      | Article 2 | Some Article    |        300 | 11 March 2016 |
      | Article 3 | Article 3       |        200 | 25 March 2016 |
      | Article 4 | Another Article |      1,000 | 15 March 2016 |
      | Article 5 | Article 5       |         50 | 29 March 2016 |
    When I go to the monthly archive for 2016
    Then I should see the image from the hero item for Article 4 in the archive for March 2016
    And I should see the following cover articles for Month 2016:
      | Another Article |
      | Some Article    |
      | Article 3       |
      | Article 1       |
