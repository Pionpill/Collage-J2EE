/*
 * @Description: your project
 * @version: 1.0
 * @Author: Pionpill
 * @LastEditors: Pionpill
 * @Date: 2021-12-19 11:57:43
 * @LastEditTime: 2021-12-26 17:15:47
 */
package library.backend.controller;

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
public class RegisterController {
    @Autowired
    UserService UserService;

    @CrossOrigin
    @PostMapping(value = "api/register")
    @ResponseBody
    public Result register(@RequestBody User requestUser) {

        // TODO:检查前端传来的注册信息
        User user = UserService.add(requestUser);

        if (user == null) {
            return new Result(400);
        } else {
            return new Result(200);
        }
    }
}
