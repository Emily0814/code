package com.test.question;

import java.util.Scanner;

public class Q002 {

	public static void main(String[] args) {
		
		// Q002 숫자 2개를 입력받아 아래의 연산식을 출력하시오.
		// 조건]	-출력 숫자에 천단위 표기 하시오.
		//			-결과값은 소수 이하 1자리까지 표기 하시오.
		
		//1. 스캐너를 생성한다.
			Scanner scan = new Scanner(System.in);
			
		//2. 사용할 변수를 선언한다.
			int b = 0;
			int c = 0;
			int result1 = 0;
			int result2 = 0;
			int result3 = 0;
			double result4 = 0;
			int result5 = 0;
			
				
		//3. 라벨을 출력한다.
			System.out.print("첫번째 숫자: ");
			b = scan.nextInt();
			
			System.out.print("두번째 숫자: ");
			c = scan.nextInt();
			
		//4. 숫자를 입력받는다.
			
		//5. 연산을 한다.
			result1 = b + c;
			result2 = b - c;
			result3 = b * c;
			result4 = (double) b / c;
			result5 = b % c;
				
		//6. 결과를 출력한다.
			System.out.printf("%d + %d = %,d \n", b, c, result1);
			System.out.printf("%d - %d = %,d \n", b, c, result2);
			System.out.printf("%d * %d = %,d \n", b, c, result3);
			System.out.printf("%d / %d = %.1f \n", b, c, result4);
			System.out.printf("%d %% %d = %,d \n", b, c, result5);
		
		
		
	}
}
