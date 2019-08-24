package examples.info;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.Assert.*;
import examples.DemoTestParallel;
import net.sf.saxon.functions.ConstantFunction;
import org.junit.Test;

import java.util.Arrays;
import java.util.List;

public class DemoTestSelected {

    @Test
    public void testSelected(){
        List <String> tags = Arrays.asList("@煙","@Funcional");
        List <String> features = Arrays.asList("classpath:examples/info");
        String KarateOutputpath = "target/surefire-reports";
        Results results = Runner.parallel(tags,features,5,KarateOutputpath);
        DemoTestParallelInfo.generateReport(KarateOutputpath);
        assertTrue(results.getErrorMessages(),results.getFailCount()==0);
    }
}
