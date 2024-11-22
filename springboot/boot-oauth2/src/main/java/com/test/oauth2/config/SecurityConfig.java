package com.test.oauth2.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.web.SecurityFilterChain;

import com.test.oauth2.service.CustomOAuth2UserService;

import lombok.RequiredArgsConstructor;

@Configuration
@EnableWebSecurity
@RequiredArgsConstructor
public class SecurityConfig {

	private final CustomOAuth2UserService customOAuth2UserService;
	
	@Bean
	public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
		
		//CSRF > 잠시 중지
		http.csrf(auth -> auth.disable());
		
		//Form Login > 사용 안함 > 소셜 인증
		http.formLogin(auth -> auth.disable());
		
		//기본 인증 > 사용 안함 즉, 로컬에서 하는 모든 인증을 비활성화한다는 의미
		http.httpBasic(auth -> auth.disable());
		
		//허가 URL
		http.authorizeHttpRequests(auth -> auth
					.requestMatchers("/", "/login/**", "/auth2/**").permitAll()
					.anyRequest().authenticated()
		);
		
		//소셜 로그인 설정
		http.oauth2Login(auth -> auth
					.loginPage("/login")
					.userInfoEndpoint(config -> config.userService(customOAuth2UserService))
		);
		
		return http.build();
		
	}
	
}
