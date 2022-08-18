package com.imooc.repository;

import com.imooc.dataobject.OrderDetail;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 *  查询订单详情
 */
public interface OrderDetailRepository extends JpaRepository<OrderDetail,String> {

    //根据订单Id查询
    List<OrderDetail> findByOrderId(String orderId);
}
