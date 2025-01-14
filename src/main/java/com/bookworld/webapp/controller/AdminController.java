package com.bookworld.webapp.controller;

import com.bookworld.webapp.database.dao.BookDAO;
import com.bookworld.webapp.database.entity.Book;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Slf4j
@Controller
public class AdminController {

    @Autowired
    BookDAO bookDAO;

    @GetMapping(value = "/admin/admin")
    public ModelAndView showAdmin() {
        ModelAndView response = new ModelAndView();
        response.setViewName("admin/admin");

        return response;
    }


    @GetMapping(value = "/admin/search")
    public ModelAndView showSearchedBookList(@RequestParam(required = false)String title) {
        ModelAndView response = new ModelAndView("admin/admin");

        response.addObject("title", title);
        if (title != null) {
            List<Book> books = bookDAO.findByTitleIgnoreCaseContaining(title);
            response.addObject("booksKey", books);
        }

        return response;
    }

}
