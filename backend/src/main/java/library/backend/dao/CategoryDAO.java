/*
 * @Author: Rooter
 * @Author: Pionpill
 * @Date: 2021-12-19 12:55:02
 * @LastEditors: Pionpill
 */
package library.backend.dao;


import org.springframework.data.jpa.repository.JpaRepository;

import library.backend.entity.Category;

public interface CategoryDAO extends JpaRepository<Category, Integer>{
    
}
