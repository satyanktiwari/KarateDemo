package examples.info;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit4.Karate;
import org.junit.runner.RunWith;

@RunWith(Karate.class)

@KarateOptions(features = "classpath:examples/info/infoFirst.feature",
                tags = {"@smoke"})

public class TagsRunner {

}
