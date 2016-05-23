@Tab_Scrolling_and_verifying_elements
Feature: After Login the user clicks on all tabs from header

  Scenario: After Login the user scrolls between tabs
    Given click first on login button
    Then switch between environments
    Then enter my username "tt6" and my password "wwww2222"
    And click on Log in
    And tap the "spriteLayout1" id$
    And wait for the view with id "total_net_value_title" to appear$
    Then I wait for 5 seconds
  Scenario: The user switches between tabs
    Given the user clicks on "spriteLayout1" id$
    Then the user clicks on Cfd tab
    And make sure id "lblStockSymbol" exist$
    And I switch exchange to UK$
    And I wait for 5 seconds
    And I wait for element "lblStockLastPrice"$
    And I wait for 5 seconds
    Then I switch exchange to EU$
    And I wait for 5 seconds

  





