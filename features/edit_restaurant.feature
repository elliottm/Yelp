Feature:

In order to edit a restaurant name and description
As a user
I want to be able to edit the entry

Background:
Given a restaurant has already been added
When I go to the homepage
Then I should see "KFC"

Scenario: Edit restaurant
And I follow "Details"
And I follow "Edit"
And I fill in the edit form
And I press "Update Restaurant"
Then I should see "So delicious"
