package com.bookworld.webapp.form;


import jakarta.validation.constraints.NotEmpty;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class SignupFormBean {


    @NotEmpty(message = "Email is required")
    private String username;

    @NotEmpty(message = "Password is required")
    private String password;

    @NotEmpty(message = "Full Name is required")
    private String fullName;




}
