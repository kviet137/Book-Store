package com.bookworld.webapp.form;


import com.bookworld.webapp.validation.EmailUnique;
import jakarta.validation.constraints.NotEmpty;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class SignupFormBean {

    @EmailUnique(message = "Email already been used")
    @NotEmpty(message = "Email is required")
    private String username;

    @NotEmpty(message = "Password is required")
    private String password;

    @NotEmpty(message = "Full Name is required")
    private String fullName;




}
