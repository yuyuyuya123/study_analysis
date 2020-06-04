package com.ex.hd.service;

import com.ex.hd.domain.Course;
import com.ex.hd.domain.GenderTime;

import java.util.List;

public interface ICourseService {
    List<Course> getChart1And2Data();

    List<GenderTime> getChart3Data();
}
