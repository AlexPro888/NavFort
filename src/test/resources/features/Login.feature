@NAV10-381
Feature: Login

  Background: For the scenarios in the feature file, use is expected to be on login page
    Given The user is on the login page

@NAV10-240
  Scenario: Login as a driver
    When The user logs in as a driver
    Then The user is on the Quick Launchpad page
@NAV10-241
Scenario: Login as a sales manager
    When The user logs in as a sales manager
    Then The user is on the Dashboard page
@NAV10-242
  Scenario: Login as a store manager
    When The user logs in as a store manager
    Then The user is on the Dashboard page
@NAV10-247
  Scenario: Login with invalid username and valid password
    When The user enters an invalid username and valid password
    Then The user gets "Invalid username or password" message
@NAV10-249
  Scenario: Login with valid username and invalid password
    When The user enters a valid username and invalid password
    Then The user gets "Invalid username or password" message

  @NAV10-254
  Scenario: Login with invalid username and invalid password
    When The user enters an invalid username and invalid password
    Then The user gets "Invalid username or password" message

  @NAV10-250
  Scenario: If username or/and password is empty then "Please fill out this field." message is displayed
    When The username is empty
    Then The user gets "Please fill out this field" message in the username field


  Scenario: If username or/and password is empty then "Please fill out this field." message is displayed
    When The password field is empty
    Then The user gets "Please fill out this field" message in the password field

  @NAV10-253
  Scenario: If username or/and password is empty then "Please fill out this field." message is displayed
    When both the username and password are empty
    Then The user gets "Please fill out this field" message in the username field
  @NAV10-279
    Scenario: The user can see his own "username" (what he types in the username field) in the profile menu, after login
      When The user logs in as a driver
      Then The user can see user1 in the profile menu, after login
  @NAV10-280
  Scenario: The user can see his own "username" (what he types in the username field) in the profile menu, after login
    When The user logs in as a store manager
    Then The user can see storemanager51 in the profile menu, after login
  @NAV10-281
  Scenario: The user can see his own "username" (what he types in the username field) in the profile menu, after login
    When The user logs in as a sales manager
    Then The user can see salesmanager101 in the profile menu, after login