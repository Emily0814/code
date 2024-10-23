package com.test.question;

import java.util.Scanner;

public class Q007 {
	
	public static void main(String[] args) {
		
		//Q006 영문 소문자를 1글자 입력받은 후 대문자로 변환해서 출력하시오.
		//조건] - 대문자와 소문자의 문자 코드값의 관계
		
		// 1. 스캐너를 생성한다.
		Scanner scan = new Scanner(System.in);

		// 2. 사용할 변수를 선언한다.
		String h;
		String result1;

		// 3. 라벨을 출력한다.
		System.out.print("문자 입력: ");

		// 4. 숫자를 입력받는다.
		h = scan.nextLine();

		// 5. 연산을 한다.
		result1 = h.toUpperCase();
		
		
		// 6. 결과를 출력한다.
		System.out.printf("소문자 '%s'의 대문자는 '%s'입니다.", h,result1);
		
		
		
	}

}
