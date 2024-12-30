package com.bookworld.webapp.form;

import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import org.hibernate.validator.constraints.Length;

public class CreateBookFormBean {

    private Integer id;

    @Length(max = 50, message = "title must be less than 50 characters.")
    @NotEmpty(message = "title is required.")
    private String title;

    @Length(max = 50, message = "author must be less than 50 characters.")
    @NotEmpty(message = "author is required.")
    private String author;


    @NotNull(message = "price is required.")
    private Double price;

    @Length(max = 50, message = "genre must be less than 50 characters.")
    @NotEmpty(message = "genre is required.")
    private String genre;

    @Length(max = 5000)
    private String description;
}
