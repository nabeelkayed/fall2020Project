Feature: Checkout

Scenario: checkout a banana
Given the price of a "banana" is 40
When I checkout 1 "banana"
Then the total price should be 40

Scenario: Two banans scanned separately
Given the price of a "banana" is 40
When I checkout 1 "banana"
And I checkout 1 "banana"
Then the total price should be 80

Scenario: A banana and Apple
Given the price of a "banana" is 40
And the price of a "apple" is 25
When I checkout 1 "banana"
And I checkout 1 "apple"
Then the total price should be 65

Scenario: A banana and Apple and Orange
Given the price of a "banana" is 40
And the price of a "apple" is 25
And the price of a "Orange" is 25
When I checkout 1 "banana"
And I checkout 1 "apple"
And I checkout 1 "Orange"
Then the total price should be 90

Scenario: two banana and Apple and Orange 
Given the price of a "banana" is 40
And the price of a "banana" is 40
And the price of a "apple" is 25
And the price of a "Orange" is 25
When I checkout 1 "banana"
And I checkout 1 "banana"
And I checkout 1 "apple"
And I checkout 1 "Orange"
Then the total price should be 130

Scenario: two banana and Apple and Orange and two melon 
Given the price of a "banana" is 40
And the price of a "banana" is 40
And the price of a "melon" is 20
And the price of a "apple" is 25
And the price of a "Orange" is 25
When I checkout 1 "banana"
And I checkout 1 "banana"
And I checkout 1 "apple"
And I checkout 1 "Orange"
And I checkout 2 "melon"
Then the total price should be 170