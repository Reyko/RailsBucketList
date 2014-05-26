Given(/^an exciting destination called "(.*?)"$/) do |destination|
  Destination.create(:name => destination)
end

When(/^I select "(.*?)"$/) do |label|
  click_on label
end

When(/^I fill in the title of the to do item$/) do

  fill_in "Title",:with => Faker::Lorem.paragraph
  fill_in "Location", :with => Faker::Address.city


end

When(/^I submit the form by pressing "(.*?)"$/) do |button|
    click_on button
end



Then(/^I should see my new to do item listed as an activity under "(.*?)"$/) do |destination|
  expect(page.has_content?("Go to the pub")).to be true
end