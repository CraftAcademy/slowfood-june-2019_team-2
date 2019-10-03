Feature: Visitor can see products sorted in different categories
  As a visitor,
  In order to choose product more easily
  I would like to see the products sorted in categories

  Background: 
    Given the following products exist
      |title      |content    | price | category |
      |Lasagna    |It is good | 100   | Main     |
      |Apple pie  |It is tasty| 200   | Dessert  |
      |Salad      |It is green| 300   | Starter  |

    And I'm on the landing page

  Scenario: Successfully
    Then I should see "Lasagna" in the "Main" section
    And I should see "Apple pie" in the "Dessert" section
    And I should see "Salad" in the "Starter" section