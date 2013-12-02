Feature:

In order to delete a restaurant listing
As a user
I want to be able to delete the listing from the DB

Background: 
Given a restaurant has already been added
When I go to the homepage
Then I should see "KFC"

Scenario: Delete restaurant
Given I am on the homepage
And I follow "Details"
And I follow "Delete"
Then I should not see "KFC"