Given(/^an exciting destination called "(.*?)"$/) do |destination|
  Destination.create(:name => destination)
end

When(/^I select "(.*?)"$/) do |label|
  click_on label
end

When(/^I fill in the description of the to do item$/) do
  fill_in "Title",:with => Faker::Lorem.paragraph
  fill_in "Description",:with => Faker::Lorem.paragraph
  click_on "Add Item"
end

Then(/^I should see my new to do item listed as an activity under "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end