Feature:

In order to review and display a restaurant
As a reviewer and viewer
I want to be able to add restaurants

Background:
Given I am on the homepage
And I follow "Add restaurant" within "[@class='nav_header']"
Given no emails have been sent

Scenario:  Getting to the 'add restaurant' form
Then I should see "Add your new Restaurant"

Scenario: Submit new restaurant via form completion
When I fill in the add new restaurant form
And I press "Create Restaurant"
Then I should see "Successfully added"
Then I should see "McDonalds"

Scenario: Email send to owner when they add a restaurant
When I fill in the add new restaurant form
And I press "Create Restaurant"
Then an email should be sent to "ahoy@gmail.com"
And the email should contain "Your restaurant has been added"
