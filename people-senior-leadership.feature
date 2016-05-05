Feature: Editors and People senior leadership page
  In order to...
  As a...
  I want...

  Rules:
  - Editor-in-Chief appears in their own section first
  - Deputy Editors appear ordered by surname second
  - Senior Editors appear ordered by surname third
  - Clicking on any person shows their biography in a popup.

  Scenario: Editor-in-Chief appears first
    Given Randy Schekman is the Editor-in-Chief
    When I go to the 'Editors and People' page for the senior leadership
    Then I should see Randy Schekman in the 'Editor-in-Chief' list

  Scenario: Deputy editors appears second
    Given there are deputy editors:
      | Forename | Surname |
      | Detlef   | Weigel  |
      | Eve      | Marder  |
      | Fiona    | Watt    |
    When I go to the 'Editors and People' page for the senior leadership
    Then I should see in the 'Deputy editors' list:
      | Eve Marder    |
      | Fiona Watt    |
      | Detlef Weigel |

  Scenario: Senior editors appear third
    Given there are senior editors:
      | Forename | Surname   |
      | Richard  | Losick    |
      | Ivan     | Dikic     |
      | David    | Van Essen |
    When I go to the 'Editors and People' page for the senior leadership
    Then I should see in the 'Senior editors' list:
      | Ivan Dikic      |
      | Richard Losick  |
      | David Van Essen |

  Scenario: Clicking on a person shows their biography in a popup
    Given Randy Schekman is the Editor-in-Chief
    When I go to the 'Editors and People' page for the senior leadership
    And I click on the editor-in-chief Randy Schekman
    Then I should see Randy Schekman's biography in a popup
