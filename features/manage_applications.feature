Feature: Manage Applications
  In order to be informed about dependencies
  As a user
  I want to manage my applications
  
  # Scenario: View list of customers
  #   Given the following customers:
  #     | name      | email           |
  #     | Sun       | sun@example.com |
  #     | Microsoft | ms@example.com  |
  #   When I go to the customers page
  #   Then I should see "Sun"
  #   And I should see "Microsoft"
  # 
  # Scenario: Viewing a single customers
  #   Given the following customers:
  #     | id  | name      | email           |
  #     | 1   | Sun       | sun@example.com |
  #   And I am on the customers page
  #   When I follow "Show" within "#customer_1"
  #   Then I should be on the customer page for "Sun"
  # 
  # Scenario: Adding a customer
  #   Given I am on the new customer page
  #   When I fill in "Name" with "Palm"
  #   And I fill in "Email" with "palm@example.com"
  #   And I press "Create"
  #   Then I should see "Customer was successfully created"
  # 
  # Scenario: Attempt to add an invalid customer
  #   Given I am on the new customer page
  #   When I fill in "Name" with "Palm"
  #   And I press "Create"
  #   Then I should see "can't be blank" within "#customer_email_input"
  # 
  # Scenario: Updating a customer
  #   Given the following customers:
  #     | id  | name      | email           |
  #     | 1   | Sun       | sun@example.com |
  #   And I am on the edit customer page for "Sun"
  #   When I fill in "Name" with "Microsoft"
  #   And I press "Update"
  #   Then I should see "Customer was successfully updated"
  #   And I should see "Microsoft"
  #   And I should not see "Sun"
  # 
  # Scenario: Attempt to update an invalid customer
  #   Given the following customers:
  #     | id  | name      | email           |
  #     | 1   | Sun       | sun@example.com |
  #   And I am on the edit customer page for "Sun"
  #   When I fill in "Name" with ""
  #   And I press "Update"
  #   Then I should see "can't be blank" within "#customer_name_input"
  # 
  # Scenario: Delete a customer
  #   Given the following customers:
  #     | id  | name      | email           |
  #     | 1   | Sun       | sun@example.com |
  #   And I am on the customers page
  #   When I follow "Destroy" within "#customer_1"
  #   Then I should see "Customer was successfully destroyed"
  #   And I should not see "Sun"
