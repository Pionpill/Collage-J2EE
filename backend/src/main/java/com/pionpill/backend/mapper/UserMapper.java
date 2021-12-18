package com.pionpill.backend.mapper;

import com.pionpill.backend.pojo.User;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

// TODO 创建访问对象
@Mapper
public interface UserMapper {
    //验证登录信息
    @Select("SELECT * FROM account WHERE username = #{username}")
    User getUser(@Param("username") String username);
}
