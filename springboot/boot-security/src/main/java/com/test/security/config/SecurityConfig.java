package com.test.security.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

@Configuration	//스프링 컨텍스트
@EnableWebSecurity	//시큐리티
public class SecurityConfig {
	
	//스프링 빈 == 설정 역할
	//<bean class="SecurityFilterChain">
	
	//대부분의 스프링 시큐리티 설정을 이 빈에서 한다.
	@Bean
	public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
		
		//URI 허가
		http.authorizeHttpRequests(auth -> auth
									.requestMatchers("/").permitAll()	//모든 사람이 접근 가능 허용
									.requestMatchers("/login").permitAll()
									.requestMatchers("/join", "/joinok").permitAll()
									.requestMatchers("/my").hasAnyRole("MEMBER", "ADMIN")	//제시된 것 중 하나만 만족해도 접근 가능
									.requestMatchers("/admin").hasRole("ADMIN")
									.anyRequest().authenticated()	//나머지 경로 > 인증 사용자만
		);
		
		//CSRF 토큰 해제
		//http.csrf(auth -> auth.disable());
		
		//커스텀 로그인 설정
		http.formLogin(auth -> auth
						.loginPage("/login")	//사용자 로그인 페이지 URL
						.defaultSuccessUrl("/")
						.loginProcessingUrl("/loginok").permitAll()
						);
		
		return http.build();
	}

	//BCrypt 암호화 객체
	@Bean
	public BCryptPasswordEncoder bCryptPasswordEncoder() {

		return new BCryptPasswordEncoder();
	}
	
	//로그아웃 설정
	@Bean
	public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
		
		http.logout(auth -> auth
						.logoutUrl("/logout")
						.logoutSuccessUrl("/")
			);
		
		return http.build();
	}
	
	
	
	
}


















