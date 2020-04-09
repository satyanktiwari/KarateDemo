//package mongoDb;
//
//import com.mongodb.MongoClient;
//import com.mongodb.MongoClientURI;
//import com.mongodb.client.MongoCollection;
//import com.mongodb.client.MongoDatabase;
//import org.bson.Document;
//import org.junit.Test;
//
//public class JavaMongoDemo {
//    String connectionString = "mongodb+srv://admin:admin@cluster0-slruw.mongodb.net/karateSample?retryWrites=true&w=majority";
//    String databaseName = "karateSample";
//    String collectionName = "employee";
//    @Test
//    public void connectToDb(){
//            MongoClientURI uri = new MongoClientURI(connectionString);
//            MongoClient mongoClient = new MongoClient(uri);
////---------- connecting to database  -------------------------//
//            MongoDatabase database = mongoClient.getDatabase(databaseName);
////---------- Creating Collection -------------------------//
//            MongoCollection <Document> table = database.getCollection(collectionName);
////---------- Creating Document ---------------------------//
//            Document doc = new Document("name", "John Smith");
//            doc.append("id",14);
////----------- Inserting Data ------------------------------//
//            table.insertOne(doc);
//
//
//    }
//
//}
