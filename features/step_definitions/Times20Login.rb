Given(/^I click first on login button$/) do
  text = "Log in"
  tap_when_element_exists("* {text CONTAINS[c] '#{text}'}")
end

Then(/^I switch between environments$/) do
  text = "stage"
  tap_when_element_exists("* {text CONTAINS[c] '#{text}'}")
  text = "ib"
  tap_when_element_exists("* {text CONTAINS[c] '#{text}'}")
end

Given(/^I enter my username "([^"]*)" and my password "([^"]*)"$/) do |username, password|
  id = "username"
  enter_text("android.widget.EditText id:'#{id}'", username)
  hide_soft_keyboard()
  id = "password"
  enter_text("android.widget.EditText id:'#{id}'", password)
  hide_soft_keyboard()
end

And(/^I click on Log in$/) do
  text = "Log in"
  tap_when_element_exists("* {text CONTAINS[c] '#{text}'}")
end

And(/^I tap the "([^"]*)" id\$$/) do |id|
  tap_when_element_exists("* {id CONTAINS[c] '#{id}'}")
end

And(/^I wait for the view with id "([^"]*)" to appear\$$/) do |id|
  wait_for_element_exists("* id:'#{id}'")
end

