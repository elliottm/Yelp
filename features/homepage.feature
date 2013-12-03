Feature: Homepage structure

In order to see restuarant reviews
As a user who ventures to resturants a lot
I want to see a list of resturants, reviews and ratings

Background: 
Given I am on the homepage
And a restaurant has already been added

Scenario:  Should display a list of restaurants
Then I should see "List of Restaurants:" within "[@class='container']"

Scenario: Should display a review
And I follow "Details"
Then I should see "restaurant review"

Scenario: There should be a user sign in button
Then I should see "User Login"


