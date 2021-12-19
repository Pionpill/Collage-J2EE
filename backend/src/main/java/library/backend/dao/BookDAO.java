/*
 * @Author: Rooter
 * @Author: Pionpill
 * @Date: 2021-12-19 12:51:34
 * @LastEditors: Pionpill
 */
package library.backend.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import library.backend.entity.Book;
import library.backend.entity.Category;

public interface BookDAO extends  JpaRepository<Book,Integer>{
    List<Book> findAllByCategory(Category category);  // Books 类注解实现
    List<Book> findAllByTitleLikeOrAuthorLike(String keyword1, String keyword2);
}
