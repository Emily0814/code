package com.test.question;

import java.util.Calendar;
import java.util.Scanner;

public class Q023 {
	
	public static void main(String[] args) {
		
		//Q023.java 아빠와 딸의 생일을 입력받아 아빠가 딸보다 며칠을 더 살았는지 출력하시오.
		//입력] 아빠 생일(년): 1971 
		//		아빠 생일(월): 5 
		//		아빠 생일(일): 10 
		//		딸 생일(년): 1999 
		//		딸 생일(월): 7 
		//		딸 생일(일): 22
		
		//출력] 아빠는 딸보다 총 10,300일을 더 살았습니다.
		
		int fYear = 0;
		int fMonth = 0;
		int fDate = 0;
		int dYear = 0;
		int dMonth = 0;
		int dDate = 0;
		long fatherT = 0;
		long daughterT = 0;
		
		Scanner scan = new Scanner(System.in);
		
		System.out.print("아빠 생일(년): ");
		fYear = scan.nextInt();
		
		System.out.print("아빠 생일(월): ");
		fMonth = scan.nextInt();
		
		System.out.print("아빠 생일(일): ");
		fDate = scan.nextInt();
		
		System.out.print("딸 생일(년): ");
		dYear = scan.nextInt();
		
		System.out.print("딸 생일(월): ");
		dMonth = scan.nextInt();
		
		System.out.print("딸 생일(일): ");
		dDate = scan.nextInt();
		
		Calendar fatherBirth = Calendar.getInstance();
		fatherBirth.set(fYear, fMonth - 1, fDate);
		
		Calendar daughterBirth = Calendar.getInstance();
		daughterBirth.set(dYear, dMonth - 1, dDate);
		
		fatherT = fatherBirth.getTimeInMillis();
		daughterT = daughterBirth.getTimeInMillis();
		
		System.out.printf("아빠는 딸보다 총 %,d일을 더 살았습니다.\n",(daughterT - fatherT)/1000/60/60/24
				);
		
		//TODO 어떻게 1000/60/60/24 를 나누는지 이해하기

		
		
		
	}
}
