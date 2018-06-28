package examples;

import com.intuit.karate.junit4.Karate;
import cucumber.api.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Karate.class)
/*Below option is used to run only specific feature files*/
@CucumberOptions(features = "classpath:examples/swapi/getPerson.feature")
public class swapiTest1 {
    // refer to https://github.com/intuit/karate#naming-conventions
    // for folder-structure recommendations and naming conventions
}