package com.ex.hd.service;

import com.ex.hd.domain.UserInfo;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath*:applicationContext.xml","classpath*:spring-mvc.xml","classpath*:spring-security.xml"})
@WebAppConfiguration(value = "src/main/webapp")
public class UserServiceTest {
    @Autowired
    private IUserService userService;
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Test
    @Ignore
    public void testInsert(){
        UserInfo userInfo=new UserInfo();
        userInfo.setUserName("Super");
        userInfo.setName("爱丽丝");
        userInfo.setPassword("mayer");
        userInfo.setEmail("111111111@qq.com");
        userInfo.setPhoneNum("14578952");
        userInfo.setStatus(1);
        userService.insertOneUser(userInfo,3);
    }

    @Test
    @Ignore
    public void testDelete(){
        userService.deleteOneUser(6);
    }

    @Test
    @Ignore
    public void testPassword(){
//        String pw = bCryptPasswordEncoder.encode("mayer");
//        System.out.println(">>>>>>>>>>>>>>>>>>>"+pw);

    }


}
