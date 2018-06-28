Feature: sample karate test script

Background:
* url 'https://jsonplaceholder.typicode.com'

Scenario: get all users and then get the second user by id

Given path 'users'
When method get
Then status 200

* def second = response[1]
#* def addressDef =
#  """
#  {
#
#street: "Victor Plains",
#suite: "Suite 879",
#city: "Wisokyburgh",
#zipcode: "90566-7771",
#
#  }
#  """

Given path 'users', second.id
When method get
Then status 200
  # Match that the response has id which is numeric and entry for Ervin is present in the response.
And match response contains {id: '#number', name:'Ervin Howell'  }

Scenario: create a user and then get it by id

* def newUser =
"""
{

    "name": "Test Graham",
    "username": "Bret",
    "email": "Sincere@april.biz",
    "address": {
      "street": "Kulas Light",
      "suite": "Apt. 556",
      "city": "Gwenborough",
      "zipcode": "92998-3874",
      "geo": {
        "lat": "-37.3159",
        "lng": "81.1496"
      }
    },
    "phone": "1-770-736-8031 x56442",
    "website": "hildegard.org",
    "company": {
      "name": "Romaguera-Crona",
      "catchPhrase": "Multi-layered client-server neural-net",
      "bs": "harness real-time e-markets"
    }
  }
"""

Given path 'users'
And request newUser
When method post
Then status 201
#
#* def id = response.id
#* print 'created id is: ' + id


