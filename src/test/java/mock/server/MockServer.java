package mock.server;

import com.intuit.karate.junit5.Karate;
import org.junit.jupiter.api.condition.*;

@DisabledIfSystemProperty(named = "start.server", matches = "(?!true)")
@EnabledIfSystemProperty(named = "start.server", matches = "true")
public class MockServer {

    @Karate.Test
    Karate startServer() {
        return Karate.run().tags("~@ignore").relativeTo(getClass());
    }
}
