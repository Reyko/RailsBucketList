Feature: To Do Items

  Background:
    Given an exciting destination called "Wales"


    @wip 
    Scenario: Add a to do item
      Given I am on the destinations index page
      When I select "Add To Do Item"
       And I fill in the description of the to do item
       And I submit the form
      Then I should see my new to do item listed as an activity under "Wales"