/*
 * @Description: your project
 * @version: 1.0
 * @Author: Zero689,Pionpill
 * @LastEditors: Zero689
 * @Date: 2021-12-18 22:03:33
 * @LastEditTime: 2021-12-31 13:35:16
 */
package library.backend.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import library.backend.entity.User;

public interface UserDAO extends JpaRepository<User, Integer> {
    // 查询用户
    User findByUsername(String username);
    User getByUsernameAndPassword(String username, String password);
    User getById(String id);
    User getByEmail(String email);
}
