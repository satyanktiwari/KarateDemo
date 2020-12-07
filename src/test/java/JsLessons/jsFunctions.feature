@ignore
Feature: Custom Karate Methods
This feature file contains Custom Karate Methods that can be called and used from other Feature Files

Background:
    * def hello = function(){return 'hello'}
    * def length = 
    # This function takes in an argument and then 
    # determines the length of the array
    """
        function(arg){
            return arg.length
        }
    """
    ######################################
    
    * def specificIdData = 
    # This function takes in an argument and then 
    # gives the detail of the hardcoded id passed
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
    * def idAllData = 
    # This function takes in an argument and then 
    # gives the detail of the parameterized id passed
    """
    function(arg,idNo)
    {
    for (i = 0; i < arg.length; i++) {
        if (arg[i].id==idNo) 
        {
        return arg[i]
        }
        
    }
    }

    """


Scenario: This line is required please do not delete - or the functions cannot be called****
