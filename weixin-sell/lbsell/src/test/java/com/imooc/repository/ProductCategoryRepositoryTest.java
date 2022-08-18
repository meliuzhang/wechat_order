package com.imooc.repository;

import com.imooc.dataobject.ProductCategory;
import org.hibernate.criterion.Example;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;


@RunWith(SpringRunner.class)
@SpringBootTest
public class ProductCategoryRepositoryTest {

    @Autowired
    private ProductCategoryRepository repository;

    @Test
    public void findOneTest(){
        ProductCategory one = repository.findOne(1);
    }

    @Test
    public void saveTest(){
        ProductCategory productCategory = repository.findOne(2);
        productCategory.setCategoryType(10);
        ProductCategory save = repository.save(productCategory);
    }

    @Test
    public void findByCategoryTypeInTest(){
        List list = new ArrayList<>();
        list.add(2);
        list.add(10);
        List byCategoryTypeIn = repository.findByCategoryTypeIn(list);
        System.out.println(byCategoryTypeIn);
    }

}