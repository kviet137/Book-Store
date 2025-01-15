package com.bookworld.webapp.controller;


import com.bookworld.webapp.database.dao.BookDAO;
import com.bookworld.webapp.database.dao.OrderDAO;
import com.bookworld.webapp.database.dao.OrderDetailDAO;
import com.bookworld.webapp.database.entity.Book;
import com.bookworld.webapp.database.entity.Order;
import com.bookworld.webapp.database.entity.OrderDetail;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.Date;
import java.util.Optional;

@Slf4j
@Controller
public class UserController {

    @Autowired
    private BookDAO bookDAO;

    @Autowired
    private OrderDAO orderDAO;

    @Autowired
    private OrderDetailDAO orderDetailDAO;

    @GetMapping(value = "/user/cart")
    public ModelAndView showUserCart() {
        ModelAndView response = new ModelAndView();
        response.setViewName("cart");

        return response;
    }

    @GetMapping(value = "/user/history")
    public ModelAndView showUserHistory() {
        ModelAndView response = new ModelAndView();
        response.setViewName("history");

        return response;
    }



    @PostMapping("/cart/add")
    public ModelAndView addToCart(@RequestParam Integer bookId, @RequestParam Integer userId, @RequestParam Integer quantity) {
        ModelAndView response = new ModelAndView("redirect:/user/userCart");

        // Fetch the book
        Book book = bookDAO.findBookById(bookId);
        if (book == null) {
            response.addObject("error", "Book not found");
            return response;
        }

        // Fetch or create the user's cart (order)
        Order order = orderDAO.findActiveOrderByUserId(userId);
        if (order == null) {
            order = new Order();
            order.setUserId(userId);
            order.setOrderDate(new Date());
            order.setTotalAmount(0); // Set to 0 initially, calculate later
            orderDAO.save(order);
        }

        // Check if the book is already in the cart
        Optional<OrderDetail> existingDetail = order.getOrderDetails().stream()
                .filter(detail -> detail.getBookId().equals(bookId))
                .findFirst();

        if (existingDetail.isPresent()) {
            OrderDetail detail = existingDetail.get();
            detail.setQuantity(detail.getQuantity() + quantity);
            orderDetailDAO.save(detail);
        } else {
            OrderDetail detail = new OrderDetail();
            detail.setOrder(order);
            detail.setBook(book);
            detail.setQuantity(quantity);
            orderDetailDAO.save(detail);
        }

        // Update order total amount
//        int totalAmount = order.getOrderDetails().stream()
//                .mapToInt(detail -> detail.getBook().getPrice() * detail.getQuantity())
//                .sum();
//        order.setTotalAmount(totalAmount);
        orderDAO.save(order);

        return response;
    }

    @GetMapping("/cart/view")
    public ModelAndView viewCart(@RequestParam Integer userId) {
        ModelAndView response = new ModelAndView("cart/view");
        Order order = orderDAO.findActiveOrderByUserId(userId);
        response.addObject("order", order);
        return response;
    }
}
