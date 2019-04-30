Feature:<enter the feature name here>

  Background:
    Given url 'https://api.imgur.com'

  Scenario:<enter the name here>
#    * form field Auth_URL = 'oauth2/authorize'
#    And form field client_id = '40dfa41dc5ce693'
#    And form field REQUESTED_RESPONSE_TYPE = 'token'
#    * method POST
#    * status 200

    * path '3/account/me/images'
    And header Authorization = 'Client-ID 40dfa41dc5ce693'
    * method GET
    * status 200