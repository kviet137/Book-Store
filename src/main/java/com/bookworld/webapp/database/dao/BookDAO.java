package com.bookworld.webapp.database.dao;

import com.bookworld.webapp.database.entity.Book;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public interface BookDAO extends JpaRepository<Book, Long> {

    List<Book> findAllBooksByAuthor(String author);
    Book findBookByTitle(String title);

}
