import com.intuit.karate.Runner;
import com.intuit.karate.Results;
import java.util.Arrays;
import java.util.List;
import static org.junit.Assert.*;
import org.junit.Test;

public class DemoTestSelected {
    @Test
    public void testSelected() {
        List<String> tags = Arrays.asList("@smoke,@version=2.3,@Fire");
        List<String> features = Arrays.asList("classpath:examples/info");
        String karateOutputPath = "target/surefire-reports";
        Results results = Runner.parallel(tags, features, 5, karateOutputPath);
        DemoTestParallel.generateReport(karateOutputPath);
        assertTrue(results.getErrorMessages(), results.getFailCount() == 0);
    }
}
