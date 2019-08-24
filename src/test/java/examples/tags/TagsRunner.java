package examples.tags;

import com.intuit.karate.junit4.Karate;
import com.intuit.karate.KarateOptions;
import org.junit.runner.RunWith;

@RunWith(Karate.class)
@KarateOptions(features = "classpath:examples/tags/tags.feature", tags="@foo=bar,baz")

public class TagsRunner {

}