Feature: Search from page header
  In order to...
  As a...
  I want...

  Rules:
  - If the current page has an MSA, the first MSA appears as a limiting option when searching on that page
  - Keywords, MSAs and author names appear as autocomplete options
  - Autocomplete options are ordered alphabetically.
  - Choosing an autocomplete option will restrict the search to that type

  Background:
    Given I am reading an article:
      | Authors  | Xiao-Dong Li, Zhijian J Chen |
      | MSAs     | Cell biology, Immunology     |
      | Keywords | bacteria                     |

  Scenario: Page has MSAs
    When I click search
    Then I should see the option to limit the search to 'Cell biology'

  Scenario: Autocomplete contains keywords
    When I click search
    And I start to search for 'ba'
    Then I should see an autocomplete option for the keyword 'bacteria'

  Scenario: Autocomplete contains MSAs
    When I click search
    And I start to search for 'un'
    Then I should see an autocomplete option for the MSA 'Immunology'

  Scenario: Autocomplete contains author names
    When I click search
    And I start to search for 'zh'
    Then I should see an autocomplete option for the author 'Zhijian J Chen'

  Scenario: Autocomplete options search for that option
    When I click search
    And I start to search for 'zh'
    And I click the autocomplete option for 'Zhijian J Chen'
    Then I should see the search results for articles authored by Zhijian J Chen
