package examples.swapi;


import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit4.Karate;
import org.junit.runner.RunWith;

@RunWith(Karate.class)
@KarateOptions(features = "classpath:examples/swapi/swapiGET.feature")

public class swapiGETRunner {
}
