package com.example.sell_ads.configurations;

import com.example.sell_ads.services.CustomUserDetailsService;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configurers.LogoutConfigurer;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
@EnableWebSecurity
@RequiredArgsConstructor
public class SecurityConfig {
    private final CustomUserDetailsService userDetailsService;


    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http)
            throws Exception {
        http
                .authorizeHttpRequests(authorizeRequests ->
                        authorizeRequests
                                .requestMatchers("/product/delete/**",
                                        "/product/create", "/admin").hasRole(
                                        "ADMIN")
                                .requestMatchers("/product/delete/**",
                                        "/product/create").hasRole("USER"
                                )
                                .requestMatchers("/", "/product/**",
                                        "/images/**",
                                        "/registration", "/user/**").permitAll()
                                .anyRequest().authenticated()
                )
                .formLogin(t -> t.loginPage("/login").permitAll())
                .logout(LogoutConfigurer::permitAll
                );
        return http.build();
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder(8);
    }


}
