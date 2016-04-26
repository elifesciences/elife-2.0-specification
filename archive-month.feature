Feature: Archive month
  In order to...
  As a...
  I want...

  Rules:
  - The heading image is the same as the image used for the month on the monthly archive page
  - The cover articles are the same as appear for the month on the monthly archive page
  - 'Research articles' list contains items from the homepage 'Latest research' list first published during the month
  - 'Magazine' list contains Magazine items first published during the month
  - Podcast episodes always appear at the top of the 'Magazine' list
  - The date shown for content is always the first publication date

  Background:
    Given today is 26 April 2016

  Scenario: Header is the same as the monthly archive
    Given the archive page for 2016 shows 4 cover articles for March 2016
    When I go to the archive for March 2016
    Then I should see the image for the most popular cover article in the header
    And I should see the 4 cover articles in the 'Cover articles' list

  Scenario: 'Research articles' list shows research articles first published during the month
    Given the homepage 'Latest research' list had 4 items first published during March 2016
    When I go to the archive for March 2016
    Then I should see the 4 research articles published during March 2016 in the 'Research articles' list

  Scenario: Research articles are shown using the date of the first version
    Given a research article had a POA on 31 March 2016
    And it had a VOR on 1 April 2016
    When I go to the archive for March 2016
    Then I should see the VOR for the research article in the 'Research articles' list
    And I should see it dated 31 March 2016

  Scenario: 'Magazine' list shows Magazine items published during the month
    Given the Magazine had 4 items first published during March 2016
    When I go to the archive for March 2016
    Then I should see the 4 Magazine items published during March 2016 in the 'Magazine' list

  Scenario: Magazine articles are shown using the date of the first version
    Given an Insight had a first VOR on 31 March 2016
    And it had a second VOR on 1 April 2016
    When I go to the archive for March 2016
    Then I should see the Insight in the 'Magazine' list
    And I should see it dated 31 March 2016

  Scenario: Podcast episodes appear at the top of the 'Magazine' list
    Given an Insight had a POA on 31 March 2016
    And a podcast episode was published on 30 March 2016
    When I go to the archive for March 2016
    Then I should see the podcast episode at the top of the 'Magazine' list
