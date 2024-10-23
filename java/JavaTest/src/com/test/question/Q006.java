package com.test.question;

import java.io.PrintStream;
import java.util.Scanner;

public class Q006 {
	
	public static void main(String[] args) {
		
		//Q005 사용자의 한달 수입을 입력받아 세후 금액을 출력하시오.
		//조건] 세금: 수입의 3.3%
		
		// 1. 스캐너를 생성한다.
		Scanner scan = new Scanner(System.in);

		// 2. 사용할 변수를 선언한다.
		int g = 0;
		float result1 = 0;
		int result2 = 0;

		// 3. 라벨을 출력한다.
		System.out.print("한달 수입 금액(원): ");

		g = scan.nextInt();

		// 4. 숫자를 입력받는다.

		// 5. 연산을 한다.
		result1 = (float)(g * 3.3 / 100);
		result2 = (int)(g - result1);

		// 6. 결과를 출력한다.
		System.out.printf("세후 금액(원): %,d원", result2);
		System.out.println();
		System.out.printf("세금(원): %,.0f원", result1);
		
		//http://pinnpublic.dothome.co.kr/ 이어서 하기
		
	}
}
