package com.ex.hd.controller;

import com.ex.hd.domain.EducationPerson;
import com.ex.hd.domain.GenderPerson;
import com.ex.hd.domain.OccupationPerson;
import com.ex.hd.domain.ProvincePerson;
import com.ex.hd.service.IWebUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/webUser")
//这个Controller用来处理和客户（前台使用的人）有关的操作
public class WebUserController {
    @Autowired
    private IWebUserService webUserService;

    //这是表“性别聚合分析”的数据，包括用户中每个性别的人数
    @RequestMapping("/getGenderPersonNumData")
    @ResponseBody
    public List<GenderPerson> getGenderPersonNumData(){
       return  webUserService.getGenderPersonNumData();
    }

    //这是表“学历聚合分析”的数据，包括用户中每个学历的人数
    @RequestMapping("/getEducationPersonNumData")
    @ResponseBody
    public List<EducationPerson> getEducationPersonNumData(){
        return webUserService.getEducationPersonNumData();
    }

    //这是表“职业聚合分析”的数据，包括用户中教师和学生的人数
    @RequestMapping("/getOccupationPersonNumData")
    @ResponseBody
    public List<OccupationPerson> getOccupationPersonNumData(){
        return webUserService.getOccupationPersonNumData();
    }

    //这是表“客户全国分布”的数据
    @RequestMapping("/getProvincePersonNumData")
    @ResponseBody
    public List<ProvincePerson> getProvincePersonNumData(){
        return webUserService.getProvincePersonNumData();
    }

}
