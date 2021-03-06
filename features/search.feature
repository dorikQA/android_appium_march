Feature: Wikipedia search
  @search
  Scenario: As Wikipedia user, I would like to perform search
    Given I land on Today's featured article screen
    When I press on Search textfield
    Then I type "Metallica" into search field
    Then I see that 1st search result include "Metallica"
    When I press on 1st search result on search result screen
    And I verify that article contains "Metallica"

  Scenario Outline: As Wikipedia user, I would like to perform search
    Given I land on Today's featured article screen
    When I press on Search textfield
    Then I type "<search_term>" into search field
    Then I see that 1st search result include "<search_term>"
    When I press on 1st search result on search result screen
    And I verify that article contains "<search_term>"

    Examples:
    | search_term |
    | Metallica   |
    | Bay Area    |
