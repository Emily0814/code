package com.test.question;

import java.util.Scanner;

public class Q028 {
	
	public static void main(String[] args) {
		
		//Q028.java 근무 년수를 입력받아 아래와 같이 출력하시오.
		//조건] 1 ~ 4년차: 초급 개발자
		//		5 ~ 9년차: 중급 개발자
		//		10년차 이상: 고급 개발자
		//		유효성 검사를 하시오.(1 미만 입력 예외 처리)
		
		//입력] 근무 년수: 2 
		
		//출력] 2년차 초급 개발자입니다.
		//		앞으로 3년 더 근무를 하면 중급 개발자가 됩니다. 
		//		
		//		5년차 중급 개발자입니다.
		//		당신은 1년전까지 초급 개발자였습니다.
		//		앞으로 5년 더 근무를 하면 고급 개발자가 됩니다.
		//		
		//		11년차 고급 개발자입니다.
		//		당신은 2년전까지 중급 개발자였습니다.
		//		
		//		입력한 값이 올바르지 않습니다. 1이상의 값을 입력하시오.
		
		int year = 0;
		
		Scanner scan = new Scanner(System.in);
		
		System.out.print("근무 년수: ");
		year = scan.nextInt();
		
			if(0<year) {
				
				if(10<=year){
					
					System.out.printf("%d년차 고급 개발자입니다.\n당신은 %d년전까지 중급 개발자였습니다.\n"
							,year,year-9);
				} else if(5<=year) {
					System.out.printf("%d년차 중급 개발자입니다.\n당신은 %d년전까지 초급 개발자였습니다.\n앞으로 %d년 더 근무를 하면 고급 개발자가 됩니다.\n"
							,year, year-4, 10-year);
				} else {
					System.out.printf("%d년차 초급 개발자입니다.\n앞으로 %d년 더 근무를 하면 중급 개발자가 됩니다.\n"
							,year, 5-year);
				}
				
			}//큰if문 
			else {
				System.out.println("입력한 값이 올바르지 않습니다. 1이상의 값을 입력하시오.");
			}
		
		
		
	}
}
