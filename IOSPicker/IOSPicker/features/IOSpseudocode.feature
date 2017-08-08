Feature: Calabash problem
		 
Scenario: Calabash problem for IOS Apps
		  
		  
Given I am on the Picker Screen
AND I touch list item number 20
AND I touch the "set" button
AND I touch list item number .3
AND I touch the "set" button
AND I wait for 2 seconds
AND I see the text "20.3"