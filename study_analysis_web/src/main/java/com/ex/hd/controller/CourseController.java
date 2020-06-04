package com.ex.hd.controller;

import com.ex.hd.domain.Course;
import com.ex.hd.domain.GenderPerson;
import com.ex.hd.domain.GenderTime;
import com.ex.hd.service.ICourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import java.util.List;

@Controller
@RequestMapping("/course")
//这个Controller负责有关“课程分析”页面的数据查询
public class CourseController {
    @Autowired
    private ICourseService courseService;

    //获取表一和表二的数据，因为这两个表的数据在一个表里，所以就映射到了一个方法上，取数据的时候会一齐取出两个表的数据
    @RequestMapping(value={"/getChart1Data","/getChart2Data"})
    @ResponseBody
    public List<Course> getChart1And2Data(){
        return courseService.getChart1And2Data();
    }

    //获取表三的数据
    @RequestMapping("/getChart3Data")
    @ResponseBody
    public List<GenderTime> getChart3Data(){
        return courseService.getChart3Data();
    }

}
