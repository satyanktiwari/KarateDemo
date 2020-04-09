package scenarioOutline;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit4.Karate;
import org.junit.BeforeClass;
import org.junit.runner.RunWith;

/**
 *
 * @author pthomas3
 */
@RunWith(Karate.class)
@KarateOptions(features = "classpath:scenarioOutline/Multiple-productUsingCSV.feature")
public class ScenarioOutlineRunner {
    @BeforeClass
    public static void before() {
        System.setProperty("karate.env", "dev");
    }
}
