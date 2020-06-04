package com.ex.hd.controller;

import com.ex.hd.domain.UserInfo;
import com.ex.hd.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/user")
//这个Controller用来操作和后台用户（即管理员们）相关的操作
public class UserController {
    @Autowired
    private IUserService userService;

    //查询所有的用户
    @RequestMapping("/findAll")
    public ModelAndView findAll(){
        ModelAndView mv=new ModelAndView();
        mv.setViewName("backstage");
        List<UserInfo> users = userService.findAll();
        mv.addObject("userList",users);
        return mv;
    }

    //删除点击的用户，用于“删除”按钮
    @RequestMapping("/deleteOneUser")
    public String deleteOneUser(@RequestParam("id") int id){
        userService.deleteOneUser(id);
        return "redirect:findAll";
    }

    //根据用户ID查询用户，用户“详细信息”按钮
    @RequestMapping("/selectUserById")
    public ModelAndView selectUserById(@RequestParam("id") int id){
        ModelAndView mv=new ModelAndView();
        mv.setViewName("backstage");
        UserInfo user=userService.selectUserById(id);
        mv.addObject("userDetails",user);
        List<UserInfo> users = userService.findAll();
        mv.addObject("userList",users);
        return mv;
    }

    //插入一个用户，用户“录入用户”
    @RequestMapping("/insertOneUser")
    public String insertOneUser(UserInfo userInfo,@RequestParam("roleId") int id) {
        userService.insertOneUser(userInfo,id);
        return "redirect:findAll";
    }


}
