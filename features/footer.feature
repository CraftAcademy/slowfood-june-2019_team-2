@javascript
Feature: Restaurant Information
  As a visitor,
  In order to contact the restaurant
  I would like to be able to see the contact Information

  Scenario: Viewing restaurant contact information on the application's landing page
      Given I am on the landing page
      Then I should see "Phone"
      And I should see "Serving Bowls of Happiness"