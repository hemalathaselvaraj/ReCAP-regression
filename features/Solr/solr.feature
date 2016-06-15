Feature: Verify the indexed bib record by comparing the title
  Scenario: Verify the indexed bib record by comparing the title
    Given I open the dev url
    When I am taking title from json response
    Then the title from json response should be equal to hardcoded value
