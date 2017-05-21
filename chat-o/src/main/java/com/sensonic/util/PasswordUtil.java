package com.sensonic.util;

import java.security.SecureRandom;
import java.math.BigInteger;

public class PasswordUtil {
	private static SecureRandom random = new SecureRandom();

	public static String generatePassword(){
		return new BigInteger(28, random).toString(32);
	}
}
