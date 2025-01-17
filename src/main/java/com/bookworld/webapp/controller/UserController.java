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
import java.util.List;
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
        ModelAndView response = new ModelAndView("user/cart");
        User user = authenticatedUserService.loadCurrentUser();

        if (user != null) {
            Order order = orderDAO.findOrderByUserIdAndStatus(user.getId(), "cart");
            if (order != null) {
                response.addObject("order", order);
            } else {
                // If no cart exists, pass an empty Order object
                response.addObject("order", new Order());
            }
        } else {
            response.setViewName("redirect:/login/login");
        }

        return response;
    }

    @GetMapping("/user/history")
    public ModelAndView showUserHistory() {
        ModelAndView response = new ModelAndView("user/history");
        User user = authenticatedUserService.loadCurrentUser();

        if (user != null) {
            // Fetch completed orders for the user
            List<Order> completedOrders = orderDAO.findAllByUserIdAndStatus(user.getId(), "completed");
            response.addObject("completedOrders", completedOrders);
        } else {
            response.setViewName("redirect:/login/login");
        }

        return response;
    }





    @GetMapping("/cart/add/{bookId}")
    public String addToCart(@PathVariable Integer bookId, RedirectAttributes redirectAttributes) {

        if (bookId == null || bookId < 0) {
            return "redirect:/error/500";
        }

        User user = authenticatedUserService.loadCurrentUser();
        if (user == null) {
            return "redirect:/login/login";  // Redirect to login page if not authenticated
        }
        Integer userId = user.getId();

        Book book = bookDAO.findBookById(bookId);

        Order order = orderDAO.findOrderByUserIdAndStatus(userId, "cart");
        if (order == null) {
            order = new Order();
            order.setUser(user);
            order.setStatus("cart");
            Timestamp currentTime = new Timestamp(System.currentTimeMillis());
            order.setOrderDate(currentTime);
            orderDAO.save(order);
        }

        OrderDetail orderDetail = orderDetailDAO.findOrderDetailByBookIdAndOrderId(book.getId(), order.getId());
        if (orderDetail == null) {
            orderDetail = new OrderDetail();
            orderDetail.setOrder(order);
            orderDetail.setBook(book);
            orderDetail.setQuantity(1);
        } else {
            orderDetail.setQuantity(orderDetail.getQuantity() + 1);
        }
        orderDetailDAO.save(orderDetail);

        // Add success message to RedirectAttributes
        redirectAttributes.addFlashAttribute("message", "Added to Cart");

        // Redirect to book detail page with the success message
        return "redirect:/book/detail/" + bookId;
    }






    @PostMapping("/cart/update/quantity")
    public String updateQuantity(@RequestParam Integer orderDetailId,
                                 @RequestParam(required = false) String action,
                                 @RequestParam(required = false) Integer quantity,
                                 RedirectAttributes redirectAttributes) {
        OrderDetail orderDetail = orderDetailDAO.findOrderDetailById(orderDetailId);
        if (orderDetail != null) {
            String bookTitle = orderDetail.getBook().getTitle(); // Retrieve the book title
            if ("increase".equalsIgnoreCase(action)) {
                orderDetail.setQuantity(orderDetail.getQuantity() + 1);
                orderDetailDAO.save(orderDetail);
            } else if ("decrease".equalsIgnoreCase(action)) {
                if (orderDetail.getQuantity() > 1) {
                    orderDetail.setQuantity(orderDetail.getQuantity() - 1);
                    orderDetailDAO.save(orderDetail);
                } else {
                    orderDetailDAO.delete(orderDetail);
                    redirectAttributes.addFlashAttribute("message", "\"" + bookTitle + "\" has been removed from your cart.");
                }
            } else if (quantity != null) {
                if (quantity > 0) {
                    orderDetail.setQuantity(quantity);
                    orderDetailDAO.save(orderDetail);
                } else {
                    orderDetailDAO.delete(orderDetail);
                    redirectAttributes.addFlashAttribute("message", "\"" + bookTitle + "\" has been removed from your cart.");
                }
            }
        }
        return "redirect:/user/cart";
    }



    @PostMapping("/checkout")
    public String proceedToCheckout(RedirectAttributes redirectAttributes) {
        // Load the currently authenticated user
        User user = authenticatedUserService.loadCurrentUser();
        if (user == null) {
            // Redirect to login if user is not authenticated
            return "redirect:/login/login";
        }

        // Find the active cart order
        Order order = orderDAO.findOrderByUserIdAndStatus(user.getId(), "cart");
        if (order != null) {
            // Update order status to completed
            order.setStatus("completed");
            orderDAO.save(order);
            redirectAttributes.addFlashAttribute("message", "Checkout completed successfully!");
        } else {
            redirectAttributes.addFlashAttribute("error", "No active cart found!");
        }

        return "redirect:/user/history"; // Redirect to order history or confirmation page
    }


}
