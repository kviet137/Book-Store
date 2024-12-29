package com.bookworld.webapp.controller;


import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Slf4j
@Controller
public class userCartController {

    @GetMapping(value = "/user/cart")
    public ModelAndView showItemDetails() {
        ModelAndView response = new ModelAndView();
        response.setViewName("user/userCart");

        return response;
    }
}
