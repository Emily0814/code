package com.test.question;

import java.util.Scanner;

public class Q039 {
	
	public static void main(String[] args) {
		
		//Q039.java 아래와 같이 출력하시오.
		//입력]	시작 숫자: 1 
		//		종료 숫자: 10 
				
		//출력] 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10 = 55
		
		int start = 0;
		int end = 0;
		int sum = 0;
		
		Scanner scan = new Scanner(System.in);
		
		System.out.print("시작 숫자: ");
		start = scan.nextInt();

		System.out.print("종료 숫자: ");
		end = scan.nextInt();
		

		for (int i = start; i <= end; i++) { //i=1; 1<=2; i++

			sum += i; // 0+1 = 1    1+2 = 3
			System.out.print(i + " + "); //1 +, 2 +
			
		}
		
		System.out.println("\b\b= " + sum); // "backspace backspace = " 3
		
		
	}
}
