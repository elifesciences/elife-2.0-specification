Feature: Subject page highlighted content
  In order to...
  As a...
  I want...

  Rules:
  - First item is the latest podcast episodes with the MSA
  - Then 3 latest non-podcast highlighted content with the MSA

  Scenario: List shows latest podcast
    Given there are 2 podcast episodes with the MSA 'Cell biology'
    And there are 5 highlighted articles with the MSA 'Cell biology'
    When I go the MSA 'Cell biology' page
    Then I should see the latest podcast episode with the MSA 'Cell biology' in the 'Magazine' list
    And I should see the latest 3 highlighted articles with the MSA 'Cell biology' in the 'Magazine' list
