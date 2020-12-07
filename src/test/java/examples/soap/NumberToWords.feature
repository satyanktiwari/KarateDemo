Feature: 
    test of soap

Background:
* url 'http://www.dataaccess.com/webservicesserver/numberconversion.wso'

Scenario: soap 1.1
Given request
"""
<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:web="http://www.dataaccess.com/webservicesserver/">
   <soapenv:Header/>
   <soapenv:Body>
      <web:NumberToWords xmlns="http://www.dataaccess.com/webservicesserver/">
         <web:ubiNum>205</web:ubiNum>
      </web:NumberToWords>
   </soapenv:Body>
</soapenv:Envelope>
"""

When soap action 'Conversion'
Then status 200

* print '\n', response

#working
* match response /Envelope/Body/NumberToWordsResponse/NumberToWordsResult == 'two hundred and five '

 * def temp = /Envelope/Body/NumberToWordsResponse/NumberToWordsResult
 * print 'js handles this \n', temp