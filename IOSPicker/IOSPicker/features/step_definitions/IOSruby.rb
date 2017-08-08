Given (/^I am on the Picker Screen$/) do
wait_for(60) {element_exists("button id:picker_1")}

AND /^I (?:press|touch) list item number (\d+)$/ do |index|
   index = index.to_i
   screenshot_and_raise "Index should be positive (was: #{index})" if (index<=0)
   touch("tableViewCell index:#{index-1}")
   sleep(STEP_PAUSE)
end


AND /^I (?:press|touch) the "([^\"]*)" button$/ do |name|
  touch("button marked:'#{name}'")
  sleep(STEP_PAUSE)
end


AND /^I see the text "([^\"]*)"$/ do |text|
  macro %Q|I should see "#{text}"|
end

AND /^I wait for ([\d\.]+) second(?:s)?$/ do |num_seconds|
  num_seconds = num_seconds.to_f
  sleep num_seconds
end