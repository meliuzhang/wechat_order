package com.imooc.repository;


import com.imooc.dataobject.OrderDetail;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.math.BigDecimal;
import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class OrderDetailRepositoryTest {

    @Autowired
    private OrderDetailRepository repository;

    private final String ORDERID = "123459";

    @Test
    public void saveTest(){
        OrderDetail orderDetail = new OrderDetail();
        orderDetail.setDetailId("1234567811");//订单详情id
        orderDetail.setOrderId(ORDERID);//订单id
        orderDetail.setProductIcon("http://xxxx.jpg");
        orderDetail.setProductId("123456");//商品id
        orderDetail.setProductName("黄焖鸡米饭");
        orderDetail.setProductPrice(new BigDecimal(15));
        orderDetail.setProductQuantity(100);//商品数量
        OrderDetail result = repository.save(orderDetail);
        Assert.assertNotNull(result);//断言 如果为空就报错
    }

    @Test
    public void findByOrderId() {
        List<OrderDetail> result = repository.findByOrderId(ORDERID);
        System.out.println(result);
    }
}
