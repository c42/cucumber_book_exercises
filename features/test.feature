Feature: This is the feature title
  This is the description of the feature, which can
  span multiple lines.
  You can even include empty lines, like this one:

  In fact, everything until the next Gherkin keyword is included
  in the description.

  Background:
    Given I have $100 in my account

  Scenario: Attempt withdrawal using stolen card
    Given my card is invalid
    When I request $50
    Then my card should not be returned
    And I should be told to contact the bank

  Scenario: Attempt withdrawal using valid card
    * my card is valid
    * I request $50
    * $50 should be given out to me
    * I should get a receipt showing account balance of $50

  Scenario Outline: Attempting withdrawal of more money
    Given my card is valid
    And I request <requested_amount>
    Then <requested_amount> should be given out to me
    And I should get a receipt showing account balance of <balance_amount>

  Examples:
    | requested_amount | balance_amount |
    | 100              | 0              |
    | 200              | -100           |
