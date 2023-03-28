@NAV10-213
Feature: Logout
  @NAV10-433
  Scenario: The user can log out from the dashboard
    Given The user is on the dashboard page
    When The user clicks on his username
    And The user clicks on Logout button
    Then The user is on the login page

    @NAV10-435
    Scenario: The user can not navigate back to the home page after logging out
      Given The user is on the dashboard page
      When The user clicks on his username
      And The user clicks on Logout button
      And The user is on the login page
      Then The user can not go to the home page again by clicking the step back button
