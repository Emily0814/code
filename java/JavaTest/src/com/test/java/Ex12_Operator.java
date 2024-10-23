package com.test.java;

import java.util.Scanner;

public class Ex12_Operator {
	
	public static void main(String[] args) {
		
		//흐름] 공부!!!
		//1. Scanner 생성
		Scanner scan = new Scanner(System.in);
		
		//2. 안내 메시지 출력(Label)
		System.out.print("문자 입력: ");
		
		//3. 문자 입력
		String input = scan.nextLine();
		
		//4. 유효성 검사
		System.out.println(input);
		
		char c = input.charAt(0);
		int code = (int)c;
				
		String result =	
				(c >= 'A' && c <= 'Z') 
				|| (c >= 'a' && c <= 'z') 
				|| (c >= '0' && c <= '9')
				? "올바른 문자" : "올바르지 않은 문자";
				
		System.out.printf("입력한 문자 '%s'는 %s입니다.\n", input, result);
		
		
		
	
		
		

		
		
	}
}
