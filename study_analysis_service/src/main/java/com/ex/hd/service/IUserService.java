package com.ex.hd.service;

import com.ex.hd.domain.UserInfo;
import org.springframework.security.core.userdetails.UserDetailsService;

import java.util.List;

public interface IUserService extends UserDetailsService {
    List<UserInfo> findAll();

    void deleteOneUser(int id);

    UserInfo selectUserById(int id);

    void insertOneUser(UserInfo userInfo, int id);
}
