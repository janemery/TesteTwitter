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

Scenario: Share a message from Greenmile user
  Given I am logged on
  When I choose a message from Greenmile user
  And I share it
  Then the message should be shown in my timeline