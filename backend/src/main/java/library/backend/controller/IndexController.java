/*
 * @Description: your project
 * @version: 1.0
 * @Author: Zero689
 * @LastEditors: Zero689
 * @Date: 2021-12-26 17:01:31
 * @LastEditTime: 2021-12-31 13:39:12
 */
package library.backend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import library.backend.Service.SayingService;
import library.backend.entity.Saying;

@RestController
public class IndexController {
    @Autowired
    SayingService SayingService;

    @GetMapping("/api/welcome")
    /**
     * @description: 随机获取一条名言数据
     * @Author: Zero689
     * @return {名言实例}
     */    
    public Saying radomSaying() {
        Saying saying = SayingService.getRandom();
        return saying;
    }
}
