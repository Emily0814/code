package com.test.question;

import java.util.Calendar;
import java.util.Scanner;

public class Q021 {
	
	public static void main(String[] args) {
		
		//Q021.java 태어난 년도를 입력하면 나이를 출력하시오.
		//조건] 올해를 기준으로 나이를 계산하시오.
		//		내년, 내후년에 실행해도 그때에 맞는 나이를 출력한다.
		//		우리나라 나이로 출력하시오.
		
		//입력] 태어난 년도: 1995 
		
		//나이] 나이: 30세 
		
		Scanner scan = new Scanner(System.in);
		
		System.out.print("테어난 년도: ");
		int year = scan.nextInt() - 1;
		
		Calendar now = Calendar.getInstance();
		
		int age = now.get(Calendar.YEAR) - year;
		
		System.out.printf("나이: %d세",age);
		
		
	}
}
