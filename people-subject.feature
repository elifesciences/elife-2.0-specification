Feature: Editors and People subject page
  In order to...
  As a...
  I want...

  Rules:
  - Each MSA has its own Editors and People page
  - Introduction text matches the MSA's page
  - Shows list of current senior editors sorted by surname
  - Shows list of current reviewing editors sorted by surname
  - Clicking on a senior editor shows their biography in a popup

  Scenario: Senior editors for the MSA
    Given there are senior editors for the MSA 'Cell biology':
      | Forename | Surname  |
      | Vivek    | Malhotra |
      | Ivan     | Dikic    |
      | Tony     | Hunter   |
    When I go to the 'Editors and People' page for the MSA 'Cell biology'
    Then I should see in the 'Senior editors' list:
      | Ivan Dikic     |
      | Tony Hunter    |
      | Vivek Malhotra |

  Scenario: Clicking on a senior editors shows their biography in a popup
    Given Vivek Malhotra is a senior editor for the MSA 'Cell biology'
    When I go to the 'Editors and People' page for the MSA 'Cell biology'
    And I click on the senior editor Vivek Malhotra
    Then I should see Vivek Malhotra's biography in a popup

  Scenario: Reviewing editors for the MSA
    Given there are reviewing editors for the MSA 'Cell biology':
      | Forename | Surname         |
      | Johannes | Walter          |
      | J Wade   | Harper          |
      | Mohan    | Balasubramanian |
    When I go to the 'Editors and People' page for the MSA 'Cell biology'
    Then I should in the 'Reviewing editors' list:
      | Mohan Balasubramanian |
      | J Wade Harper         |
      | Johannes Walter       |
