@wip
Feature: UPGENIX Application Logout Functionality
  User Story:
  As a user, I should be able to log out.

  Background: User logged in.
    Given User navigates to Login Page


    Scenario: User logs out and ends up in login page.
      When User clicks the username
      And User clicks logout option from the dropdown menu
      Then User navigates to Login Page

      Scenario: The user can not go to the home page again by clicking the step back button after successfully logged out.
        When User clicks the username
        And User clicks logout option from the dropdown menu
        Then User navigates to Login Page
        And User clicks on the Step Back button
        Then User sees session expired message

