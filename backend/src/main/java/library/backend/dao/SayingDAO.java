/*
 * @Description: your project
 * @version: 1.0
 * @Author: Zero689,Pionpill
 * @LastEditors: Zero689
 * @Date: 2021-12-26 16:40:38
 * @LastEditTime: 2021-12-31 13:39:40
 */
package library.backend.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import library.backend.entity.Saying;

public interface SayingDAO extends JpaRepository<Saying, Integer> {
    Saying findSayingById(int id);
}
