Feature: Basic feature

Scenario: Log in
	Given I am at the login page
	And I fill a valid e-mail and password
	When I select login button
	Then I should see the home page