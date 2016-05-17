Feature: Podcasts page highlighted content
  In order to...
  As a...
  I want...

  Rules:
  - List contains 3 podcast episode chapters
  - A highlighted chapter has a title and image, which can be different from the chapter that it links to
  - Clicking on a highlighted chapter will start the audio player on the podcast episode page at that chapter (but not start playing it)

  Scenario: List shows highlighted podcast chapters
    When I go the Podcasts page
    Then I should see the 3 highlighted podcasts chapters in the 'Highlighted podcasts' list

  Scenario: Clicking on a highlighted chapter will start the audio player at the chapter's start time
    When I go the Podcasts page
    And I click on the first highlighted podcast chapter
    Then I should be on the podcast episode page for the chapter
    And I should see the audio player is ready to start at the chapter's start time
