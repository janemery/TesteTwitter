#encoding: utf-8

Given(/^I am at the login page$/) do
  visit('/')
end

Given(/^I fill a valid e\-mail and password$/) do
  fill_in id: 'signin-email', with: 'testtwitter94@gmail.com'
  fill_in id: 'signin-password', with: 'TestedoTwitter'
end

When(/^I select login button$/) do
  click_button('Log in')
end

Then(/^I should see the home page$/) do
  expect(page).to have_content('Teste do Twit')
  expect(page).to have_content('@TesttwitTwiter')
end

Given(/^I am logged on$/) do
  visit('/')
  fill_in id: 'signin-email', with: 'testtwitter94@gmail.com'
  fill_in id: 'signin-password', with: 'TestedoTwitter'
  click_button('Log in')
  expect(page).to have_content('Teste do Twit')
  expect(page).to have_content('@TesttwitTwiter')
end

When(/^I select message button$/) do
  click_button('global-new-tweet-button')
end

When(/^I write a message$/) do
  timestamp = Time.new.to_i
  @my_tweet_message = "This is my tweet message to @GreenMileTests #{timestamp}"
  find('#tweet-box-global').set(@my_tweet_message)
end

When(/^select send$/) do
  find('#global-tweet-dialog-dialog > div.modal-content > div.modal-tweet-form-container > form > div.TweetBoxToolbar > div.TweetBoxToolbar-tweetButton.tweet-button > button').click
end

Then(/^the message should be sent to Greenmile user$/) do
  save_page
  expect(page).to have_content(@my_tweet_message)
end

When(/^I choose a message from Greenmile user$/) do
  visit '/GreenMileTests'
  page.execute_script "window.scrollBy(0, $(window).height()/2)"
  tweet = find('.tweet', text: 'GreenMile rocks! #automatedtests')
  tweet.all('button')[2].click
end

When(/^I share it$/) do
  find('#retweet-tweet-dialog > #retweet-tweet-dialog-dialog > .modal-content form .tweet-button').click
end

Then(/^the message should be shown in my timeline$/) do
  sleep 2
  visit '/TesttwitTwiter/'
  save_page
  expect(page).to have_content(@tweet)
end