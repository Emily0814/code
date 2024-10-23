package com.test.question;

import java.util.Scanner;

public class Q0031 {

	public static void main(String[] args) {
		
		//Q003 사각형의 너비와 높이를 입력받아 넓이와 둘레를 출력하시오.
		//조건]	-사각형 넓이 = 너비 * 높이
		//		-사각형 둘레 = 너비 * 2 + 높이 * 2
		
		// 1. 스캐너를 생성한다.
		Scanner scan = new Scanner(System.in);
		
		// 2. 사용할 변수를 선언한다.
		int width = 0;
		int height = 0;
		int result1 = 0;
		int result2 = 0;

		// 3. 라벨을 출력한다.
		System.out.print("너비(cm): ");
		width = scan.nextInt();
		
		System.out.print("높이(cm): ");
		height = scan.nextInt();
		
		// 4. 숫자를 입력받는다.
		
		// 5. 연산을 한다.
		result1 = width * height;
		result2 = (width * 2) + (height * 2);
		
		// 6. 결과를 출력한다.
		System.out.printf("사각형의 넓이는 %dcm^2입니다.",result1);
		System.out.printf("사각형의 둘레는 %dcm입니다.",result2);
		
		
		
	}
}
