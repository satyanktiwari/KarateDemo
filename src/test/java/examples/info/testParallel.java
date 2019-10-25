package examples.info;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.Assert.assertTrue;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;


@KarateOptions(tags={"@Fire"})
public class testParallel {
    @Test
    void testParallel(){
        Results results = Runner.parallel(getClass(),5,"target/surefire-reports");
//        assertTrue(results.getErrorMessages(),results.getFailCount()==0);
    }
}
