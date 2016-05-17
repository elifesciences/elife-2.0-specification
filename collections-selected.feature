Feature: Collections page selected collections
  In order to...
  As a...
  I want...

  Rules:
  - List contains between 3 and 6 collections, or none
  - A selected collection has a title and image, which can be different from the collection that it links to
  - The selected curator is shown (with 'et al' if there are multiple)

  Scenario: List does not show when no collections are selected
    Given there are no selected collections
    When I go the Collections page
    Then I should not see the 'Selected collections' list

  Scenario: List shows selected collections
    Given there are 3 selected collections
    When I go the Collections page
    Then I should see the 3 selected collections in the 'Selected collections' list

  Scenario: Selection collections use details from the collection that they link to by default
    Given there is a collection called 'Tropical disease'
    And the 'Tropical disease' collection is selected
    When I go to the Collections page
    Then I should see the 'Tropical disease' collection in the 'Selected collections' list
    And I should see the title and image from the 'Tropical disease' collection used in the 'Tropical disease' selected collection

  Scenario: Selection collections can have a title and image different from the article they link to
    Given there is a collection called 'Tropical disease'
    And the 'Tropical disease' collection is selected with a custom title and image
    When I go to the Collections page
    Then I should see the 'Tropical disease' collection in the 'Selected collections' list
    And I should see the custom title and image used in the 'Tropical disease' selected collection

  Scenario: Selection collections show the selected curator
    Given there is a collection called 'Tropical disease' curated by Prabhat Jha and Ben Cooper
    And the 'Tropical disease' collection has Ben Cooper as the selected curator
    And the 'Tropical disease' collection is selected
    When I go to the Collections page
    Then I should see the 'Tropical disease' selected collection is curated by 'Ben Cooper et al'
