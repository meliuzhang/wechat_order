package com.imooc.service.impl;

import com.imooc.dataobject.OrderMaster;
import com.imooc.repository.OrderMasterRepository;
import com.imooc.utils.KeyUtil;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.test.context.junit4.SpringRunner;

import java.math.BigDecimal;

/**
 * Created by 廖师兄
 * 2017-06-11 17:31
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class OrderMasterRepositoryTest {

    @Autowired
    private OrderMasterRepository repository;

    private final String OPENID = "110110";

    @Test
    public void saveTest() {
        for (int i = 0; i < 25; i++) {
            String orderId = KeyUtil.genUniqueKey();
            OrderMaster orderMaster = new OrderMaster();
            orderMaster.setOrderId(orderId);
            orderMaster.setBuyerName("师兄");
            orderMaster.setBuyerPhone("13653647635");
            orderMaster.setBuyerAddress("幕课网");
            orderMaster.setBuyerOpenid(OPENID);
            orderMaster.setOrderAmount(new BigDecimal(0.01));
            OrderMaster result = repository.save(orderMaster);
            Assert.assertNotNull(result);
        }
    }

    @Test
    public void findByBuyerOpenid() throws Exception {
        PageRequest request = new PageRequest(1, 3);

        Page<OrderMaster> result = repository.findByBuyerOpenid(OPENID, request);

        Assert.assertNotEquals(0, result.getTotalElements());
    }

}