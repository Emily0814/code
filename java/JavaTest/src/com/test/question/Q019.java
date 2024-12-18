package com.test.question;

import java.util.Calendar;

public class Q019 {
	
	public static void main(String[] args) {
		
		//Q019.java 현재 시간을 출력하는 메소드 선언하시오.
		
		//조건]	void nowTime()
		//		현재 시간을 24시간으로 출력하시오.
		//		현재 시간을 오전/오후로 출력하시오.
		
		//호출]	nowTime();
		
		//출력]	현재 시간 : 10시 30분 25초
		//		현재 시간 : 오전 10시 30분 25초
		
		nowTime();
		
	}//main

	private static void nowTime() {
		
		Calendar now = Calendar.getInstance();
		
		System.out.printf("현재 시간 : %d시 %d분 %d초\n현재 시간 : %s %d시 %d분 %d초\n "
				,now.get(Calendar.HOUR_OF_DAY)
				,now.get(Calendar.MINUTE) 
				,now.get(Calendar.SECOND)
				
				,(now.get(Calendar.AM_PM)==0 ? "오전":"오후")
				,now.get(Calendar.HOUR_OF_DAY)
				,now.get(Calendar.MINUTE) 
				,now.get(Calendar.SECOND)
				
				);
		
	}
	
	
}
