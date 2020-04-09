Feature:Sample feature to test java interop



  Scenario:call a java function
    * def callJava = Java.type('karateJava.Functions')
    * def result = new callJava().nonStaticFunction();