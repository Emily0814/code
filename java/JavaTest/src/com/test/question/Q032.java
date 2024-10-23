package com.test.question;

import java.util.Calendar;
import java.util.Scanner;

public class Q032 {
	
	public static void main(String[] args) {
		
		//Q032.java 주차 요금을 계산하시오.
		//조건]	무료 주차: 30분
		//		초과 10분당: 2,000원
		
		//입력] [들어온 시간]
		//		시: 13 
		//		분: 30 
		//		[나간 시간]
		//		시: 14 
		//		분: 20 
		
		//출력] 주차 요금은 4,000원입니다.
		
		int inHour = 0;
		int inMinute = 0;
		int outHour = 0;
		int outMinute = 0;
		double park = 0.0;
		
		Scanner scan = new Scanner(System.in);
		
		System.out.println("[들어온 시간]");
		System.out.print("시: ");
		inHour = scan.nextInt();
		
		System.out.print("분: ");
		inMinute = scan.nextInt();
		
		System.out.println("[나간 시간]");
		System.out.print("시: ");
		outHour = scan.nextInt();
		
		System.out.print("분: ");
		outMinute = scan.nextInt();
		
		Calendar in = Calendar.getInstance();
		in.set(Calendar.HOUR_OF_DAY,inHour);
		in.set(Calendar.MINUTE,inMinute);
		
		Calendar out = Calendar.getInstance();
		out.set(Calendar.HOUR_OF_DAY,outHour);
		out.set(Calendar.MINUTE,outMinute);
		
		park = (out.getTimeInMillis() - in.getTimeInMillis()) / 1000.0 / 60;
		
	
		if((park-30)>=30) {
			
			System.out.printf("주차 요금은 %,.0f원입니다.",((park-30)/10)*2000);
			
		} else {
			System.out.println("주차 요금은 0원입니다.");
		}
		
		
		
		
		
		
		
	}//main
}
