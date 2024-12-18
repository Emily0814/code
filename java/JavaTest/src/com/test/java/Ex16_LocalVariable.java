package com.test.java;

public class Ex16_LocalVariable {
	
	int b = 20; //멤버 변수
	
	public static void main(String[] args) {
		
		//Ex16_LocalVariable.java
		/*
			
			자바의 변수
			- 선언된 위치, 역할
			
			1. 멤버 변수, Member Variable
				- 클래스 수업
				- 클래스내에서 선언한 변수
			
			2. 지역 변수, Local Variable
				- 여태까지 사용한 변수
				- 메서드내에서 선언한 변수
		 		- 변수 스코프(Scope)  > 변수의 사용 영역(***) > 자신이 포함된 메서드 영역
		 
		 	지역 변수의 생명 주기(Life Cycle)
		 	- 변수가 언제 태어나서(메모리 생성) ~ 언제 죽는지(메모리 소멸)
		 	- 생성: 변수 선언문이 실행될 때
			- 소멸: 변수 선언문이 포함된 블럭을 빠져나갈 때
			
			
		 */
		
		//The value of the local variable a is not used
		int a = 10; //지역 변수
		
		//Duplicate local variable a
		//int a = 20;
		
		test();
		
	}//main

	public static void test() {
		
		int a = 20;
		//a cannot be resolved to a variable, 메인에 있는 a가져올 수 없음
		System.out.println(a);
		
		
	}





}
