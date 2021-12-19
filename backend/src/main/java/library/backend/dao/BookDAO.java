/*
 * @Author: Rooter
 * @Date: 2021-12-19 12:51:34
 * @LastEditors: Rooter
 */
package library.backend.dao;

import java.util.List;
import java.util.Locale.Category;

import org.springframework.data.jpa.repository.JpaRepository;

import library.backend.entity.Book;

public interface BookDAO extends  JpaRepository<Book,Integer>{
    List<Book> findAllByCategory(Category category);
    List<Book> findAllByTitleLikeOrAuthorLike(String keyword1, String keyword2);
}
