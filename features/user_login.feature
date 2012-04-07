Feature: user login
  In order to login
  As a user
  I want to enter username and password

  Scenario Outline: user login
    Given I see form for login
    When I enter a "<username>" with password "<password>"
    Then I should <action>

    Scenarios: correct username and correct password
      | username | password | action            |
      | djekoff  | q123     | see a buttlefield |

    Scenarios: correct username, but incorrect password
      | username | password | action                           |
      | djekoff  | 0000     | see message "Incorrect password" |

    Scenarios: incorrect username
      | username | password | action                              |
      | offdjek  | 0000     | see message "User isn't registered" |