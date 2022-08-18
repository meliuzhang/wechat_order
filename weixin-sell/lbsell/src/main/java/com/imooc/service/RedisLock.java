package com.imooc.service;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;

/**
 * @author LB
 * @Remarks
 * @date 2020/01/07 22:08
 */
@Component
@Slf4j
public class RedisLock {

    @Autowired
    private StringRedisTemplate redisTemplate;

    /**
     *加锁
     * @param key
     * @param value 当前时间+超时时间
     * @return
     */
    public boolean lock(String key,String value){
        //只有在 key不存在时设置 key 的值   之前已经存在返回false,不存在返回true
        if(redisTemplate.opsForValue().setIfAbsent(key, value)) {
            //设置 key 的值 成功
            return true;
        }
        String currentValue = redisTemplate.opsForValue().get(key);
        //如果锁过期
        //!StringUtils.isEmpty(currentValue)   内容不为空
        //Long.parseLong(currentValue) < System.currentTimeMillis()  小于当前时间
        if (!StringUtils.isEmpty(currentValue) && Long.parseLong(currentValue) < System.currentTimeMillis()) {
            //获取上一个锁的时间
            //getAndSet 将给定 key的值设为 value ，并返回 key 的旧值(old value)
            String oldValue = redisTemplate.opsForValue().getAndSet(key, value);
            //oldValue 不为空并和当前的value相等
            if (!StringUtils.isEmpty(oldValue) && oldValue.equals(currentValue)) {
                return true;
            }
        }
        return false;
    }


    /**
     * 解锁
     * @param key
     * @param value
     */
    public void unlock(String key, String value) {
        try {
            String currentValue = redisTemplate.opsForValue().get(key);
            if (!StringUtils.isEmpty(currentValue) && currentValue.equals(value)) {
                redisTemplate.opsForValue().getOperations().delete(key);
            }
        }catch (Exception e) {
            log.error("【redis分布式锁】解锁异常, {}", e);
        }
    }
}
