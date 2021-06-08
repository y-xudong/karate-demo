package utils;

import java.util.UUID;

public class UuidUtil {

    public static String getRandom() {
        return UUID.randomUUID().toString();
    }
}
