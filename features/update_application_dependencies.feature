Feature: Update application dependencies
  In order to keep the list of application dependencies up to date
  As a user
  I want to push to gemstream
  
  Scenario: Receive push dependencies
    Given I am logged in
    And I have an application "Fresh" on gemstream
    And it does not have any dependencies listed on gemstream yet
    And it has the following dependencies listed in my source code:
      | name  | version |
      | rails | 2.3.4   |
      | aasm  | 1.1.9   |
    When I push dependencies for "Fresh"
    And I go to the application details page for "Fresh"
    Then I should see "2 dependencies"
    
  # Scenario: Removing library