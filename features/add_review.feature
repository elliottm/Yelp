Feature:

In order to add a review to a restaurant from the index
As a user who uses the website
I want to be able to add a review

Background:
Given a restaurant has already been added
When I go to the homepage
Then I should see "KFC"

Scenario: Add review
Given I am on the homepage
And I follow "Details"
And I follow "Add Review"
And I fill in "Description" with "Lovely"
And I press "Create Review"
Then I should see "1 review"
Then I should see "Lovely"
