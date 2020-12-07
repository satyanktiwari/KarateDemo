Feature: sample karate api test script
  for help, see: https://github.com/intuit/karate/wiki/ZIP-Release

  Background:
    * configure logPrettyRequest = true
    * configure logPrettyResponse = true
    * url 'https://reqres.in/api'
    * call read('jsFunctions.feature')
  


  Scenario: Verify the user API
    * path 'users?page=1'
    * method get
    * status 200
    * def data = response.data
    * def sayHello = hello()
    * print sayHello
    * def getLength = length(data) 
    * print '\n---------Length of the array is: ----------------\n',getLength,'\n'
    * def getData = specificIdData(data)
    *  print '\n---------Data for id:5 ----------------\n',getData,'\n'
    * def parametrizedGetData = idAllData(data,5)
    * print '\n---------parametrizedGetData ----------------\n',parametrizedGetData,'\n'