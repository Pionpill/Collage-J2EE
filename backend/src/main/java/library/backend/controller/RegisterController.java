/*
 * @Description: your project
 * @version: 1.0
 * @Author: Pionpill
 * @LastEditors: Pionpill
 * @Date: 2021-12-19 11:57:43
 * @LastEditTime: 2021-12-26 20:46:44
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
        String id = requestUser.getId();
        String email = requestUser.getEmail();
        if (UserService.isExist(id) || UserService.isEmaillExist(email)) {
            return new Result(400);
        } else {
            UserService.addRegisterUser(requestUser);
            return new Result(200);
        }
    }
}
