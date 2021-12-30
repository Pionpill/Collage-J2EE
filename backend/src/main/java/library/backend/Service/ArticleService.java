/*
 * @Description: your project
 * @version: 1.0
 * @Author: Pionpill
 * @LastEditors: Pionpill
 * @Date: 2021-12-30 21:32:19
 * @LastEditTime: 2021-12-30 22:41:58
 */
package library.backend.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import library.backend.dao.ArticleDAO;
import library.backend.entity.Article;

@Service
public class ArticleService {
    @Autowired
    ArticleDAO articleDAO;
    
    public Page list(int page, int size) {
        Sort sort = Sort.by(Sort.Direction.DESC, "id");
        return articleDAO.findAll(PageRequest.of(page, size, sort));
    }


    public List<Article> list() {
        Sort sort = Sort.by(Sort.Direction.DESC, "id");
        return articleDAO.findAll(sort);
    }

    public Article findById(int id) {
        return articleDAO.findById(id);
    }

    public void addOrUpdate(Article article) {
        articleDAO.save(article);
    }

    public void delete(int id) {
        articleDAO.deleteById(id);
    }

}
