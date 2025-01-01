package com.bookworld.webapp.controller;



import com.bookworld.webapp.database.dao.UserDAO;
import com.bookworld.webapp.database.entity.User;
import com.bookworld.webapp.form.SignupFormBean;
import com.bookworld.webapp.security.AuthenticatedUserService;
import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Slf4j
@Controller
public class LoginController {

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Autowired
    private UserDAO userDAO;


    @Autowired
    private AuthenticatedUserService authenticatedUserService;


    //the mapping need to match the spring security config .. .loginPage method
    @GetMapping("/login/login")
    public ModelAndView createCustomer() {
        ModelAndView response = new ModelAndView();

        response.setViewName("login/loginPage");

        return response;
    }

    @GetMapping("/login/signup")
    public ModelAndView signup() {
        ModelAndView response = new ModelAndView();

        response.setViewName("login/signup");

        return response;
    }

    @PostMapping("/login/signupSubmit")
    public ModelAndView signupSubmit(@Valid SignupFormBean form, BindingResult bindingResult, HttpSession session) {

        ModelAndView response = new ModelAndView();

        if (bindingResult.hasErrors()) {
            response.setViewName("login/signup");
            response.addObject("bindingResult", bindingResult); //"bindingResult" is linked to the jsp page
            response.addObject("form", form);
        } else{
            User user = new User();
            user.setUsername(form.getUsername());
            user.setEmail(form.getEmail());

            String encryptedPassword = passwordEncoder.encode(form.getPassword());
            user.setPassword(encryptedPassword);

            userDAO.save(user);

            authenticatedUserService.changeLoggedInUsername(session, form.getUsername(), form.getPassword());

            response.setViewName("redirect:/");
        }



        return response;

    }

}
