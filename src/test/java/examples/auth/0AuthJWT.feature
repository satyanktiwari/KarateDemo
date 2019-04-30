Feature: oauth2 test script

  Background:
    * url 'http://192.168.56.101:3001'
  Scenario: test oauth2
#   Given path 'users'
#    And form field username = 'username0'
#    And form field password = 'password'
#    When method post
#    Then status 201
##    * def accessToken = $.access_token
##    * print 'token to be used is now###################################################', token

    Given path 'sessions/create'
    And form field username = 'username0'
    And form field password = 'password'
    When method post
    Then status 201
    * def accessToken = response.access_token
    #* print '****************************************************************************', accessToken

    Given path 'api/random-quote'
    * header Authorization = 'Bearer ' + accessToken
    * method GET
    * status 200
    * print 'response is now:', response