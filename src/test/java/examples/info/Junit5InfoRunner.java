package examples.info;


import com.intuit.karate.junit5.Karate;


/**
 *
 * @author pthomas3
 */
//@RunWith(Karate.class)
//@KarateOptions(tags = { "@smokeFC,@smoke"}) //Commented as running from cmd using examples.tags
//
////@CucumberOptions(examples.tags = {"jankari, info"}) // important: do not use @RunWith(Karate.class) !
////@KarateOptions(features = "classpath:examples/info/infoFirst.feature")


public class Junit5InfoRunner {

//    @Karate.Test
//            Karate testInfoFirst()
//    {
//       return new Karate().feature("infoFirst").relativeTo(getClass());
//    }

    @Karate.Test
    Karate testInfoSecond(){
        return new Karate().feature().tags("@煙").relativeTo(getClass());
    }

    @Karate.Test
    Karate testTags(){
        return new Karate().tags("@smoke,@Fire").relativeTo(getClass());
    }
}
