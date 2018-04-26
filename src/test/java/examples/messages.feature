Feature: Demo Karate

Scenario: verify messenger is working


Given url 'http://localhost:8080/messenger/webapi/messages/1'
When method get
Then status 200
And match $ contains { id: '#notnull', author: "Bindhu"}


Scenario: create a user and then get it by id

* def user =
"""
{
  "author": "Bin",
  "created": "2018-04-03T09:04:50.022",
  "message": "Hello there"
  }
}
"""
Given url 'http://localhost:8080/messenger/webapi/messages'
And request user
When method post
Then status 201

