/*
 * @Description: your project
 * @version: 1.0
 * @Author: Pionpill
 * @LastEditors: Pionpill
 * @Date: 2021-12-19 11:57:43
 * @LastEditTime: 2021-12-30 15:35:16
 */
package library.backend.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import library.backend.dao.UserDAO;
import library.backend.entity.User;

@Service
public class UserService {
    @Autowired
    UserDAO userDAO;

    public boolean isExist(String id) {
        User user = getById(id);
        return null != user;
    }

    public boolean isEmailExist(String email) {
        User user = getByEmail(email);
        return null != user;
    }

    public User getByName(String username) {
        return userDAO.findByUsername(username);
    }

    public User get(String username, String password) {
        return userDAO.getByUsernameAndPassword(username, password);
    }

    public User add(User user) {
        return userDAO.save(user);
    }

    public User getById(String id) {
        return userDAO.getById(id);
    }

    public User getByEmail(String email) {
        return userDAO.getByEmail(email);
    }

    public Boolean addRegisterUser(User originUser) {
        User newUser = renewUser(originUser);
        if (this.add(newUser) != null)
            return true;
        else
            return false;
    }
    
    public List<User> list() {
        return userDAO.findAll();
    }

    public User changePermission(User requestUser) {
        String id = requestUser.getId();
        User newUser = userDAO.getById(id);
        if (newUser.getPermission() == 1) {
            newUser.setPermission(2);
            System.out.println(newUser.getPermission());
        } else if (newUser.getPermission() == 2) {
            newUser.setPermission(1);
            System.out.println(newUser.getPermission());
        }
        return userDAO.save(newUser);
    }
    
    public User resetPassword(User requestUser) {
        String id = requestUser.getId();
        User newUser = userDAO.getById(id);
        newUser.setPassword("123456");
        return userDAO.save(newUser);
    }

    public void deleteUser(User requestUser) {
        userDAO.delete(requestUser);
    }

    private User renewUser(User requestUser) {
        User newUser = new User();
        newUser.setId(requestUser.getId());
        newUser.setUsername(requestUser.getUsername());
        newUser.setPassword(requestUser.getPassword());
        newUser.setEmail(requestUser.getEmail());
        return newUser;
    }
}