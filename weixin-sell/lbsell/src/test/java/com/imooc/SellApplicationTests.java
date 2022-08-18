package com.imooc;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class SellApplicationTests {

	private  final Logger logger = LoggerFactory.getLogger(SellApplicationTests.class);
	@Test
	void contextLoads() {
		logger.debug("debug...");
		logger.info("info...");
		logger.error("error...");
	}

}
