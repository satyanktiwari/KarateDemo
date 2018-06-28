//package examples.users;
//
//import com.intuit.karate.FileUtils;
//import com.intuit.karate.cucumber.CucumberRunner;
//import com.intuit.karate.cucumber.KarateStats;
////import com.intuit.karate.netty.FeatureServer;
//import java.io.File;
//import java.util.ArrayList;
//import java.util.Collection;
//import java.util.List;
//
//import net.masterthought.cucumber.Configuration;
//import net.masterthought.cucumber.ReportBuilder;
//import org.junit.AfterClass;
//import static org.junit.Assert.assertTrue;
//import org.junit.BeforeClass;
//import org.junit.Test;
//import com.intuit.karate.junit4.Karate;
//import cucumber.api.CucumberOptions;
//import org.junit.runner.RunWith;
//
////@RunWith(Karate.class)
//@CucumberOptions(features = "classpath:examples/users/users_experiment.feature")
//public class UsersRunnerParallel {
//    @Test
//    public void testParallel() {
////        String karateOutputPath = "target/surefire-reports";
//        String karateOutputPath = "target/urp-reports";
//        KarateStats stats = CucumberRunner.parallel(getClass(), 5, karateOutputPath);
//        generateReport(karateOutputPath);
//        assertTrue("there are scenario failures", stats.getFailCount() == 0);
//    }
//
//    private static void generateReport(String karateOutputPath) {
//        Collection<File> jsonFiles = org.apache.commons.io.FileUtils.listFiles(new File(karateOutputPath), new String[] {"json"}, true);
//        List<String> jsonPaths = new ArrayList(jsonFiles.size());
//        jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));
//        Configuration config = new Configuration(new File("target"), "demo");
//        ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
//        reportBuilder.generateReports();
//    }
//}
