When(/^I fill in the add new restaurant form$/) do
  fill_in 'Name', :with => 'McDonalds'
  fill_in 'Description', :with => 'Organic upper end restaurant'
  fill_in 'Email', :with => 'ahoy@gmail.com'
end

Given(/^a restaurant has already been added$/) do
  create(:Restaurant)
end

Then(/^I fill in the edit form$/) do
  fill_in 'Description', :with => 'So delicious'
end