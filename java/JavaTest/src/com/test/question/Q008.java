package com.test.question;

public class Q008 {
	
	public static void main(String[] args) {
		
		//Q008.java 인삿말을 출력하는 메소드 3개를 선언하시오.
		//조건]	- void hello()
		//		- void introduce()
		//		- void bye()
		
		//호출] hello();
		//		introduce();            
		//		bye();
		
		//출력]	안녕하세요.
		//		저는 홍길동입니다.
		//		안녕히가세요.
		
		hello();
		introduce();            
		bye();
		
		
	}//main
	
	public static void hello() {
		
		System.out.println("안녕하세요.");
	}
	
	public static void introduce() {
		
		System.out.println("저는 홍길동입니다.");
	}
	
	public static void bye() {
		
		System.out.println("안녕히가세요.");
	}
	
	
}
