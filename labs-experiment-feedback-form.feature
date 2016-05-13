Feature: Labs experiment feedback form
  In order to...
  As a...
  I want...

  Rules:
  - When the form is filled in, the user is sent a thank you email
  - If the experiment has an email address attached, that email address is sent the completed form and copied to labs@elifesciences.org
  - Otherwise the completed form is sent to labs@elifesciences.org

  Scenario: User is thanked for completing the form
    Given I am on a Labs experiment page
    When I complete the feedback form
    Then I should see a 'thank you' message
    And I should be sent a 'thank you' email

  Scenario: Completed form is sent to eLife
    Given I am on a Labs experiment page
    When I complete the feedback form
    Then the completed form should be sent to labs@elifesciences.org

  Scenario: Completed form is copied to eLife
    Given there is a Labs experiment with the feedback email address 'info@manuscriptsapp.com'
    When I go to the Labs experiment page
    And I complete the feedback form
    Then the completed form should be sent to info@manuscriptsapp.com and copied to labs@elifesciences.org
