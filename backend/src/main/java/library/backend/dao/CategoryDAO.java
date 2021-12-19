/*
 * @Author: Rooter
 * @Date: 2021-12-19 12:55:02
 * @LastEditors: Rooter
 */
package library.backend.dao;

import java.util.Locale.Category;

import org.springframework.data.jpa.repository.JpaRepository;

public interface CategoryDAO extends JpaRepository<Category, Integer>{
    
}
