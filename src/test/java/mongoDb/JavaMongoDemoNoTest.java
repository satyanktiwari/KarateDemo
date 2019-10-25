package mongoDb;

import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import org.bson.Document;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;
import java.util.Map;

public class JavaMongoDemoNoTest {
    private static final Logger logger = LoggerFactory.getLogger(JavaMongoDemoNoTest.class);

    MongoClient mongoClient;

//    public static String databaseName = "karateSample";
//    public static String collectionName = "employee";

    public JavaMongoDemoNoTest (Map<String, Object> config){
            String userName = (String)config.get("userName");
            String password = (String)config.get("password");
            String databaseName = (String)config.get("databaseName");
            String collectionName = (String)config.get("collectionName");
            String connectionString = "mongodb+srv://userName:password@cluster0-slruw.mongodb.net/karateSample?retryWrites=true&w=majority";


            MongoClientURI uri = new MongoClientURI(connectionString);
            mongoClient = new MongoClient(uri);}

    public Object readValue(String query) {
        return mongoClient.;
    }

////---------- connecting to database  -------------------------//
//            MongoDatabase database = mongoClient.getDatabase(databaseName);
////---------- Creating Collection -------------------------//
//            MongoCollection <Document> table = database.getCollection(collectionName);
////---------- Creating Document ---------------------------//
//            Document doc = new Document("name", "John Smith");
//            doc.append("id",14);
////----------- Inserting Data ------------------------------//
//            table.insertOne(doc);
    }




}
