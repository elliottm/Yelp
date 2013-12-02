Feature: Homepage structure

In order to see restuarant reviews
As a user who ventures to resturants a lot
I want to see a list of resturants, reviews and ratings

Background: 
Given I am on the homepage

Scenario:  Should display a list of restaurants
Then I should see "List of Restaurants:" within "[@class='container']"

Scenario: Should display a review beneath the restaurant
Then I should see "Review" within "[@class='review_block']"

Scenario: There should be a user sign in button
Then I should see "User Login"

Scenario: There should be a rating for a resturant
Then I should see "Rating" within "[@class='review_block']"


