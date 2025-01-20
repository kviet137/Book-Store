package com.bookworld.webapp.config;


import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class SecurityConfig {

    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {

        http.csrf(csrf -> csrf.disable());

        http.authorizeRequests()
                .requestMatchers(
                        new AntPathRequestMatcher("/admin/**"),
                        new AntPathRequestMatcher("/book/edit/**"),
                        new AntPathRequestMatcher("/book/create"),
                        new AntPathRequestMatcher("/book/createBook"),
                        new AntPathRequestMatcher("/user/history")).authenticated()
                .anyRequest().permitAll();

        http.formLogin(formLogin -> formLogin
                .loginPage("/login/login")
                .loginProcessingUrl("/login/loginSubmit"));

        http.logout(formLogout -> formLogout
                .invalidateHttpSession(true)
                .logoutUrl("/login/logout")
                .logoutSuccessUrl("/")
                .deleteCookies("username", "JSESSIONID"));


        http.exceptionHandling(exception -> exception
                .accessDeniedPage("/404"));


        return http.build();
    }

    @Bean(name = "passwordEncoder")
    public PasswordEncoder getPasswordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public AuthenticationManager authenticationManager(AuthenticationConfiguration authConfig) throws Exception {
        return authConfig.getAuthenticationManager();
    }

}

