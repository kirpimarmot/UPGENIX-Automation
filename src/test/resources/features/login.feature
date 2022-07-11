
Feature: UPGENIX Application Login Functionality
  User Story:
  As a user I should be able to login to the application

  Background: User is on the Upgenix homepage
    Given User is on the Upgenix login page

  @UPGNX-385
  Scenario Outline: User logs in with valid credentials as PosManager
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

  @UPGNX-396
  Scenario Outline: User logs in with valid credentials as SalesManager
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

  @UPGNX-403
  Scenario Outline: User logs in with invalid credentials (valid username - invalid password) as PosManager
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

  @UPGNX-409
  Scenario Outline: User logs in with invalid credentials (valid username - invalid password) as SalesManager
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

  @UPGNX-412
  Scenario Outline: User logs in with invalid credentials (invalid username - valid password) as PosManager
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

  @UPGNX-416
  Scenario Outline: User logs in with invalid credentials (invalid username - valid password) as SalesManager
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

  @UPGNX-418
    Scenario: "Please fill out this field" message should be displayed if the password or username is empty
      Given User clicks the login button
      Then Please fill out this field message should be displayed


      @UPGNX-420
      Scenario: User land on the ‘reset password’ page after clicking on the "Reset password" link
        Given User clicks on the Reset Password link
        Then User navigates to Reset Password page

        @UPGNX-422
        Scenario: User should see the password in bullet signs by default
          When User enters valid password "<password>" into password input box
          Then User sees the password in bullet signs

          @UPGNX-424
          Scenario: User verifies if the ‘Enter’ key of the keyboard is working correctly on the login page.
            When User enters valid email "salesmanager14@info.com" - password "salesmanager" and hits enter
            Then User login to the app successfully and very title "Odoo"
