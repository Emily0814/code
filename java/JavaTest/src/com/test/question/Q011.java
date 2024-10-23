package com.test.question;

import java.util.Scanner;

public class Q011 {
	
	public static void main(String[] args) {

		// Q011.java 숫자를 2개 입력받아 연산식을 반환하는 메소드를 선언하시오.
		// 조건] String add(int, int)
		// String subtract(int, int)
		// String multiply(int, int)
		// String divide(int, int)
		// String mod(int, int)

		// 입력] 첫번째 숫자: 5
		// 두번째 숫자: 3

		// 호출] result = add(n1, n2);
		// System.out.println(result);

		// result = subtract(n1, n2);
		// System.out.println(result);

		// result = multiply(n1, n2);
		// System.out.println(result);

		// result = divide(n1, n2);
		// System.out.println(result);

		// result = mod(n1, n2);
		// System.out.println(result);

		// 출력] 5 + 3 = 8
		// 5 - 3 = 2
		// 5 * 3 = 15
		// 5 / 3 = 1.7
		// 5 % 3 = 2

		int n1 = 0;
		int n2 = 0;
		String result = "";

		Scanner scan = new Scanner(System.in);

		System.out.print("첫번째 숫자: ");
		n1 = scan.nextInt();

		System.out.print("두번째 숫자: ");
		n2 = scan.nextInt();

		result = add(n1, n2);
		System.out.println(result);

		result = subtract(n1, n2);
		System.out.println(result);

		result = multiply(n1, n2);
		System.out.println(result);

		result = divide(n1, n2);
		System.out.println(result);

		result = mod(n1, n2);
		System.out.println(result);

	} // main

	public static String add(int n1, int n2) {

		String txt = "";
		int result = 0;

		result = n1 + n2;

		txt = n1 + " + " + n2 + " = " + result;

		return txt;

	}   

	public static String subtract(int n1, int n2) {

		String txt = "";
		int result = 0;

		result = n1 - n2;

		txt = n1 + " - " + n2 + " = " + result;

		return txt;

	}

	public static String multiply(int n1, int n2) {

		String txt = "";
		int result = 0;

		result = n1 * n2;

		txt = n1 + " * " + n2 + " = " + result;

		return txt;

	}

	public static String divide(int n1, int n2) {

		String txt = "";
		int result = 0;

		result = n1 / n2;

		txt = n1 + " / " + n2 + " = " + result;

		return txt;

	}

	public static String mod(int n1, int n2) {

		String txt = "";
		int result = 0;

		result = n1 % n2;

		txt = n1 + " % " + n2 + " = " + result;

		return txt;

	}
	
	
	
}
