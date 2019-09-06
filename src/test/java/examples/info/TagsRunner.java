package examples.info;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit4.Karate;
import org.junit.runner.RunWith;

@RunWith(Karate.class)

@KarateOptions(tags = {"@version=2.3,@Spanish=Funcional","~@tagdemo"})

public class TagsRunner {

}
