package com.test.question;

import java.util.Scanner;

public class Q033 {
	
	public static void main(String[] args) {
		
		//Q033.java 년도를 입력받아 해당 년도가 '평년' 인지 '윤년' 인지 출력하시오.
		//조건] a. 년도를 4로 나눈다.
		//		떨어지면 b 검사
		//		떨어지지 않으면 "평년"
		//		b. 년도를 100으로 나눈다.
		//		떨어지면 c 검사
		//		떨어지지 않으면 "윤년"
		//		c. 년도를 400으로 나눈다.
		//		떨어지면 "윤년"
		//		떨어지지 않으면 "평년"
		
		//입력] 년도 입력: 2019 
		
		//출력] 2019년은 '평년'입니다.
		
		int year = 0;
		int a = 0;
		int b = 0;
		int c = 0;
		
		
		Scanner scan = new Scanner(System.in);
		
		System.out.print("년도 입력: ");
		year = scan.nextInt();
		
		a = year % 4;
		b = a % 100;
		c = c % 400;
		
		if(a != 0) {
			System.out.printf("%d년은 '평년'입니다.", year);
		} else if(b != 0) {
			System.out.printf("%d년은 '윤년'입니다.", year);
		} else if(b != 0) {
			System.out.printf("%d년은 '평년'입니다.", year);
		} else {
			System.out.printf("%d년은 '윤년'입니다.", year);
		}
		
	}//main
}
