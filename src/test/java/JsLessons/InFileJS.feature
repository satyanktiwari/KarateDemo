Feature: sample karate api test script
  for help, see: https://github.com/intuit/karate/wiki/ZIP-Release

  Background:


  Scenario: Demo js functions use in karate


    * def myFunc = function(){return 'hello world'}
    * def returnedValue = call myFunc
    * print 'myFirst js function says ------', returnedValue
    # Multiline js function example
    * def multilineFunction = 
    """
      function(){
        return 'this is a multiline function'
      }

    """
    * def multilineF = call multilineFunction
    * print '*******************', multilineF