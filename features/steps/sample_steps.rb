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

Given(/^I am logged on$/) do
  visit('/')
  fill_in id: 'signin-email', with: 'JanymeryTeste'
  fill_in id: 'signin-password', with: 'TestedoTwitter'
  click_button('Log in')
  expect(page).to have_content('Teste do Twit')
  expect(page).to have_content('@JanymeryTeste')
end

When(/^I select message button$/) do
  click_button('global-new-tweet-button')
end

When(/^I write a message$/) do
  timestamp = Time.new.to_i
  @my_tweet_message = "This is my tweet message number #{timestamp}"
  find('#tweet-box-global').set(@my_tweet_message)
end

When(/^select send$/) do
  find('#global-tweet-dialog-dialog > div.modal-content > div.modal-tweet-form-container > form > div.TweetBoxToolbar > div.TweetBoxToolbar-tweetButton.tweet-button > button').click
end

Then(/^the message should be sent to Greenmile user$/) do
  save_page
  expect(page).to have_content(@my_tweet_message)
end