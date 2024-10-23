package com.test.question;

import java.util.Scanner;

public class Q027 {
	
	public static void main(String[] args) {
		
		//Q027.java 문자 1개를 입력받아 아래와 같이 출력하시오.
		//조건] f, F → Father
		//		m, M → Mother
		//		s, S → Sister
		//		b, B → Brother
		//		유효성 검사를 하시오.(위의 문자가 아닌 문자는 예외 처리)
		
		//입력] 문자: f 
		
		//출력] Father
		//		입력한 문자가 올바르지 않습니다. <- 범위가 벗어날 경우
		
		String word = "";
		
		Scanner scan = new Scanner(System.in);
		
		System.out.print("문자: ");
		word = scan.nextLine();
		
		
		if(word.equals("f") || word.equals("m") || word.equals("s") || word.equals("b")) {
			
			if(word.equals("f")) {
				System.out.println("Father");
			} else if(word.equals("m")) {
				System.out.println("Mother");
			} else if(word.equals("s")) {
				System.out.println("Sister");
			} else {
				System.out.println("Brother");
			}
			
			
		}//큰 if문
		
		else {
			System.out.println("입력한 문자가 올바르지 않습니다.");
		}
		
	}
}
