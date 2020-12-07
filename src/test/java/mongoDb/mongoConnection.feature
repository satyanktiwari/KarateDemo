Feature:Sample feature to test java interop

  Background:
#    * configure logPrettyRequest = true
#    * configure logPrettyResponse = true
#    * def callJava = Java.type('mongoDb.MongoDBAtlasClient')
    * def callJava = Java.type('mongoDb.JavaMongoFromSourceCodevid')

  @ignore
#  Scenario:Create a document
#    * def test = new callJava()
#    * def createDocument = test.InsertOneDocument("id","25");
#    * print '\n\n', createDocument


  Scenario:Retrieve info
    * def test = new callJava()
    * def document = test.findDocument()
    * print '\n-------------\n', document, '\n\n----------'
    * match document contains { id: 14, name: 'John Smith' }
