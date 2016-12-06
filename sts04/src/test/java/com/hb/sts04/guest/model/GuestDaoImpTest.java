package com.hb.sts04.guest.model;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.BeforeClass;
import org.junit.Test;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import static org.junit.Assert.assertNotNull;

public class GuestDaoImpTest {
    private static SqlSession session;

    @BeforeClass
    public static void TestBefore() throws IOException {
//        String resource = "D:\\struct2\\sts02\\sts04\\src\\test\\resources\\mybatis-config.xml";
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
        session = sqlSessionFactory.openSession();
    }

    @Test
    public void selectAll() throws Exception {
        List<GuestVo> list = session.selectList("guest/selectAll");
        for (GuestVo bean :
                list) {
            System.out.println(bean);
        }
        assertNotNull(list);
    }

}