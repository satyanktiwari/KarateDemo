Feature: Rough feature to test the newly added js functions quickly
  for help, see: https://github.com/intuit/karate/wiki/ZIP-Release

  Background:
    * configure logPrettyRequest = true
    * configure logPrettyResponse = true
    * url 'https://reqres.in/api'
    * call read('jsFunctions.feature')
  


  Scenario: Test the newly added js functions quickly
    * path 'users?page=1'
    * method get
    * status 200
    * def data = response.data
    * def test = idAllData(data,5)
    * print '\n------test----\n',test
