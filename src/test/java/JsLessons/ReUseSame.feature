Feature: sample karate api test script
  for help, see: https://github.com/intuit/karate/wiki/ZIP-Release

  Background:
    * configure logPrettyRequest = true
    * configure logPrettyResponse = true
    * url 'https://jsonplaceholder.typicode.com'
    * call read('jsFunctions.feature')

  Scenario: get all users and then get the first user by id
    Given path 'posts'
    When method get
    Then status 200
    * def data = response
    * def sayHello = hello()
    * print sayHello
    * def getLength = length(data) 
    * print '\n---------Length of the array is: ----------------\n',getLength,'\n'
    * def getData = specificIdData(data)
    * print '\n---------Data for id:5 ----------------\n',getData,'\n'
    * def parametrizedGetData = idAllData(data,5)
    * print '\n---------parametrizedGetData ----------------\n',parametrizedGetData,'\n'