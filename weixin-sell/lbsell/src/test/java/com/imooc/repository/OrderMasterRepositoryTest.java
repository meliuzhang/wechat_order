package com.imooc.repository;


import com.imooc.dataobject.OrderMaster;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.test.context.junit4.SpringRunner;

import java.awt.print.Pageable;
import java.math.BigDecimal;

@RunWith(SpringRunner.class)
@SpringBootTest
public class OrderMasterRepositoryTest {

    @Autowired
    private OrderMasterRepository repository;

    private final String OPENID = "1313";

    @Test
    public void saveTest(){
        OrderMaster orderMaster = new OrderMaster();
        orderMaster.setOrderId("123459");
        orderMaster.setBuyerName("小夫");
        orderMaster.setBuyerPhone("13762718736");
        orderMaster.setBuyerOpenid(OPENID);
        orderMaster.setBuyerAddress("深圳市坪山区区");
        orderMaster.setOrderAmount(new BigDecimal(35));
        OrderMaster result = repository.save(orderMaster);
        System.out.println(result);
    }

    @Test
    public void findByBuyerOpenid() {
        PageRequest pageRequest = new PageRequest(0,2);
        Page<OrderMaster> result = repository.findByBuyerOpenid(OPENID, pageRequest);

    }
}
