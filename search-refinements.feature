Feature: Search page refinements
  In order to...
  As a...
  I want...

  Rules:
  - Searches can be refined by MSA and content type
  - Refinements show the number of matches for the current search term
  - Refinements can still be selected, even if they won't refine the search any more

  Background:
    Given there are 3 articles about 'Cells' with the MSA 'Biochemistry'
    And there are 3 articles about 'Cells' with the MSA 'Immunology'

  Scenario:
    Given I searched for 'Cells'
    When I filter by the MSA 'Biochemistry'
    Then I should see the 3 most relevant results about 'Cells' with the MSA 'Biochemistry'

  Scenario:
    Given I searched for 'Cells'
    And I filtered by the MSA 'Biochemistry'
    When I filter by the MSA 'Immunology'
    Then I should see the 4 most relevant results about 'Cells' with the MSA 'Biochemistry' or 'Immunology'
