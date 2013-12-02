Feature:

In order to see the restaurants add
As a user
I want to see a list on the homepage

Background:
Given I am on the homepage
And I follow "Add restaurant" within "[@class='nav_header']"
When I fill in the add new restaurant form
And I press "Create Restaurant"

Scenario: Listing restaurants on homepage
When I go to the homepage
Then I should see "McDonalds" within "[@class='container']"