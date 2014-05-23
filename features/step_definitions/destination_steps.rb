Given(/^I am on the destinations index page$/) do
  visit destinations_path
end

When(/^I add a new destination "(.*?)"$/) do |country|
  @country = country
  click_link "Add Destination"
end

When(/^complete the form with valid information$/) do 
  # @country = Faker::Address.country
  fill_in "Name", :with => @country
  fill_in "Image Url", :with => "http://placepuppy.it/300/300"
end

When(/^I submit the form$/) do
  click_on "Create Destination"
end

Then(/^I should see my new destination$/) do 
  expect(page.has_content?(@country)).to be true
  expect(page.has_css?('img.destination-image[src="http://placepuppy.it/300/300"]')).to be true
end