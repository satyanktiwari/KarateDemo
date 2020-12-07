Feature:
  test of soap

  Background:
    * url 'http://www.dataaccess.com/webservicesserver/numberconversion.wso'

  Scenario: n2w
    Given request
    """
      <?xml version="1.0" encoding="utf-8"?>
      <soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
        <soap:Body>
          <NumberToDollars xmlns="http://www.dataaccess.com/webservicesserver/">
            <dNum>10</dNum>
          </NumberToDollars>
        </soap:Body>
      </soap:Envelope>
    """

    When soap action 'NumberToDollars'
    Then status 200

    * print '\n', response