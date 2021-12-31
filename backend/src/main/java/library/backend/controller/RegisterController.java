/*
 * @Description: your project
 * @version: 1.0
 * @Author: Pionpill
 * @LastEditors: Pionpill
 * @Date: 2021-12-19 11:57:43
 * @LastEditTime: 2021-12-31 11:22:26
 */
package library.backend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import library.backend.Service.BookService;
import library.backend.Service.UserService;
import library.backend.entity.Book;
import library.backend.entity.User;
import library.backend.result.Result;

@Controller
public class RegisterController {
    @Autowired
    UserService userService;

    @CrossOrigin
    @PostMapping(value = "api/register")
    @ResponseBody
    public Result register(@RequestBody User requestUser) {
        String id = requestUser.getId();
        String email = requestUser.getEmail();
        if (userService.isExist(id) || userService.isEmailExist(email)) {
            return new Result(400);
        } else {
            System.out.println(requestUser);
            userService.addRegisterUser(requestUser);
            return new Result(200);
        }
    }

    @Autowired
    BookService bookservice;
    @CrossOrigin
    @PostMapping(value = "api/registerBook")
    @ResponseBody
    public Result registerBook(@RequestBody Book requestBook){
        int id = requestBook.getId();
        if (bookservice.isExist(id)) {
            return new Result(400);
        } else {
            bookservice.addRegisterBook(requestBook);
            return new Result(200);
        }
    }
}
