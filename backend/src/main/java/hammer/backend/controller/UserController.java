package hammer.backend.controller;

import hammer.backend.service.imp.UserServiceImp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import hammer.backend.mapper.UserMapper;
import hammer.backend.pojo.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@RestController
public class UserController {
    @Autowired
    UserMapper userMapper;
    // @RequestMapping("/login")
    // public String login(@RequestParam("username") String username,@RequestParam("password") String password,
    // HttpSession session,HttpServletRequest request){
    //     User user = userServiceImp.getUser(username, password);
    //     if(user!=null){
    //         session.setAttribute("userSession", user);
    //         return "redirect:/user/flatform/main";
    //     }else{
    //         request.setAttribute("error", "账号密码不匹配");
    //     }
    //     return "login";
    // }
    @GetMapping("/login")
    public String login(){
        User user = userMapper.getUser("北岸");
        return user.getPassword();
    }

}

