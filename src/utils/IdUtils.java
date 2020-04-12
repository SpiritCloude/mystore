package utils;

import java.util.UUID;

public class IdUtils {
	public static String creatId() {
		
		String id=UUID.randomUUID().toString().replace("-", "");
		return id;
	}

}
