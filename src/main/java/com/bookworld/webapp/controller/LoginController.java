package com.bookworld.webapp.controller;



import com.bookworld.webapp.database.dao.UserDAO;
import com.bookworld.webapp.database.entity.User;
import com.bookworld.webapp.form.SignupFormBean;
import com.bookworld.webapp.security.AuthenticatedUserService;
import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
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


    @GetMapping("/login/login")
    public ModelAndView login() {
        ModelAndView response = new ModelAndView();

        // Check if the user is already authenticated
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication != null && authentication.isAuthenticated() && !(authentication instanceof AnonymousAuthenticationToken)) {
            // User is logged in, redirect to a home page
            response.setViewName("redirect:/index");
            return response;
        }

        // User is not logged in, show the login page
        response.setViewName("login/loginPage");
        return response;
    }


    @GetMapping("/login/signup")
    public ModelAndView signup() {
        ModelAndView response = new ModelAndView();

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication != null && authentication.isAuthenticated() && !(authentication instanceof AnonymousAuthenticationToken)) {
            // User is logged in, redirect to a home page
            response.setViewName("redirect:/index");
            return response;
        }

        response.setViewName("login/signupPage");

        return response;
    }

    @PostMapping("/login/signupSubmit")
    public ModelAndView signupSubmit(@Valid SignupFormBean form, BindingResult bindingResult, HttpSession session) {
        ModelAndView response = new ModelAndView();

        // Check for binding errors first
        if (bindingResult.hasErrors()) {
            response.setViewName("login/signupPage");
            response.addObject("bindingResult", bindingResult);
            response.addObject("form", form);
            return response;
        }

        // Validate that password and confirmPassword match
        if (!form.getPassword().equals(form.getConfirmPassword())) {
            bindingResult.rejectValue("password", "error.confirmPassword", "Passwords do not match");
            bindingResult.rejectValue("confirmPassword", "error.confirmPassword", "Passwords do not match");
            response.setViewName("login/signupPage");
            response.addObject("bindingResult", bindingResult);
            response.addObject("form", form);
            return response;
        }

        // Save user if no errors
        User user = new User();
        user.setEmail(form.getUsername());
        user.setFullName(form.getFullName());

        String encryptedPassword = passwordEncoder.encode(form.getPassword());
        user.setPassword(encryptedPassword);

        userDAO.save(user);

        authenticatedUserService.changeLoggedInUsername(session, form.getUsername(), form.getPassword());

        response.setViewName("redirect:/");
        return response;
    }


}
