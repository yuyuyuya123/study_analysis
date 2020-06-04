package com.ex.hd.service.Impl;

import com.ex.hd.dao.IUserDao;
import com.ex.hd.domain.Role;
import com.ex.hd.domain.UserInfo;
import com.ex.hd.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service("userService")
public class UserServiceImpl implements IUserService{
    @Autowired
    private IUserDao userDao;
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    //用于spring security的登录权限验证
    public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
        UserInfo userInfo = userDao.selectByName(userName);
        //将自己的UserInfo对象封装成UserDetails的实现类User
        User user = new User(userName, userInfo.getPassword(),userInfo.getStatus()==1?true:false, true,true,true,getAuthorities(userInfo.getRole()));
        return user;
    }

    //将Role集合封装成GrantedAuthority集合
    public List<SimpleGrantedAuthority> getAuthorities(Role role){
        List<SimpleGrantedAuthority> list=new ArrayList<>();
        list.add(new SimpleGrantedAuthority("ROLE_"+role.getAuName()));
        return list;
    }

    @Override
    public List<UserInfo> findAll() {
        List<UserInfo> users=userDao.selectAllUsers();
        return users;
    }

    @Override
    public void deleteOneUser(int id) {
        userDao.deleteRoleFromUser(id);
        userDao.deleteOneUser(id);
    }

    @Override
    public UserInfo selectUserById(int id) {
        UserInfo user=userDao.selectUserById(id);
        return user;
    }

    @Override
    public void insertOneUser(UserInfo userInfo, int id) {
        //对存储的密码进行加密处理
        userInfo.setPassword(bCryptPasswordEncoder.encode(userInfo.getPassword()));
        //添加用户的基本信息
        userDao.insertOneUser(userInfo);
        //给用户添加角色
        userDao.addRoleToUSer(userInfo.getId(),"R000000000000000000000000000000"+id);
    }
}
