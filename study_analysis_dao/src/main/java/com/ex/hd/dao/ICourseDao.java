package com.ex.hd.dao;

import com.ex.hd.domain.Course;
import com.ex.hd.domain.GenderTime;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ICourseDao {

    @Select("select * from course")
    @Results({
            @Result(property = "id",column = "unit_id",id = true),
            @Result(property = "unitName",column = "unit_name"),
            @Result(property = "personNum",column = "person_num"),
            @Result(property = "clickNum",column = "click_num")
    })
    List<Course> getChart1And2Data();

    @Select("select * from s_time")
    @Results({
            @Result(property = "id",column = "id",id = true),
            @Result(property = "gender",column = "gender"),
            @Result(property = "snum",column = "s_num"),
            @Result(property = "timeId",column = "time_id")
    })
    List<GenderTime> getChart3Data();
}
