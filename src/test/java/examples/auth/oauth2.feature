Feature:oauth 2 test using

     Background:
   Given url 'https://api.imgur.com'
   And configure headers = { Authorization : 'Bearer f5c55f267d9def464a10156fabb1f98a8c2344ca' }

  Scenario:oauth2 flow
    * path '3/account/me/images'
    #And header Authorization = 'Bearer f5c55f267d9def464a10156fabb1f98a8c2344ca'
    * method GET
    * status 200
