package com.example.testingweb;

import org.springframework.stereotype.Service;

@Service
public class GreetingService {
	String password = "12345";
	public String greet() {
		return "Hello, World";
	}
}
