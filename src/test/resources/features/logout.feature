
Feature: UPGENIX Application Logout Functionality
  User Story:
  As a user, I should be able to log out.

  Background: User logged in.
    When User navigates to Login Page
    And User enters valid email
    And User enters valid password
    Then User clicks the login button


    Scenario: User logs out and ends up in login page.
      When User clicks the username
      And User clicks logout option from the dropdown menu


      @wip
      Scenario: The user can not go to the home page again by clicking the step back button after successfully logged out.
        When User clicks the username
        And User clicks logout option from the dropdown menu
        And User clicks on the Step Back button
        Then User sees session expired message

