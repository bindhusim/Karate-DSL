
Feature: Profile


Scenario: Verify profile 

Given url 'http://localhost:8080/messenger/webapi/profiles'
When method get
Then status 200
And match $[*].profileName contains "Bindhu"