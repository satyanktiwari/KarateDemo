Feature:Sample karate test script for a soap service

  Background:
    * url 'http://www.dataaccess.com/webservicesserver/numberconversion.wso'

  Scenario Outline:Convert a number to dollar value
    * def num = <num>
    Given request read('numberToDollar.xml')
    When soap action 'Conversion'
    Then status 200
    * print '\n', response
    * match response /Envelope/Body/NumberToDollarsResponse/NumberToDollarsResult == <expected>
    # To print the converted value to console
    * def temp = /Envelope/Body/NumberToDollarsResponse/NumberToDollarsResult
    * print '\nConverted $ value is: ', temp
    * def xml = read('numberToDollar.xml')
    * print 'pretty print:', xml

    Examples:
      |read('numberToDollar.csv')|