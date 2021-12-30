/*
 * @Author: Rooter
 * @Date: 2021-12-30 20:47:34
 * @LastEditors: Rooter
 * @LastEditTime: 2021-12-30 21:02:59
 */
package library.backend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import library.backend.Service.BookService;
import library.backend.entity.Book;
import library.backend.result.Result;

@RestController
public class BookController {
    @Autowired
    BookService bookService;

    @GetMapping("api/admin/book")
    public List<Book> listbooks() throws Exception{
        return bookService.list();
    }

    @CrossOrigin
    @PostMapping(value = "api/admin/book/deleteBook")
    @ResponseBody
    public Result deleteBook(@RequestBody Book requestBook){
        bookService.deleteBook(requestBook);
        return new Result(200);
    }

}
