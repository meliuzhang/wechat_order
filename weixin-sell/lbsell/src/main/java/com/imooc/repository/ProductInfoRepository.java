package com.imooc.repository;

import com.imooc.dataobject.ProductInfo;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

//商品
public interface ProductInfoRepository extends JpaRepository<ProductInfo,String> {

    //获取所有上架/下架的商品
    List<ProductInfo> findByProductStatus(Integer productStatus);

}
