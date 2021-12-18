package library.backend.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import library.backend.Service.UserService;
import library.backend.entity.User;
import library.backend.result.Result;

@Controller
public class LoginController {
    @Autowired
    UserService UserService;

    @CrossOrigin
    @PostMapping(value = "api/login")
    @ResponseBody
    public Result login(@RequestBody User requestUser, HttpSession session) {
        String username = requestUser.getUsername();
        String password = requestUser.getPassword();

        // 获取用户
        User user = UserService.get(username, password);

        if (user == null) {
            return new Result(400);
        } else {
            session.setAttribute("user", user); // 存储用户信息
            return new Result(200);
        }
    }
}
