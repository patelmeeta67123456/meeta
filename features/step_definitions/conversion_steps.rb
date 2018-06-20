When(/^I swipe screen to the "([^"]*)" direction$/) do |direction|
 if direction == "right"
   swipe(:start_x =>0.01, :start_y => 0.5, :end_x =>0.99, :end_y => 0.5 , :duration =>900).perform
 elsif direction == "left"
   # Appium::TouchAction.new.swipe(start_x: 0.99, start_y: 0.5, offset_x: 0.01,  offset_y: 0.5, duration:800).perform
   swipe(:start_x =>0.99, :start_y => 0.5, :end_x =>0.01, :end_y => 0.5 , :duration =>900).perform
 end
end

And(/^I look for menu item "([^"]*)", swipe to find if it necessary and then tap$/) do |text|
  swipe(:start_x =>0.5, :start_y => 0.99, :offset_x =>0.5, :offset_y => 0.2 , :duration =>900).perform
  sleep 2
  menu_items=text(text)
  menu_items.click
end

Then(/^I enter "([^"]*)" as amount I want to exchenge$/) do |amount|
  amount_field = find_element(id: "editAmount")
  amount_field.click
  amount_field.send_keys amount
end



Then(/^I click currency to exchange from$/) do
  find_element(id: "fromCurrencyItems").click
end