Feature: Search Google

  Scenario: As a User I can search google for dogs
    Given I can access the Google home page
    And I search for dogs
    Then I receive google search responses for dogs
