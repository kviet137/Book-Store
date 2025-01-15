package com.bookworld.webapp.database.dao;

import com.bookworld.webapp.database.entity.Book;
import com.bookworld.webapp.database.entity.Order;
import com.bookworld.webapp.database.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface OrderDAO extends JpaRepository<Order, Long> {
    Order findActiveOrderByUserId(Integer userId);
    Order findOrderByUserIdAndStatus(Integer userId, String status);
}
