Feature: Search page
  In order to...
  As a...
  I want...

  Rules:
  - All content types are searchable
  - Search results are loaded in batches of 4
  - Searches are ordered by most relevant first by default
  - If the ordering can't separate two or more search results, fallback ordering is publication date (most recent first) then title (A first).

  Background:
    Given there are 10 articles about 'Cells'
    And I am on the search page

  Scenario: List shows 4 most relevant results
    When I search for 'Cells'
    Then I should see the 4 most relevant results for 'Cells'

  Scenario: Loading more adds previous 4 to the list
    When I search for 'Cells'
    And I load more results
    Then I should see the 8 most relevant results for 'Cells'

  Scenario: Order by date
    When I search for 'Cells'
    And I order by date
    Then I should see the 4 most recent results abouts 'Cells'

  Scenario: Order by number of citations
    When I search for 'Cells'
    And I order by the number of citations
    Then I should see the 4 most cited results abouts 'Cells'
