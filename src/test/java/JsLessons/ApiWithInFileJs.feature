Feature: sample karate api test script
  for help, see: https://github.com/intuit/karate/wiki/ZIP-Release

  Background:
    * url 'https://reqres.in/api'

  Scenario: get all users and then get the first user by id
    * path 'users?page=1'
    * method get
    * status 200
    * def data = response.data
    * def length =
    """
        function(arg){
          return arg.length
        }

    """
    * def getLength = call length data
    * print '----------------', getLength

    * def specificIdData = 
    """
      function(arg)
      {
        for (i = 0; i < arg.length; i++) {
          if (arg[i].id==5) 
          {
            return arg[i]
          }
        }
      }

    """
      * def getId = call specificIdData data
      * print 'Now time to get data for id 9 ----\n',getId
    # match contains
    * match getId contains {"id": 5,"year": 2004,"color": "#E2583E","pantone_value": "17-1456"}
    # match equals
    * match getId == {"id": 5,"year": 2004,"color": "#E2583E","pantone_value": "17-1456", 'name':'tigerlily'}
    * print '-------------------------experiment 1-------------------'
    * match getId contains {"id": "#number",'color':'#string','name':'#regex[a-z]{9}'}

