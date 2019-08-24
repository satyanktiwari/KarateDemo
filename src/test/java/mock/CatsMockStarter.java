package mock;

import com.intuit.karate.FileUtils;
import com.intuit.karate.netty.FeatureServer;
import org.junit.Test;

import java.io.File;

/**
 *
 * @author pthomas3
 */
public class CatsMockStarter {

    @Test
    public  void beforeClass() {
        File file = FileUtils.getFileRelativeTo(getClass(), "cats-mock.feature");
        FeatureServer server = FeatureServer.start(file, 8081, false, null);
        server.waitSync();
    }

}
