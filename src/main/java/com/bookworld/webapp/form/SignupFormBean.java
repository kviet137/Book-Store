package com.bookworld.webapp.form;


import jakarta.validation.constraints.NotEmpty;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class SignupFormBean {


    @NotEmpty(message = "username is required")
    private String username;

    //@EmailUnique(message = "email already been used")
    @NotEmpty(message = "email is required")
    private String email;

    @NotEmpty(message = "password is required")
    private String password;




}
