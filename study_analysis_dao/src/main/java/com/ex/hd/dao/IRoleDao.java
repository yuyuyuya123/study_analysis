package com.ex.hd.dao;

import com.ex.hd.domain.Role;
import org.apache.ibatis.annotations.Select;

public interface IRoleDao {

    @Select("select * from role where id=#{id}")
    Role selectById(int id);

    @Select("select * from role where id=(select roleId from users_role where userId=#{id})")
    Role selectByUserId(int id);
}
