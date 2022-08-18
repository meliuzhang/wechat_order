package com.imooc.service.impl;


import com.imooc.dataobject.ProductInfo;
import com.imooc.service.ProductService;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.test.context.junit4.SpringRunner;

import java.math.BigDecimal;
import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class ProductServiceImplTest {

    @Autowired
    private ProductService productService;


    @Test
    public void findOne() {
        ProductInfo productInfo = productService.findOne("123456");
        System.out.println(productInfo);
    }

    @Test
    public void findUpAll() {
        List<ProductInfo> upAll = productService.findUpAll();
    }

    /**
     * 分页查询
     * @param
     * @return
     */
    @Test
    public void findAll() {
        PageRequest request = new PageRequest(0, 2);
        Page<ProductInfo> productInfoPage = productService.findAll(request);
    }

    @Test
    public void save() {
        ProductInfo productInfo = new ProductInfo();
        productInfo.setProductId("123457");
        productInfo.setProductName("煲仔饭");
        productInfo.setProductPrice(new BigDecimal(0.12));
        productInfo.setProductStock(100);
        productInfo.setProductDescription("25分钟煲仔饭");
        productInfo.setProductIcon("http://xxxxx.jpg");
        productInfo.setProductStatus(0);
        productInfo.setCategoryType(2);
        ProductInfo result = productService.save(productInfo);


        productInfo.setProductId("123458");
        productInfo.setProductName("炒米饭");
        productInfo.setProductPrice(new BigDecimal(0.32));
        productInfo.setProductStock(100);
        productInfo.setProductDescription("25分钟煲仔饭");
        productInfo.setProductIcon("http://xxxxx.jpg");
        productInfo.setProductStatus(0);
        productInfo.setCategoryType(2);
        result = productService.save(productInfo);

        productInfo.setProductId("123459");
        productInfo.setProductName("酸菜鱼");
        productInfo.setProductPrice(new BigDecimal(0.02));
        productInfo.setProductStock(100);
        productInfo.setProductDescription("25分钟煲仔饭");
        productInfo.setProductIcon("http://xxxxx.jpg");
        productInfo.setProductStatus(0);
        productInfo.setCategoryType(2);
        result = productService.save(productInfo);
        Assert.assertNotNull(result);
    }
}
