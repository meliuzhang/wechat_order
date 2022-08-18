package com.imooc;

import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

/**
 * @author LB
 * @Remarks
 * @date 2019/11/02 12:02
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class LoggerTest {

    private  final Logger logger = LoggerFactory.getLogger(LoggerTest.class);//在这个类下

    @Test
    public void test01(){
        logger.debug("debug...");
        logger.info("info...");
        logger.error("error...");
    }

}
