Feature: sample karate api test script
  for help, see: https://github.com/intuit/karate/wiki/ZIP-Release

  Background:
    * url 'https://reqres.in/api'
    * def writerDemo =  Java.type('karateJava.WriteData')

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
    #    Use the writerDemo to write to a file
    * def printToTextFile = writerDemo.writeData(getId);

