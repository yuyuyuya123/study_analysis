package com.ex.hd.dao;

import com.ex.hd.domain.EducationPerson;
import com.ex.hd.domain.GenderPerson;
import com.ex.hd.domain.OccupationPerson;
import com.ex.hd.domain.ProvincePerson;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IWebUserDao {

    @Select("select * from gender")
    @Results({
            @Result(property = "id",column = "sex",id = true),
            @Result(property = "gender",column = "gender"),
            @Result(property = "num",column = "s_numbers")
    })
    List<GenderPerson> getGenderPersonNumData();

    @Select("select * from ptypes")
    @Results({
            @Result(property = "id",column = "ptypes",id = true),
            @Result(property = "pname",column = "p_name"),
            @Result(property = "pnum",column = "p_numbers")
    })
    List<EducationPerson> getEducationPersonNumData();

    @Select("select * from type")
    @Results({
            @Result(property = "id",column = "types",id = true),
            @Result(property = "tnum",column = "t_numbers"),
            @Result(property = "tname",column = "type_name")
    })
    List<OccupationPerson> getOccupationPersonNumData();

    @Select("select * from province")
    @Results({
            @Result(property = "pnum",column = "pro_numbers"),
            @Result(property = "province",column = "province")
    })
    List<ProvincePerson> getProvincePersonNumData() ;

}
