@Login
Feature: The user logs in to his account and reviews his account status


  Background: as a user, I want to be able to log in to my account using my username and password
    Given I click first on login button
    Then I switch between environments

  Scenario: The user enter its' username and password and logs in to his account
    Given I enter my username "tt6" and my password "wwww2222"
    And I click on Log in
    And I tap the "spriteLayout1" id$
    And I wait for the view with id "total_net_value_title" to appear$
    Then I wait for 5 seconds





