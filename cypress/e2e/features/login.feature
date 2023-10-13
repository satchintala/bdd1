Feature: SBX Login Page

    Scenario: Admin User Successful Login
        Given user is on SBX sign-in page
        When user logged in with '<userName>' and '<password>'
        Then user login successful '<message>'

        Examples:
            | userName                | password | message                 |
            | satheesh@streetbees.com | asdfgh   | Signed in successfully. |


    Scenario: Admin User Login Failure
        Given user is on SBX sign-in page
        When user logged in with '<userName>' and '<password>'
        Then user login failure '<message>'

        Examples:
            | userName                | password | message                    |
            | satheesh@steetbees.com  | asdfgh   | Invalid Email or password. |
            | satheesh@streetbees.com | asdfghj  | Invalid Email or password. |



