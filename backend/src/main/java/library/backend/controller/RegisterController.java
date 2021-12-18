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

        User user = UserService.add(requestUser);

        if (user == null) {
            return new Result(400);
        } else {
            return new Result(200);
        }
    }
}
