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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;

@Slf4j
@Controller
public class BookController {

    @Autowired
    BookDAO bookDAO;


    @GetMapping(value = "/book/detail/{bookId}")
    public ModelAndView showBookDetails(@PathVariable Integer bookId) {
        ModelAndView response = new ModelAndView();

        response.setViewName("book/bookDetails");
        Book book = bookDAO.findBookById(bookId);
        response.addObject("book", book);


        return response;
    }



    @GetMapping(value = "/book/search")
    public ModelAndView showSearchedBookList(@RequestParam(required = false)String bookTitle) {
        ModelAndView response = new ModelAndView("book/bookSearch");

        response.addObject("bookTitle", bookTitle);
        if (bookTitle != null) {
            List<Book> books = bookDAO.findByTitleIgnoreCaseContaining(bookTitle);
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
    public ModelAndView createBookSubmit(@Valid CreateBookFormBean form, BindingResult bindingResult, RedirectAttributes redirectAttributes) throws Exception {
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

            log.debug("uploaded filename = " + form.getUpload().getOriginalFilename() + " size = " + form.getUpload().getSize());

            if (form.getUpload() != null && form.getUpload().getOriginalFilename() != null && !form.getUpload().getOriginalFilename().isEmpty()) {
                String filename = form.getUpload().getOriginalFilename();
                String pathToSave = "./src/main/webapp/pub/images/" + filename;

                // Save the file
                Files.copy(form.getUpload().getInputStream(), Paths.get(pathToSave), StandardCopyOption.REPLACE_EXISTING);

                // Construct the URL and set it in the book object
                String url = "/pub/images/" + filename;
                book.setImageUrl(url);
            } else {
                // No new file uploaded
                String existingUrl = book.getImageUrl();
                book.setImageUrl(existingUrl != null ? existingUrl : "/pub/images/default.png"); // Use default if no existing URL
            }


            bookDAO.save(book);
            redirectAttributes.addFlashAttribute("message", "\"" + form.getTitle() + "\" has been added/modified.");
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

//        String url = "/pub/images/" + form.getImage().getOriginalFilename();
//        form.setImage(book.getImage(url));

        response.addObject("form", form);

        return response;
    }


}
