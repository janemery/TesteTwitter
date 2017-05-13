#encoding: utf-8

Given(/^I am at the login page$/) do
  visit('/')
end

Given(/^I fill a valid e\-mail and password$/) do
  fill_in id: 'signin-email', with: 'JanymeryTeste'
  fill_in id: 'signin-password', with: 'TestedoTwitter'
end

When(/^I select login button$/) do
  click_button('Log in')
end

Then(/^I should see the home page$/) do
  expect(page).to have_content('Teste do Twit')
  expect(page).to have_content('@JanymeryTeste')
end
