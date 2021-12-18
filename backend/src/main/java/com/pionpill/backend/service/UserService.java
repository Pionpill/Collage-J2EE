package com.pionpill.backend.service;

import com.pionpill.backend.pojo.User;


public interface UserService {
    //验证用户登录信息
    User getUser(String username,String password);
}
