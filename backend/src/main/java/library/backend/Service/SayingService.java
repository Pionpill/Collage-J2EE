/*
 * @Description: your project
 * @version: 1.0
 * @Author: Zero689,Pionpill
 * @LastEditors: Pionpill
 * @Date: 2021-12-26 16:50:31
 * @LastEditTime: 2021-12-31 13:39:33
 */
package library.backend.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import library.backend.dao.SayingDAO;
import library.backend.entity.Saying;

@Service
public class SayingService {
    @Autowired
    SayingDAO sayingDAO;

    public Saying getRandom() {
        int numberOfDate = (int)(sayingDAO.count());
        int randomID=(int)(Math.random()*numberOfDate + 1);//生成[1,numberOfDate]之间的随机整数。
        return sayingDAO.findSayingById(randomID);
    }
}