//package driver;
//
//import com.intuit.karate.driver.Driver;
//import com.intuit.karate.driver.chrome.Chrome;
//import org.junit.Test;
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//
//import static org.junit.Assert.assertEquals;
//import static org.junit.Assert.assertTrue;
//
///**
// *
// * @author pthomas3
// */
//public class Demo01JavaRunner {
//
//    private static final Logger logger = LoggerFactory.getLogger(Demo01JavaRunner.class);
//
//    @Test
//    public void testChrome() throws Exception {
//        Driver driver = Chrome.start();
//        driver.setLocation("https://github.com/login");
//        driver.input("#login_field", "hello");
//        driver.input("#password", "world");
//        driver.submit("input[name=commit]");
//        String html = driver.html("#js-flash-container");
//        assertTrue(html.contains("Incorrect username or password."));
//        driver.setLocation("https://google.com");
//        driver.input("input[name=q]", "karate dsl");
//        driver.submit("input[name=btnI]");
//        assertEquals("https://github.com/intuit/karate", driver.getLocation());
//        driver.quit();
//
//    }
//
//}
