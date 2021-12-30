/*
 * @Description: your project
 * @version: 1.0
 * @Author: Pionpill
 * @LastEditors: Pionpill
 * @Date: 2021-12-30 21:23:51
 * @LastEditTime: 2021-12-30 21:31:17
 */
package library.backend.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import library.backend.entity.Article;

public interface ArticleDAO extends JpaRepository<Article, Integer> {
    Article findById(int id);
    
}
