package com.test.question;

import java.util.Scanner;

public class Q015 {
	
	public static void main(String[] args) {
		
		//Q015.java 사과 나무가 있다. 
		//사과 나무 씨앗을 심을 날로부터 특정 시간이 흘렀을 때 사과 총 몇개가 열리는지 구하는 메소드를 선언하시오.
		
		//조건] int getApple(int sunny, int foggy)
		//		사과 나무를 처음 심었을 때 나무의 길이: 0m
		//		맑은 날 사과 나무의 성장률: 5㎝
		//		흐린 날 사과 나무의 성잘률: 2㎝
		//		사과 나무는 길이가 1m 넘는 시점부터 사과가 열린다.
		//		1m 넘는 시점부터 10㎝ 자랄 때마다 사과가 1개씩 열린다.
		
		//입력]	맑은 날: 35 
		//		흐린 날: 10 
		
		//출력] 사과가 총 9개 열렸습니다.
		
		int sunny = 0;
		int foggy = 0;
		
		
		Scanner scan = new Scanner(System.in);
		System.out.print("맑은 날: ");
		sunny = scan.nextInt();
		
		System.out.print("흐린 날: ");
		foggy = scan.nextInt();
		
		int result = getApple(sunny, foggy);
		
		System.out.printf("사과가 총 %d개 열렸습니다.", result);
		
	}//main
	
	public static int getApple(int sunny, int foggy) {
		
		int height = 0;
		int number = 0;
		
		height = sunny * 5 + foggy * 2;
		
		number = height >= 100 ? (height - 100) / 10 : 0 ;
		
		return number;
		
	}
	
	
}
