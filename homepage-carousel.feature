Feature: Homepage carousel
  In order to...
  As a...
  I want...

  Rules:
  - Contains between 1 and 3 hero items
  - Any type eLife content can have a hero item
  - A hero item has a title and image, which can be different from the content that it links to

  Scenario: Hero items use details from the content that they link to by default
    Given there is a collection called 'Tropical disease'
    And there is a hero item linking to the 'Tropical disease' collection
    When I go to the homepage
    Then I should see the 'Tropical disease' hero item in the carousel
    And I should see teh title and image from the 'Tropical disease' collection used in the 'Tropical disease' hero item

  Scenario: Hero items can have a title and image different from the content they link to
    Given there is a collection called 'Tropical disease'
    And there is a hero item linking to the 'Tropical disease' collection with a custom title and image
    When I go to the homepage
    Then I should see the 'Tropical disease' hero item in the carousel
    And I should see the custom title and image used in the 'Tropical disease' hero item
