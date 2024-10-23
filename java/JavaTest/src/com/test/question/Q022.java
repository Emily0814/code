package com.test.question;

import java.util.Calendar;
import java.util.Scanner;

public class Q022 {
	
	public static void main(String[] args) {
		
		//Q022.java 남녀 커플의 이름과 만난날을 입력받아 기념일을 출력하시오.
		//입력] 남자 이름: 하하하 
		//		여자 이름: 호호호 
		//		만난날(년): 2024 
		//		만난날(월): 6 
		//		만난날(일): 26 
		
		//출력]	'하하하'과(와) '호호호'의 기념일
		//		100일: 2024-10-04
		//		200일: 2025-01-12
		//		300일: 2025-04-22
		//		500일: 2025-11-08
		//		1000일: 2027-03-23
		
		String men = "";
		String women = "";
		int year = 0;
		int month = 0;
		int day = 0;
		
		Calendar anniversary = Calendar.getInstance();
		
		Scanner scan = new Scanner(System.in);
		
		System.out.print("남자 이름: ");
		men = scan.nextLine();
		
		System.out.print("여자 이름: ");
		women = scan.nextLine();
		
		System.out.print("만난날(년): ");
		year = scan.nextInt();
		
		System.out.print("만난날(월): ");
		month = scan.nextInt();
		
		System.out.print("만난날(일): ");
		day = scan.nextInt();
		
		
		anniversary.set(year,month-1,day);
		
		
		System.out.printf("'%s'과(와) '%s'의 기념일\n", men, women);
		
		anniversary.add(Calendar.DATE, 100);
		System.out.printf("100일: %tF\n", anniversary);
		
		anniversary.add(Calendar.DATE, 100);
		System.out.printf("200일: %tF\n", anniversary);
		
		anniversary.add(Calendar.DATE, 100);
		System.out.printf("300일: %tF\n", anniversary);
		
		anniversary.add(Calendar.DATE, 200);
		System.out.printf("500일: %tF\n", anniversary);
		
		anniversary.add(Calendar.DATE, 500);
		System.out.printf("1000일: %tF\n", anniversary);

		
		
	}
}
