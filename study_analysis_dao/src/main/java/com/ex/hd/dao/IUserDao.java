package com.ex.hd.dao;

import com.ex.hd.domain.Role;
import com.ex.hd.domain.UserInfo;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import javax.annotation.security.PermitAll;
import java.util.List;

@Repository
public interface IUserDao {

   @Select("select * from users")
   @Results({
           @Result(column = "id",property = "id",id = true),
           @Result(column = "id",property = "role",javaType = Role.class,one=@One(select = "com.ex.hd.dao.IRoleDao.selectByUserId"))
   })
   List<UserInfo> selectAllUsers();

   @Delete("delete from users where id=#{id}")
    void deleteOneUser(int id);

   @Select("select * from users where id=#{id}")
   @Results({
           @Result(column = "id",property = "id",id = true),
           @Result(column = "id",property = "role",javaType = Role.class,one=@One(select = "com.ex.hd.dao.IRoleDao.selectByUserId"))
   })
    UserInfo selectUserById(int id);

   @Insert("insert into users(username,name,password,status,phoneNum,email) values(#{userName},#{name},#{password},#{status},#{phoneNum},#{email})")
   @Options(useGeneratedKeys=true, keyProperty="id", keyColumn="id")
    void insertOneUser(UserInfo userInfo);

   @Insert("insert into users_role(userId,roleId) values(#{userId},#{roleId})")
    void addRoleToUSer(@Param("userId") int userId, @Param("roleId") String roleId);

   @Select("select * from users where username=#{userName}")
   @Results({
           @Result(column = "id",property = "id",id = true),
           @Result(column = "id",property = "role",javaType = Role.class,one=@One(select = "com.ex.hd.dao.IRoleDao.selectByUserId"))
   })
    UserInfo selectByName(String userName);

   @Delete("delete from users_role where userId=#{id}")
    void deleteRoleFromUser(int id);
}
