Feature:Sample feature to test java interop

Background:
  * def writerDemo =  Java.type('karateJava.WriteData')

  Scenario:call a java function
#    Use a variable to load the class file in the feature file
    * def callJava = Java.type('karateJava.Functions')
#    Create object of the class
    * def result = new callJava().nonStaticPrint();

    * def resultString = new callJava().nonStaticString("Satyank");
    * print '\n\n', result1
    * match resultString == 'Hello Satyank'

    * def resultInt = new callJava().nonStaticAddInt(2,3);
    * print '\n\n', resultInt
    * match resultInt == 5

#   Object not required to be created when calling static functions
    * def resultStatic = callJava.staticFunction();

#   Another way for using the above test would be to create one object and then use it to
#    call the other fucntions

    * def test = new callJava()
    * def returnTest = test.nonStaticPrint();
    * def returnString = test.nonStaticString("returnString");
    * print '\n\n', returnString

#    Use the writerDemo to write to a file
    * def printToTextFile = writerDemo.writeData("demo writer");