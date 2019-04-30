package gatling

import com.intuit.karate.gatling.PreDef._
import io.gatling.core.Predef._
import scala.concurrent.duration._

class SwapiSimulation extends Simulation {

  val protocol = karateProtocol(
    "/people" -> Nil,
    "/people" -> pauseFor("get" -> 0, "post" -> 0)
  )

  protocol.nameResolver = (req, ctx) => req.getHeader("karate-name")

  val View = scenario("View").exec(karateFeature("classpath:gatling/swapiGatlingGet.feature"))
//  val delete = scenario("delete").exec(karateFeature("classpath:mock/cats-delete.feature@name=delete"))
//  val custom = scenario("custom").exec(karateFeature("classpath:mock/custom-rpc.feature"))

  setUp(
    View.inject(rampUsers(10) during (5 seconds)).protocols(protocol),
//    delete.inject(rampUsers(5) during (5 seconds)).protocols(protocol),
//    custom.inject(rampUsers(10) during (5 seconds)).protocols(protocol)
  )

}
