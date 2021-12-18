package com.pionpill.backend.service.imp;

import com.pionpill.backend.mapper.UserMapper;
import com.pionpill.backend.pojo.User;
import com.pionpill.backend.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImp implements UserService{
    @Autowired
    private UserMapper userMapper;
    public User getUser(String username,String password){
        User user = userMapper.getUser(username);

        if(user!=null){
            if(user.getPassword().trim().equals(password))
            return user;
        }
        return null;
    }
}
