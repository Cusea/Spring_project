package com.bc.web_project.login;

import java.math.BigInteger;
import java.security.SecureRandom;

public class NaverLogin {
	public String generate() {
		SecureRandom random = new SecureRandom();
		return new BigInteger(130, random).toString(32);
	}
	
	
}
