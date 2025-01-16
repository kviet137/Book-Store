package com.bookworld.webapp.database.entity;


import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "order_details")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
public class OrderDetail {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "book_id", nullable = false)
    @ToString.Exclude
    private Book book;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "order_id", nullable = false)
    @ToString.Exclude
    private Order order;


    @Column(name = "order_id",insertable=false, updatable=false)
    private Integer orderId;

    @Column(name = "book_id",insertable=false, updatable=false)
    private Integer bookId;

    @Column(name = "quantity")
    private Integer quantity;

    @Column(name = "total_amount", columnDefinition = "DECIMAL")
    private Double totalAmount;

}
