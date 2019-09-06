#@ignore
  @Fire
Feature: runtime metadata
  such as the feature file name and scenario name

#  @smoke
  @metadata  @Spanish=Funcional
  Scenario: second scenario
    # create a variable and store value of karate.info into the variable
    * def jankari = karate.info
    # Print the text info and then the value stored in the above variable
    * print 'jankari:', jankari
    # Match the contents of info with expected string
    * match jankari contains { scenarioName: 'second scenario', featureFileName: 'infoSecond.feature' }
