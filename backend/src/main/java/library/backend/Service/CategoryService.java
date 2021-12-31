/*
 * @Author: Titc-s
 * @Author: Pionpill
 * @Date: 2021-12-19 12:56:12
 * @LastEditors: Pionpill
 */
package library.backend.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import library.backend.dao.CategoryDAO;
import library.backend.entity.Category;

@Service
public class CategoryService {
    @Autowired
    CategoryDAO categoryDAO;

    public List<Category> list() {
        // springboot 2.2 之后 sort 构造函数变为私有
        Sort sort = Sort.by(Sort.Direction.DESC, "id");
        return categoryDAO.findAll(sort);
    }

    public Category get(int id) {
        Category c= categoryDAO.findById(id).orElse(null);
        return c;
    }
}