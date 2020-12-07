package mongoDb;

import com.mongodb.BasicDBObject;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.mongodb.MongoException;
import com.mongodb.client.*;
import org.bson.Document;
import org.bson.conversions.Bson;
import org.junit.Test;
import com.mongodb.client.model.Filters;

public class JavaMongolatest {
//   3.4 connectionString = mongodb+srv://<username>:<password>@cluster0-slruw.mongodb.net/test?retryWrites=true&w=majority
// eNTER THE DB USER NAME AND PWD AN NOT THE LOGIN one
// MAKE SURE TO WHITE LIST THE ip BEFORE RUNNING TEST OR db WON'T BE CONNECTED ONLY CLUSTER CONNECTION WILL BE MADE.
    public static String connectionString = "mongodb+srv://<username>:<password>@cluster0-slruw.mongodb.net/karateSample?retryWrites=true&w=majority";
    public static String databaseName = "karateSample";
    public static String collectionName = "employee";

    @Test
    public void InsertOneDocument(String fieldName, String value ){
        System.setProperty("jdk.tls.trustNameService", "true");
//---------- Create connection with the client -------------------------//
        MongoClient mongoClient = MongoClients.create(connectionString);

//---------- Connect to the database -------------------------//
        MongoDatabase database = mongoClient.getDatabase(databaseName);

//---------- Creating Collection -------------------------//
        MongoCollection <Document> collections  = database.getCollection(collectionName);

//---------- Creating Document ---------------------------//
        Document doc = new Document(fieldName, value);
//        doc.append("id",25);//add another key value to the document

//----------- Inserting Data ------------------------------//
            collections.insertOne(doc);
        mongoClient.close();

    }
    public void InsertOneDocument(String fieldName, int value ){

//---------- Create connection with the client -------------------------//
        MongoClient mongoClient = MongoClients.create(connectionString);

//---------- Connect to the database -------------------------//
        MongoDatabase database = mongoClient.getDatabase(databaseName);

//---------- Creating Collection -------------------------//
        MongoCollection <Document> collections  = database.getCollection(collectionName);

//---------- Creating Document ---------------------------//
        Document doc = new Document(fieldName, value);
//        doc.append("id",17);//add another key value to the document

//----------- Inserting Data ------------------------------//
        collections.insertOne(doc);
        mongoClient.close();

    }

    public int findKeyValue(String fieldName, int value){
        MongoClient mongoClient = MongoClients.create(connectionString);
        MongoDatabase database = mongoClient.getDatabase(databaseName);
        MongoCollection <Document> collections  = database.getCollection(collectionName);
        Gson gson = new Gson();

        FindIterable<Document> find = collections.find(Filters.eq(fieldName,value));
        try( MongoCursor<Document> cursor = find.iterator() )
        {
            while(cursor.hasNext())
            {
                System.out.println("\n"+gson.toJson(cursor.next()));
            }
        }
        catch(MongoException e)
        {
            System.out.println(e.getMessage());
        }
        mongoClient.close();
        return value;
        }

    public String findKeyValue(String fieldName, String value){
        MongoClient mongoClient = MongoClients.create(connectionString);
        MongoDatabase database = mongoClient.getDatabase(databaseName);
        MongoCollection <Document> collections  = database.getCollection(collectionName);
        Gson gson = new Gson();

        FindIterable<Document> find = collections.find(Filters.eq(fieldName,value));
        try( MongoCursor<Document> cursor = find.iterator() )
        {
            while(cursor.hasNext())
            {
                System.out.println("\n"+gson.toJson(cursor.next()));
            }
        }
        catch(MongoException e)
        {
            System.out.println(e.getMessage());
        }
        mongoClient.close();
        return value;
    }

}


