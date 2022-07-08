
Feature: UPGENIX Application Login Functionality
  User Story:
  As a user I should be able to login to the application

  Background: User is on the Upgenix homepage
    Given User is on the Upgenix login page

  Scenario Outline: User logs in with valid credentials as PosManager
    Given User navigates to login page
    When User enters valid email address "<email>" into email input box
    And User enters valid password "<password>" into password input box
    And User clicks the login button
    Then User login to the app successfully and very title "Odoo"

    Examples:
      | email                 | password   |
      | posmanager5@info.com  | posmanager |
      | posmanager15@info.com | posmanager |
      | posmanager24@info.com | posmanager |
      | posmanager33@info.com | posmanager |
      | posmanager38@info.com | posmanager |

  Scenario Outline: User logs in with valid credentials as SalesManager
    Given User navigates to login page
    When User enters valid email address "<email>" into email input box
    And User enters valid password "<password>" into password input box
    And User clicks the login button
    Then User login to the app successfully and very title "Odoo"

    Examples:
      | email                   | password     |
      | salesmanager6@info.com  | salesmanager |
      | salesmanager14@info.com | salesmanager |
      | salesmanager25@info.com | salesmanager |
      | salesmanager30@info.com | salesmanager |
      | salesmanager40@info.com | salesmanager |


  Scenario Outline: User logs in with invalid credentials (valid username - invalid password) as PosManager
    Given User navigates to login page
    When User enters valid email address "<email>" into email input box
    And User enters invalid password "<password>" into password input box
    And User clicks the login button
    Then User sees Wrong login-password message above the Log in button

    Examples:
      | email                 | password     |
      | posmanager5@info.com  | posmanager1  |
      | posmanager15@info.com | posmanagerr  |
      | posmanager24@info.com | posmanagerx  |
      | posmanager33@info.com | posmanagery  |
      | posmanager38@info.com | posmanagerz? |

  Scenario Outline: User logs in with invalid credentials (valid username - invalid password) as SalesManager
    Given User navigates to login page
    When User enters valid email address "<email>" into email input box
    And User enters invalid password "<password>" into password input box
    And User clicks the login button
    Then User sees Wrong login-password message above the Log in button


    Examples:
      | email                   | password       |
      | salesmanager5@info.com  | salesmanager   |
      | salesmanager14@info.com | salesmanagerr  |
      | salesmanager25@info.com | salesmanagerx  |
      | salesmanager30@info.com | salesmanagery  |
      | salesmanager33@info.com | salesmanagerz? |

  Scenario Outline: User logs in with invalid credentials (invalid username - valid password) as PosManager
    Given User navigates to login page
    When User enters invalid email address "<email>" into email input box
    And User enters valid password "<password>" into password input box
    And User clicks the login button
    Then User sees Wrong login-password message above the Log in button

    Examples:
      | email                 | password     |
      | posmanager5@info.com  | posmanager1  |
      | posmanager15@info.com | posmanagerr  |
      | posmanager24@info.com | posmanagerx  |
      | posmanager33@info.com | posmanagery  |
      | posmanager38@info.com | posmanagerz? |

  Scenario Outline: User logs in with invalid credentials (invalid username - valid password) as SalesManager
    Given User navigates to login page
    When User enters invalid email address "<email>" into email input box
    And User enters valid password "<password>" into password input box
    And User clicks the login button
    Then User sees Wrong login-password message above the Log in button

    Examples:
      | email                   | password       |
      | salesmanager5@info.com  | salesmanager   |
      | salesmanager14@info.com | salesmanagerr  |
      | salesmanager25@info.com | salesmanagerx  |
      | salesmanager30@info.com | salesmanagery  |
      | salesmanager33@info.com | salesmanagerz? |

    Scenario: "Please fill out this field" message should be displayed if the password or username is empty
      Given User clicks the login button
      Then Please fill out this field message should be displayed

      Scenario: User land on the ‘reset password’ page after clicking on the "Reset password" link
        Given User clicks on the Reset Password link
        Then User navigates to Reset Password page

        Scenario: User should see the password in bullet signs by default
          When User enters valid password "<password>" into password input box
          Then User sees the password in bullet signs

          Scenario: User verifies if the ‘Enter’ key of the keyboard is working correctly on the login page.
            When User enters valid email "salesmanager14@info.com" - password "salesmanager" and hits enter
            Then User login to the app and very title "Odoo"
