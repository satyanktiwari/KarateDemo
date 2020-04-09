package examples;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;

import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;
import org.apache.commons.io.FileUtils;
import org.junit.Test;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import static org.junit.Assert.assertTrue;

/**
 *As cucumber support has been deprecated changes have to be made to this file to support the new
 * methods.
 * 1. use of KarateOptions
 * 2. KarateStats has been deprecated
 * 3. Karate junit4 now supports method chaining
 * 4. new assertTrue method added today
 *
 */
@KarateOptions(tags = {"~@ignore"}) // important: do not use @RunWith(Karate.class) !
public class DemoParallelUsersTest {



    @Test
    public void testParallel() {
//        String karateOutputPath = "target/surefire-reports";
        String karateOutputPath = "target/surefire-reports";
//      Cucumber has been deprecated hence removed 4/10/2020
//        KarateStats stats = CucumberRunner.parallel(getClass(), 5, karateOutputPath);
//        generateReport(karateOutputPath);
//        assertTrue("there are scenario failures", stats.getFailCount() == 0);

        Results stats = Runner.path("classpath:examples/tags/tags.feature").tags("~@ignore").parallel(5);
        generateReport(karateOutputPath);
//        Old Assertion
        assertTrue("there are scenario failures", stats.getFailCount() == 0);
//        New assertion added on 4/10/2020 from karate documentation not required so commented
//        assertTrue(stats.getErrorMessages(), stats.getFailCount() == 0);

    }

    private static void generateReport(String karateOutputPath) {
        Collection<File> jsonFiles = FileUtils.listFiles(new File(karateOutputPath), new String[] {"json"}, true);
        List<String> jsonPaths = new ArrayList(jsonFiles.size());
        jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));
        Configuration config = new Configuration(new File("target"), "demo");
        ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
        reportBuilder.generateReports();
    }

}