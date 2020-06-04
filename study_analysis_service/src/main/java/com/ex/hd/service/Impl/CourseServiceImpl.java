package com.ex.hd.service.Impl;

import com.ex.hd.dao.ICourseDao;
import com.ex.hd.domain.Course;
import com.ex.hd.domain.GenderTime;
import com.ex.hd.service.ICourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Primary
public class CourseServiceImpl implements ICourseService{
    @Autowired
    private ICourseDao courseDao;

    @Override
    public List<Course> getChart1And2Data() {
        return courseDao.getChart1And2Data();
    }

    @Override
    public List<GenderTime> getChart3Data() {
        return courseDao.getChart3Data();
    }
}
