package mongoDb;

import com.google.gson.Gson;
import com.mongodb.MongoException;
import com.mongodb.client.*;
import com.mongodb.client.model.Filters;
import org.bson.Document;
import org.bson.conversions.Bson;
import org.junit.Test;

/***
 * This is the one that is given generic results and should be further modified
 * to accept the key value in the arguments
 */
public class JavaMongoFromSourceCodevid {
//   3.4 connectionString = mongodb+srv://<username>:<password>@cluster0-slruw.mongodb.net/test?retryWrites=true&w=majority
// eNTER THE DB USER NAME AND PWD AN NOT THE LOGIN one
// MAKE SURE TO WHITE LIST THE ip BEFORE RUNNING TEST OR db WON'T BE CONNECTED ONLY CLUSTER CONNECTION WILL BE MADE.
    public static String connectionString = "mongodb+srv://uname:pwd@cluster0-slruw.mongodb.net/karateSample?retryWrites=true&w=majority";
    public static String databaseName = "karateSample";
    public static String collectionName = "employee";

    @Test
    public Document findDocument(){
        MongoClient mongoClient = MongoClients.create(connectionString);
        MongoDatabase database = mongoClient.getDatabase(databaseName);
        MongoCollection collection = database.getCollection(collectionName);
        System.out.println("DB connected---------");

        Document found = (Document) collection.find(new Document("name","John Smith")).first();
//        if (found != null){
//            System.out.println("\nfound document----------\n"+ found);
//
//        }
        return found;

    }


}


