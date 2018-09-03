package com.koctas.smartit;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@EnableAutoConfiguration
@SpringBootApplication(exclude = { org.springframework.boot.autoconfigure.thymeleaf.ThymeleafAutoConfiguration.class })
@ComponentScan({"com.koctas.controller"})
public class SmartItApplication {

	public static void main(String[] args) {
		SpringApplication.run(SmartItApplication.class, args);
	}
}
