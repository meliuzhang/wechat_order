package com.imooc;

import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

/**
 * @author LB
 * @Remarks
 * @date 2019/11/02 12:23
 */
@RunWith(SpringRunner.class)
@SpringBootTest
@Slf4j
public class LoggerTest02 {

    @Test
    public void test01(){
        String name = "imooc";
        String password = "123456";
        log.debug("debug...");
        log.info("info...");
        log.info("name:"+name+",password"+password);
        log.info("name:{},password:{}",name,password);
        log.error("error...");
    }
}
