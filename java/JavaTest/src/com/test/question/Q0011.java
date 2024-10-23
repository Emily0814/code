package com.test.question;

import java.util.Scanner;

public class Q0011 {
	
	public static void main(String[] args) {
		
		//Q006 영문 소문자를 1글자 입력받은 후 대문자로 변환해서 출력하시오.
		//조건] - 대문자와 소문자의 문자 코드값의 관계
		
		// 1. 스캐너를 생성한다.
		Scanner scan = new Scanner(System.in);

		// 2. 사용할 변수를 선언한다.
		int year;
		int age;

		// 3. 라벨을 출력한다.
		System.out.print("태어난 년도: ");

		// 4. 숫자를 입력받는다.
		year = scan.nextInt();

		// 5. 연산을 한다.
		age = 2024 - year;
		
		
		// 6. 결과를 출력한다.
		System.out.printf("나이: %d세\n", age);
		
		
		
	}

}
