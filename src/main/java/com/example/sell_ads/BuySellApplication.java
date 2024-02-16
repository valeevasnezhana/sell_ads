package com.example.sell_ads;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@EnableTransactionManagement
@SpringBootApplication
public class BuySellApplication {

	public static void main(String[] args) {
		SpringApplication.run(BuySellApplication.class, args);
	}

}
