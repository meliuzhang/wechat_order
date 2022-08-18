package com.imooc.repository;

import com.imooc.dataobject.OrderMaster;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * 操作订单表
 */
public interface OrderMasterRepository extends JpaRepository<OrderMaster,String> {
    //根据买家ID查询
    Page<OrderMaster> findByBuyerOpenid(String buyerOpenid, Pageable pageable);
}
