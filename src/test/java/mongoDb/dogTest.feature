Feature:<enter the feature name here>



  Scenario:test
    * def config = {admin,admin,karateSample,employee}
    * def JavaMongoDemoNoTest = Java.type('mongoDb.JavaMongoDemoNoTest')
    * def db = new JavaMongoDemoNoTest(config)