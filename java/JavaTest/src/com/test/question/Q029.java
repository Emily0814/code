package com.test.question;

import java.util.Scanner;

public class Q029 {

	public static void main(String[] args) {

		// Q029.java 숫자 2개와 연산자 1개를 입력받아 연산 과정과 결과를 출력하시오.
		// 조건] 정수만 입력하시오.(유효성 검사 필요없음)
		// 나머지 연산 결과는 소수이하 첫째자리까지 출력 하시오.
		// 연산자는 산술 연산자(+, -, *, /, %)만 입력하시오.

		// 입력] 첫번째 숫자: 5
		// 두번째 숫자: 3
		// 연산자: *

		// 출력] 5 * 3 = 15
		// 10 / 3 = 3.3
		// 연산이 불가능합니다.

		int first = 0;
		int second = 0;
		String operator = "";

		Scanner scan = new Scanner(System.in);

		System.out.print("첫번째 숫자: ");
		first = scan.nextInt();

		System.out.print("두번째 숫자: ");
		second = scan.nextInt();

		scan.nextLine();
		// scan.skip("\r\n");

		System.out.print("연산자: ");
		operator = scan.nextLine();

		if (operator.equals("+")) {
			System.out.printf("%d + %d = %d", first, second, first + second);
		} else if (operator.equals("-")) {
			System.out.printf("%d - %d = %d", first, second, first - second);
		} else if (operator.equals("*")) {
			System.out.printf("%d * %d = %d", first, second, first * second);
		} else if (operator.equals("/")) {
			System.out.printf("%d / %d = %.1f", first, second, (double) first / second);
		} else if (operator.equals("%")) {
			System.out.printf("%d % %d = %d", first, second, first % second);
		} else {
			System.out.println("연산이 불가능합니다.");
		}

	}
}
