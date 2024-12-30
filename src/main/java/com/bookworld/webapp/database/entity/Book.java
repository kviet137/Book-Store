package com.bookworld.webapp.database.entity;


import jakarta.persistence.*;
import lombok.*;

@Getter
@Setter
@ToString
@Entity
@Table(name = "books")
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode
public class Book {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "title")
    private String title;

    @Column(name = "author")
    private String author;


    @Column(name = "price", columnDefinition = "DECIMAL")
    private Double price;

    @Column(name = "genre")
    private String genre;

    @Column(name = "description")
    private String description;

}
