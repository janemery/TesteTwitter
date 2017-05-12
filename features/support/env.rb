require 'capybara/cucumber'
require 'byebug'
require 'selenium-webdriver'
require 'rspec/expectations'
# require 'capybara-webkit'

Capybara.run_server = false
Capybara.default_driver = :selenium
Capybara.app_host = "https://twitter.com"

World(Capybara::DSL)
