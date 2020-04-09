@ignore
Feature: Sample karate demo script to test

  Background:
    * configure headers = {'Content-Type' : 'text/html'}

  Scenario: swapi root API is up

    Given url 'https://swapi.co/api'
    #And header Content-Type = 'text/html'
    When method Get
    Then status 200
     And match $ contains {films: 'https://swapi.co/api/films/', people: 'https://swapi.co/api/people/', planets:'https://swapi.co/api/planets/' , }


  Scenario: swapi /person API is up

    Given url 'https://swapi.co/api/people'
    When method Get
    Then status 200
    And match $ contains {count: 87}
    And match $.results[0] contains {name:'Luke Skywalker'}



  Scenario: swapi /planets API is up
    Given url 'https://swapi.co/api/planets/'
   # And header Allow = 'GET', 'HEAD', 'OPTIONS'
    When method Get
    Then status 200
    And match response contains {count: 61}