Feature: Basic feature

Scenario: Log in
	Given I am at the login page
	And I fill a valid e-mail and password
	When I select login button
	Then I should see the home page

Scenario: Send a message to Greenmile user
  Given I am logged on
  When I select message button
  And I write a message
  And select send
  Then the message should be sent to Greenmile user