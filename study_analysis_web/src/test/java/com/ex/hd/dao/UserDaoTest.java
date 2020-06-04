package com.ex.hd.dao;

import com.ex.hd.domain.UserInfo;
import com.ex.hd.service.IUserService;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath*:applicationContext.xml","classpath*:spring-mvc.xml","classpath*:spring-security.xml"})
@WebAppConfiguration(value = "src/main/webapp")
public class UserDaoTest {
    @Autowired
    private IUserDao userDao;

    @Test
    public void testSelect() {
        UserInfo userInfo = userDao.selectByName("Admin");
        System.out.println(">>>>>>>>>>>>>>>>>"+userInfo);
        System.out.println(">>>>>>>>>>>>>>>>>"+userInfo.getRole().getAuName());
    }





}
