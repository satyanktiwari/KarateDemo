package driver;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit4.Karate;
import org.junit.BeforeClass;
import org.junit.runner.RunWith;

@RunWith(Karate.class)
@KarateOptions(features = "classpath:driver/crm.feature")
public class Demo01Runner {

    @BeforeClass
    public static void beforeClass() {
        System.setProperty("karate.env", "dev");
    }

}