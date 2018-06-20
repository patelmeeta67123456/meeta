Given(/^I land on the home screen and verify Home tab is displayed$/) do
  text("Home")
  # sleep 3
end

When(/^I click on "([^"]*)" in Horizontal Scroll View$/) do |tab_name|
  text(tab_name).click
end

Then(/^I verify card title text is equal "([^"]*)"$/) do |arg|
  expect(find_element(id: "main_menu_card_default_fragment_card_view_title").text).to eq(arg)
end

When(/^I click on Welcome to United section$/) do
  find_element(id: "main_menu_mp_title" ).click
end

Then(/^I tap Sign in button$/) do
  find_element(id: "main_menu_mp_signin_button").click
end

Then(/^error message "([^"]*)" should be displayed$/) do |text|
 expect(find_element(id: "message").text).to eq(text)
end

When(/^I click on Entertainment section$/) do
  find_element(id: "main_menu_entertainment").click
end



Then(/^"([^"]*)" should be displayed on Entertainment page$/) do |text|

 expect(find_element(id: "inflight_header").text).to eq(text)
end