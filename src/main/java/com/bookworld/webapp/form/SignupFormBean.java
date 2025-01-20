package com.bookworld.webapp.form;


import com.bookworld.webapp.validation.EmailUnique;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Pattern;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class SignupFormBean {

    @Pattern(regexp ="^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,6}$", message = "Please enter a valid email." )
    @EmailUnique(message = "Email already been used.")
    @NotEmpty(message = "Email is required.")
    private String username;

    @NotEmpty(message = "Password is required.")
    private String password;

    @NotEmpty(message = "Confirm Password is required.")
    private String confirmPassword;

    @NotEmpty(message = "Full Name is required.")
    private String fullName;




}
