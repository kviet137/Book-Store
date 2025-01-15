package com.bookworld.webapp.database.dao;


import com.bookworld.webapp.database.entity.Book;
import com.bookworld.webapp.database.entity.OrderDetail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface OrderDetailDAO extends JpaRepository<OrderDetail, Long> {

}
