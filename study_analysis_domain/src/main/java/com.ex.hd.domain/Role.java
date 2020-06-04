package com.ex.hd.domain;

import org.springframework.security.core.userdetails.User;

import java.util.List;

public class Role {
    private String id;
    private String roleName;
    private String auName;
    private String roleDesc;
    private List<User> users;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public String getAuName() {
        char lastChar = id.charAt(id.length() - 1);
        if (lastChar=='1'){
            auName="ADMIN";
        }else if (lastChar=='2'){
            auName="ADMIN";
        }else {
            auName="USER";
        }
        return auName;
    }

    public void setAuName(String auName) {
        this.auName = auName;
    }

    public String getRoleDesc() {
        return roleDesc;
    }

    public void setRoleDesc(String roleDesc) {
        this.roleDesc = roleDesc;
    }

    public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }
}

