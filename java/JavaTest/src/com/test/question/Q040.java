package com.test.question;

import java.util.Scanner;

public class Q040 {
	
	public static void main(String[] args) {

		// Q040.java 아래와 같이 출력하시오.
		// 입력] 시작 숫자: 1
		// 종료 숫자: 10

		// 출력] 1 - 2 + 3 - 4 + 5 - 6 + 7 - 8 + 9 - 10 = -5

		int start = 0;
		int end = 0;
		int sum = 0;
		String txt = "";
		String op = " + ";

		Scanner scan = new Scanner(System.in);

		System.out.print("시작 숫자: ");
		start = scan.nextInt();

		System.out.print("종료 숫자: ");
		end = scan.nextInt();

		for (int i = start; i <= end; i++) {

			if (op.equals(" + ")) {
				sum += i;
				txt += i;
				op = " - ";
				if (i < end) {

					txt += op;
				}
			} else {
				sum -= i;
				txt += i;
				op = " + ";
				if (i < end) {
					txt += op;
				}
			}

		} // for

		System.out.println(txt + " = " + sum);

	}// main

}
