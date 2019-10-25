package examples.info;


import com.intuit.karate.KarateOptions;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;
import org.apache.commons.io.FileUtils;
import org.junit.jupiter.api.Test;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import examples.info.DemoTestParallelInfo;

import static org.junit.jupiter.api.Assertions.*;


/**
 *
 * @author pthomas3
 */

@KarateOptions(tags={"@version=2.3"})
public class Junit5DemoTestParallelInfo {


 @Test
    public void testParallel() {


        String karateOutputPath = "target/surefire-reports";
        Results results = Runner.parallel(getClass(),3,karateOutputPath);
        generateReport(karateOutputPath);
        assertTrue(results.getFailCount()==0,results.getErrorMessages());
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