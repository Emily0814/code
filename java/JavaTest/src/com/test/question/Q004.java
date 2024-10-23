package com.test.question;

import java.util.Scanner;

public class Q004 {
	
	public static void main(String[] args) {
		
		//Q004 섭씨 온도를 입력받아서 화씨 온도로 변환하시오.
		//조건]	-℉ = ℃ × 1.8 + 32
		//		-소수 입력 가능
		//		-소수 이하 1자리까지 출력하시오.
		
		// 1. 스캐너를 생성한다.
		Scanner scan = new Scanner(System.in);

		// 2. 사용할 변수를 선언한다.
		int f = 0;
		float result1 = 0;

		// 3. 라벨을 출력한다.
		System.out.print("섭씨(℃): ");
		f = scan.nextInt();

		// 4. 숫자를 입력받는다.

		// 5. 연산을 한다.
		result1 = (float)( f * 1.8 + 32);
		

		// 6. 결과를 출력한다.
		System.out.printf("섭씨 %d℃는 화씨 %.1f℉입니다.",f,result1);
		
		
		
		
		
	}
}
