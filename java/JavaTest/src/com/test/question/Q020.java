package com.test.question;

import java.util.Calendar;

public class Q020 {
	
	public static void main(String[] args) {
		
		//Q020.java 오늘 태어난 아이의 백일과 첫돌을 출력하시오.
		
		//출력]	백일: 2024-10-04
		//		첫돌: 2025-06-26
		
		Calendar now = Calendar.getInstance();

		now.add(Calendar.DATE, 100);
		System.out.printf("백일: %tF\n", now);

		Calendar first = Calendar.getInstance();

		first.add(Calendar.YEAR, 1);
		System.out.printf("첫돌: %tF\n", first);
		
	}//main

}
