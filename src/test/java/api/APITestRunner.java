package api;

import com.intuit.karate.junit5.Karate;
import org.junit.jupiter.api.condition.DisabledIfSystemProperty;

@DisabledIfSystemProperty(named = "start.server", matches = "true")
public class APITestRunner {

    @Karate.Test
    Karate tests() {
        return Karate.run().relativeTo(getClass());
    }
}
