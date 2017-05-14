# TestTwitter

This project is functional tests for basic Twitter`s features.
Covered scenarios:

  - Log in account with valid user and password
  - Send a message(tweet) to another user 
  - Share a specific message from a given user

### Setup
 - Install [`Ruby 2.3`][1]
 - Install [Cucumber][2]
 - Install [Capybara][3]
 - Download [Firefox 33][4]

### How to run
Change to project folder and run:
```
cucumber
```
Expected results:
```
Feature: Basic feature

  Scenario: Log in                         # features/sample.feature:3
    Given I am at the login page           # features/steps/sample_steps.rb:3
    And I fill a valid e-mail and password # features/steps/sample_steps.rb:7
    When I select login button             # features/steps/sample_steps.rb:12
    Then I should see the home page        # features/steps/sample_steps.rb:16

  Scenario: Send a message to Greenmile user          # features/sample.feature:9
    Given I am logged on                              # features/steps/sample_steps.rb:21
    When I select message button                      # features/steps/sample_steps.rb:30
    And I write a message                             # features/steps/sample_steps.rb:34
    And select send                                   # features/steps/sample_steps.rb:41
    Then the message should be sent to Greenmile user # features/steps/sample_steps.rb:45

  Scenario: Share a message from Greenmile user     # features/sample.feature:16
    Given I am logged on                            # features/steps/sample_steps.rb:21
    When I choose a message from Greenmile user     # features/steps/sample_steps.rb:50
    And I share it                                  # features/steps/sample_steps.rb:59
    Then the message should be shown in my timeline # features/steps/sample_steps.rb:63

3 scenarios (3 passed)
13 steps (13 passed)
2m27.327s
```

[1]: https://www.ruby-lang.org/pt/downloads/
[2]: https://github.com/cucumber/cucumber-ruby
[3]: https://github.com/teamcapybara/capybara
[4]: https://ftp.mozilla.org/pub/firefox/releases/33.0/