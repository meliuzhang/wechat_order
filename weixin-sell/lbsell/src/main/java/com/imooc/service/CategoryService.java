package com.imooc.service;

import com.imooc.dataobject.ProductCategory;

import java.util.List;

/**
 * @author LB
 * @Remarks
 * @date 2019/11/02 15:46
 */
//类目
public interface CategoryService {

    //根据ID查询
    ProductCategory findOne(Integer categoryId);
    //查询所有
    List<ProductCategory> findAll();
    //查询多个
    List<ProductCategory> findByCategoryTypeIn(List<Integer> categoryTypeList);
    //保存和更新
    ProductCategory save(ProductCategory productCategory);
}
