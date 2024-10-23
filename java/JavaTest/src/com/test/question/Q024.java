package com.test.question;

import java.util.Calendar;
import java.util.Scanner;

public class Q024 {
	
	public static void main(String[] args) {
		
		//Q024.java 여러 배달 음식을 같은 시간에 받기를 원하는 고객이 있다.
		//고객이 각각의 매장에 몇시에 전화를 해야 모든 음식을 같은 시간에 받을 수 있는지 알려주시오.
		
		//조건] 전화를 걸면 짜장면은 10분 뒤에 도착합니다.
		//		전화를 걸면 치킨은 18분 뒤 도착합니다.
		//		전화를 걸면 피자는 25분 뒤 도착합니다.
		//		음식을 받기 원하는 시간은 오후 11시 이전에만 가능합니다.(날짜 변경 금지) <- 이건?
		
		//입력] 음식을 받기 원하는 시각
		//		시: 24 
		//		분: 44 
		
		//출력] 짜장면: 0시 34분
		//		치킨: 0시 26분
		//		피자: 0시 19분

		int hour = 0;
		int minute = 0;
		
		
		System.out.println("음식을 받기 원하는 시각");
		
		Scanner scan = new Scanner(System.in);
		
		System.out.print("시: ");
		hour = scan.nextInt();
		
		System.out.print("분: ");
		minute = scan.nextInt();
		
		Calendar foodTime = Calendar.getInstance();
		
//		foodTime.set(hour, minute); 상수값으로 인식했을 수도 있어서 실행되나 오류, hour,minute은 넣을 수 없음!!

		// 왜 꼭 밑에 처럼 해야되나? 위에 설명
		foodTime.set(Calendar.HOUR_OF_DAY, hour);
		foodTime.set(Calendar.MINUTE, minute);
		
		
		// TODO 여기서 시간을 뺴주는 이유와 갈 수록 더해지므로 25분 소요더라도 -25로 적지 않도록 주의
		foodTime.add(Calendar.MINUTE, -10);
		System.out.printf("짜장면: %d시 %d분\n",foodTime.get(Calendar.HOUR_OF_DAY),foodTime.get(Calendar.MINUTE));
		
		foodTime.add(Calendar.MINUTE, -8);
		System.out.printf("치킨: %d시 %d분\n",foodTime.get(Calendar.HOUR_OF_DAY),foodTime.get(Calendar.MINUTE));
		
		foodTime.add(Calendar.MINUTE, -7);
		System.out.printf("피자: %d시 %d분\n",foodTime.get(Calendar.HOUR_OF_DAY),foodTime.get(Calendar.MINUTE));
		

		
		
		
		
	}
}
