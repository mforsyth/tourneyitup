Feature: Event list
  As a gamer
  So that I can play the games I love
  I want to see a list of upcoming tournaments

  Scenario:  Gamer sees upcoming event list for all games
    Given the following tournaments:
    | Game                 | Occurs            | Address                            |
    | Warhammer Fantasy    | Yesterday         | 60 Sowams Rd, Barrington, RI       |
    | Warhammer 40k        | Tomorrow          | 4 Main St, Warren, RI              |
    | Magic: the Gathering | A week from today | 164 Rochambeau Ave, Providence, RI |

    When I look at the upcoming event list
    Then I should see the following events
    | Game                 | Occurs            | Address                            |
    | Warhammer 40k        | Tomorrow          | 4 Main St, Warren, RI              |
    | Magic: the Gathering | A week from today | 164 Rochambeau Ave, Providence, RI |
