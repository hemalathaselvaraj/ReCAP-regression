Feature: Verify the indexed bib record by comparing the diacritic text
  Scenario: Verify the indexed bib record by comparing the diacritic text
    Given I open the dev url
    When I am taking diacritic text from json response
    Then the diacritic text from json response should be equal to hardcoded value