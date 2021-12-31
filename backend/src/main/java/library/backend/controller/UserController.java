/*
 * @Description: your project
 * @version: 1.0
 * @Author: Pionpill，Rooter
 * @LastEditors: Pionpill
 * @Date: 2021-12-27 17:30:27
 * @LastEditTime: 2021-12-31 14:10:25
 */
package library.backend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import library.backend.Service.UserService;
import library.backend.entity.User;
import library.backend.result.Result;

@RestController
public class UserController {
    @Autowired
    UserService userService;

    @GetMapping("/api/admin/user")
    public List<User> listRoles() {
        return userService.list();
    }

    @CrossOrigin
    @PostMapping(value = "api/admin/user/permission")
    @ResponseBody
    public Result changePermission(@RequestBody User requestUser) {
        User user = userService.changePermission(requestUser);
        if (user == null) {
            return new Result(400);
        } else {
            System.out.println("200");
            System.out.println(user.getPermission());
            return new Result(200);
        }
    }

    @CrossOrigin
    @PostMapping(value = "api/admin/user/password")
    @ResponseBody
    public Result resetPassword(@RequestBody User requestUser) {
        User user = userService.resetPassword(requestUser);
        if (user == null) {
            return new Result(400);
        } else {
            return new Result(200);
        }
    }

    @CrossOrigin
    @PostMapping(value = "api/admin/user/deleteUser")
    @ResponseBody
    public Result deleteUser(@RequestBody User requestUser) {
        userService.deleteUser(requestUser);
        return new Result(200);
    }

    @CrossOrigin
    @PostMapping(value = "api/admin/register")
    @ResponseBody
    public Result register(@RequestBody User requestUser) {
        String id = requestUser.getId();
        String email = requestUser.getEmail();
        if (userService.isExist(id) || userService.isEmailExist(email)) {
            return new Result(400);
        } else {
            System.out.println(requestUser);
            userService.addAdminRegisterUser(requestUser);
            return new Result(200);
        }
    }

    @PostMapping("/api/admin/user")
    public User addOrUpdate(@RequestBody User user) throws Exception {
        userService.addOrUpdate(user);
        return user;
    }
}
