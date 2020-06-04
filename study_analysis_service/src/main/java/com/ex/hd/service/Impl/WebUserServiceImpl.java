package com.ex.hd.service.Impl;

import com.ex.hd.dao.IWebUserDao;
import com.ex.hd.domain.EducationPerson;
import com.ex.hd.domain.GenderPerson;
import com.ex.hd.domain.OccupationPerson;
import com.ex.hd.domain.ProvincePerson;
import com.ex.hd.service.IWebUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Primary
public class WebUserServiceImpl implements IWebUserService{
    @Autowired
    private IWebUserDao webUserDao;

    @Override
    public List<GenderPerson> getGenderPersonNumData() {
        return webUserDao.getGenderPersonNumData();
    }

    @Override
    public List<EducationPerson> getEducationPersonNumData() {
        return webUserDao.getEducationPersonNumData();
    }

    @Override
    public List<OccupationPerson> getOccupationPersonNumData() {
        return webUserDao.getOccupationPersonNumData();
    }

    @Override
    public List<ProvincePerson> getProvincePersonNumData() {
        return webUserDao.getProvincePersonNumData();
    }
}
