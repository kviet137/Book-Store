package com.bookworld.webapp.controller;


import com.bookworld.webapp.database.dao.BookDAO;
import com.bookworld.webapp.database.dao.OrderDAO;
import com.bookworld.webapp.database.dao.OrderDetailDAO;
import com.bookworld.webapp.database.entity.Book;
import com.bookworld.webapp.database.entity.Order;
import com.bookworld.webapp.database.entity.OrderDetail;
import com.bookworld.webapp.database.entity.User;
import com.bookworld.webapp.security.AuthenticatedUserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.sql.Timestamp;
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
    @Autowired
    private AuthenticatedUserService authenticatedUserService;

    @GetMapping(value = "/user/cart")
    public ModelAndView showUserCart() {
        ModelAndView response = new ModelAndView();
        response.setViewName("user/cart");

        return response;
    }

    @GetMapping(value = "/user/history")
    public ModelAndView showUserHistory() {
        ModelAndView response = new ModelAndView();
        response.setViewName("user/history");

        return response;
    }



    @GetMapping("/cart/add/{bookId}")
    public ModelAndView addToCart(@PathVariable Integer bookId) {

        ModelAndView response = new ModelAndView();
        response.setViewName("user/cart");

        if (bookId == null || bookId < 0) {
            response.setViewName("redirect:/error/500");
            return response;
        }

        User user = authenticatedUserService.loadCurrentUser();
        if (user == null) {
            // If user is not authenticated, redirect to login page or show error message
            response.setViewName("redirect:/login/login");  // Or your login URL
            return response;
        }
        Integer userId = user.getId();

        Book book = bookDAO.findBookById(bookId);

        Order order = orderDAO.findOrderByUserIdAndStatus(userId,"cart");
        if (order == null) {
            order = new Order();
            order.setUser(user);
            order.setStatus("cart");
            Timestamp currentTime = new Timestamp(System.currentTimeMillis());
            order.setOrderDate(currentTime);
            orderDAO.save(order);

        }


        OrderDetail orderDetail = orderDetailDAO.findOrderDetailByBookIdAndOrderId(book.getId(),order.getId());
        if (orderDetail == null) {
            orderDetail = new OrderDetail();
            orderDetail.setOrder(order);
            orderDetail.setBook(book);
            orderDetail.setQuantity(1);
            //need to set total amount

        }else{
            orderDetail.setQuantity(orderDetail.getQuantity()+1);
        }
        orderDetailDAO.save(orderDetail);
        response.addObject("orderDetail", orderDetail);

        response.setViewName("redirect:/user/cart");
        return response;
    }

//    @PostMapping("/cart/remove")
//    public String removeFromCart(@RequestParam Integer orderDetailId, @RequestParam Integer userId, RedirectAttributes redirectAttributes) {
//        Integer orderDetail = orderDetailDAO.findById(orderDetailId);
//        if (orderDetail != null) {
//            orderDetailDAO.deleteById(orderDetail);
//        }
//
//        // Fetch the updated cart
//        Order order = orderDAO.findActiveOrderByUserId(userId);
//        redirectAttributes.addFlashAttribute("order", order);
//
//        return "redirect:/cart/view?userId=" + userId;
//    }



//    @GetMapping("/cart/view")
//    public ModelAndView viewCart(@RequestParam Integer userId) {
//        ModelAndView response = new ModelAndView("user/cart");
//        Order order = orderDAO.findActiveOrderByUserId(userId);
//        response.addObject("order", order);
//        return response;
//    }
}
