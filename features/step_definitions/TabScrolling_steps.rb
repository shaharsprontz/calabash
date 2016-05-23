
Given(/^click first on login button$/) do
  text = "Log in"
  tap_when_element_exists("* {text CONTAINS[c] '#{text}'}")
end

Then(/^switch between environments$/) do
  text = "stage"
  tap_when_element_exists("* {text CONTAINS[c] '#{text}'}")
  text = "ib"
  tap_when_element_exists("* {text CONTAINS[c] '#{text}'}")
end

Then(/^enter my username "([^"]*)" and my password "([^"]*)"$/) do |username, password|
  id = "username"
  enter_text("android.widget.EditText id:'#{id}'", username)
  hide_soft_keyboard()
  id = "password"
  enter_text("android.widget.EditText id:'#{id}'", password)
  hide_soft_keyboard()
end

And(/^click on Log in$/) do
  text = "Log in"
  tap_when_element_exists("* {text CONTAINS[c] '#{text}'}")
end

And(/^tap the "([^"]*)" id\$$/) do |id|
  tap_when_element_exists("* {id CONTAINS[c] '#{id}'}")
end

And(/^wait for the view with id "([^"]*)" to appear\$$/) do |id|
  wait_for_element_exists("* id:'#{id}'")
end

Given(/^the user clicks on "([^"]*)" id\$$/) do |id|
  tap_when_element_exists("* {id CONTAINS[c] '#{id}'}")
end


#CFD tab and exchanges filter

Given(/^the user clicks on Cfd tab$/) do
  text = "CFDs"
  tap_when_element_exists("* {text CONTAINS[c] '#{text}'}")
end

And(/^make sure id "([^"]*)" exist\$$/) do |id|
  wait_for_element_exists("* id:'#{id}'")
end

And(/^I switch exchange to UK\$$/) do
  text = "US"
  tap_when_element_exists("* {text CONTAINS[c] '#{text}'}")
  text = "UK"
  tap_when_element_exists("* {text CONTAINS[c] '#{text}'}")
  text = "Done"
  tap_when_element_exists("* {text CONTAINS[c] '#{text}'}")
end

And(/^I wait for element "([^"]*)"\$$/) do |id|
  wait_for_element_exists("* id:'#{id}'")
end

Then(/^I switch exchange to EU\$$/) do
  text = "UK"
  tap_when_element_exists("* {text CONTAINS[c] '#{text}'}")
  text = "EU"
  tap_when_element_exists("* {text CONTAINS[c] '#{text}'}")
  text = "Done"
  tap_when_element_exists("* {text CONTAINS[c] '#{text}'}")
end