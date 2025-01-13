package com.bookworld.webapp.controller;


import com.bookworld.webapp.database.dao.BookDAO;
import com.bookworld.webapp.database.entity.Book;
import com.bookworld.webapp.form.CreateBookFormBean;
import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Slf4j
@Controller
public class BookController {

    @Autowired
    BookDAO bookDAO;


    @GetMapping(value = "/book/detail")
    public ModelAndView showBookDetails() {
        ModelAndView response = new ModelAndView();
        response.setViewName("book/bookDetails");

        return response;
    }



    @GetMapping(value = "/book/search")
    public ModelAndView showSearchedBookList(@RequestParam(required = false)String author) {
        ModelAndView response = new ModelAndView("book/bookSearch");

        response.addObject("author", author);
        if (author != null) {
            List<Book> books = bookDAO.findAllBooksByAuthor(author);
            response.addObject("booksKey", books);
        }

        return response;
    }

    @GetMapping("/book/create")
    public ModelAndView createBook() {
        ModelAndView response = new ModelAndView();

        response.setViewName("book/bookCreate");

        return response;
    }

    @PostMapping("/book/createBook")
    public ModelAndView createBookSubmit(@Valid CreateBookFormBean form, BindingResult bindingResult) throws Exception {
        ModelAndView response = new ModelAndView();

        response.setViewName("book/bookCreate");

        if (bindingResult.hasErrors()) {
            for (ObjectError error : bindingResult.getAllErrors()) {
                log.debug(error.toString());
            }
            response.setViewName("book/bookCreate");
            response.addObject("bindingResult", bindingResult);
            response.addObject("form", form);
        }
        else{
            Book book = bookDAO.findBookById(form.getId());
            if (book == null) {
                book = new Book();
            }

            book.setTitle(form.getTitle());
            book.setAuthor(form.getAuthor());
            book.setPrice(form.getPrice());
            book.setGenre(form.getGenre());
            book.setDescription(form.getDescription());

            bookDAO.save(book);
            response.setViewName("redirect:/book/edit/" + book.getId());

        }

        return response;
    }

    @GetMapping("/book/edit/{bookId}")
    public ModelAndView editBook(@PathVariable Integer bookId) {
        ModelAndView response = new ModelAndView();

        response.setViewName("book/bookCreate");
        Book book = bookDAO.findBookById(bookId);
        CreateBookFormBean form = new CreateBookFormBean();

        form.setId(book.getId());
        form.setTitle(book.getTitle());
        form.setAuthor(book.getAuthor());
        form.setPrice(book.getPrice());
        form.setGenre(book.getGenre());
        form.setDescription(book.getDescription());

        response.addObject("form", form);

        return response;
    }


}
