package examples.users;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit4.Karate;
import org.junit.runner.RunWith;

@RunWith(Karate.class)
@KarateOptions (features = "classpath:examples/users/users_experiment.feature")
//@KarateOptions(examples.tags = "~@ignore")
public class UsersRunner {

}
