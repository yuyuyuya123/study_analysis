package com.ex.hd.controller;

import com.ex.hd.domain.Course;
import com.ex.hd.service.ICourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.jws.WebParam;
import java.util.List;

@Controller
@RequestMapping("/page")
//因为WEB-INF下的内容受保护，页面之间不能通过直接互相跳转，所以需要
public class PageController {
    @Autowired
    private ICourseService courseService;

    @RequestMapping("/page_courseAna")
    public String page_courseAna(){
        return "courseAna";
    }

    @RequestMapping("/page_userAna")
    public String page_userAna(){
        return "userAna";
    }

    @RequestMapping("/page_index")
    public String page_index(){
        return "index";
    }

}
