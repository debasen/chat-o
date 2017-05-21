package com.sensonic.chat;

import org.junit.Test;

import com.sensonic.util.PasswordUtil;

public class TestChatO {

	
	@Test
	public void testPassword(){
		System.out.println(PasswordUtil.generatePassword());
		
	}
}
