package mongoDb;
import org.bson.Document;

import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import org.bson.conversions.Bson;
import org.bson.types.ObjectId;
import org.junit.Test;

/***
 * Try to modify the query to accept name or this can used to accept the _id in the argument
 * and then used
 */

public class MongoDBAtlasClient {

@Test
    public Document findDocument() {

        //query for fidning and printing a record;

        MongoClientURI uri = new MongoClientURI(
                "mongodb+srv://uname:pwd@cluster0-slruw.mongodb.net/karateSample?retryWrites=true&w=majority&connectTimeoutMS=30000&socketTimeoutMS=30000");

            MongoClient mongoClient = new MongoClient(uri);
            MongoDatabase database = mongoClient.getDatabase("karateSample");
            MongoCollection collection = database.getCollection("employee");
            Document query = new Document("_id",new ObjectId("5d8679baee92a01438cb3e34"));
            Document result = (Document) collection.find(query).iterator().next();

//            System.out.println("name: "+result.getString("name"));
//    System.out.println(result.values());
//    System.out.println(result);
//        return result.getString("name",result);
    return result;
    }


}