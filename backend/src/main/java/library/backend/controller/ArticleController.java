/*
 * @Description: your project
 * @version: 1.0
 * @Author: Pionpill
 * @LastEditors: Pionpill
 * @Date: 2021-12-30 21:38:06
 * @LastEditTime: 2021-12-31 00:50:38
 */
package library.backend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import library.backend.Service.ArticleService;
import library.backend.entity.Article;
import library.backend.result.Result;

@RestController
public class ArticleController {
    @Autowired
    ArticleService articleService;

    @PostMapping("api/admin/content/article")
    public Result saveArticle(@RequestBody Article article) {
        articleService.addOrUpdate(article);
        return new Result(200);
    }

    @GetMapping("/api/article/{size}/{page}")
    public Page listArticles(@PathVariable("size") int size, @PathVariable("page") int page) {
        return articleService.list(page - 1, size);
    }

    @GetMapping("/api/note/article/{id}")
    public Article getOneArticle(@PathVariable("id") int id) {
        return articleService.findById(id);
    }


    @DeleteMapping("/api/admin/content/article/{id}")
    public Result deleteArticle(@PathVariable("id") int id) {
        articleService.delete(id);
        return new Result(200);
    }
}
