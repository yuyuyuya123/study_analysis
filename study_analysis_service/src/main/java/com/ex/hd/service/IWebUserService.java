package com.ex.hd.service;

import com.ex.hd.domain.EducationPerson;
import com.ex.hd.domain.GenderPerson;
import com.ex.hd.domain.OccupationPerson;
import com.ex.hd.domain.ProvincePerson;

import java.util.List;

public interface IWebUserService {
    List<GenderPerson> getGenderPersonNumData();

    List<EducationPerson> getEducationPersonNumData();

    List<OccupationPerson> getOccupationPersonNumData();

    List<ProvincePerson> getProvincePersonNumData();
}
