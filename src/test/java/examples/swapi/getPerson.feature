@ignore
Feature: Sample karate demo script using swapi

  Background:
    * url 'https://swapi.co/api'

  Scenario: Person API is up and check data for one record
    #give the path that you want to test
    Given path  'people'

    #specify the method
    When method Get

    #expected status
    Then status 200

    #match that the response contains name luke skywalker
    And match $.results[0] contains {name:'Luke Skywalker'}


      #store the json response in a js variable
    * def jsvariable = $.results[0]

    #match name and gender matches expected
    And match jsvariable contains {name: 'Luke Skywalker'}
    And match jsvariable.gender == 'male'

#    Below will fail due to mismatch in name and the steps after this will be skipped
#    OR match jsvariable contains {name: 'Lukey Skywalker'}

#    #Below will fail due to mismatch in gender
#    And match jsvariable.gender == 'female'

# Verify that the URL available in the response is up and returns correct response
    #use the jsonpath to get the url for a film
    * def film1 = $.results[0].films[0]
    Given url film1
    When method GET
    Then status 200

    #Store the response in a js variable
    * def film1response = response

    #use the URl directly and get the response and store it in a js variable
    # Chnaged to 201 from 200 to fail this test
    Given url 'https://swapi.co/api/films/2/'
    When method GET
    Then status 200
    * def filmyResponse = response


    # Match the responses
    * match filmyResponse == film1response

 #   * def info = karate.info
  #     * print 'info:', info


