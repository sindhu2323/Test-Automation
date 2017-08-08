Given (/^I am on the Picker Screen$/) do
wait_for(60) {element_exists("button id:picker_1")}

AND /^I set the Picker1 value to (\d+)$/ do |value|
   query("android.widget.NumberPicker id:'picker_1'", setValue:value)
end

AND /^I set the Picker2 value to (\d+)$/ do |value|
   query("android.widget.NumberPicker id:'picker_2'", setValue:value)
end

AND /^I set the Picker1/ do
touch "button text:'Set'"
end

AND /^I Set the Picker2/ do
touch "button text:'Set'"
end

AND /^I see the text "([^\"]*)"$/ do |text|
  macro %Q|I should see "#{text}"|
end

AND /^I wait for (\d+) seconds$/ do |seconds|
  sleep(seconds.to_i)
end
