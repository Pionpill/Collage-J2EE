/*
 * @Author: Titc-s Pionpill
 * @Date: 2021-12-19 13:01:31
 * @LastEditors: Pionpill
 */
package library.backend.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import library.backend.dao.BookDAO;
import library.backend.entity.Book;
import library.backend.entity.Category;

@Service
public class BookService {
    @Autowired
    BookDAO bookDAO;
    @Autowired
    CategoryService categoryService;

    public List<Book> list() {
        Sort sort = Sort.by(Sort.Direction.DESC, "id");
        return bookDAO.findAll(sort);
    }

    public Book addOrUpdate(Book book) {
        return bookDAO.save(book);
    }

    public void deleteById(int id) {
        bookDAO.deleteById(id);
    }

    public List<Book> listByCategory(int cid) {
        Category category = categoryService.get(cid);
        return bookDAO.findAllByCategory(category);
    }

    public List<Book> Search(String keywords) {
        return bookDAO.findAllByTitleLikeOrAuthorLike('%' + keywords + '%', '%' + keywords + '%');
    }

    public void deleteBook(Book requestBook){
        bookDAO.delete(requestBook);
    }

    public Boolean addRegisterBook(Book originBook){
        Book newBook = renewBook(originBook);
        if(this.addOrUpdate(newBook)!=null)
            return true;
        else 
            return false;
    }

    private Book renewBook(Book requestBook){
        Book newBook = new Book();
        newBook.setId(requestBook.getId());
        newBook.setTitle(requestBook.getTitle());
        newBook.setAuthor(requestBook.getAuthor());
        newBook.setDate(requestBook.getDate());
        newBook.setPress(requestBook.getPress());
        newBook.setCategory(requestBook.getCategory());
        return newBook;
    }

    public Book getById(int id) {
        return bookDAO.getById(id);
    }

    public boolean isExist(int id) {
        Book book = getById(id);
        return null != book;
    }

}
