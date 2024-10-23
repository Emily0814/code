package com.test.question;

import java.util.Scanner;

public class Q043 {
	
	public static void main(String[] args) {

		// Q043.java 컴퓨터가 1~10 사이의 숫자 1개를 생각하면 사용자가 맞추는 프로그램을 구현하시오.
		// 조건] 시도 횟수가 10회가 넘어가면 프로그램을 종료하시오.

		// 컴퓨터가 1~10 사이의 숫자를 1개 생각했습니다.
		// 숫자: 1
		// 틀렸습니다.
		//
		// 숫자: 3
		// 틀렸습니다.
		//
		// 숫자: 7
		// 틀렸습니다.
		//
		// 숫자: 2
		// 틀렸습니다.
		//
		// 숫자: 5
		// 맞았습니다.
		//
		// 컴퓨터가 생각한 숫자는 5입니다.
		// 정답을 맞추는데 시도한 횟수는 5회입니다.
		//
		// 프로그램을 종료합니다.
		//
		// 컴퓨터가 1~10 사이의 숫자를 1개 생각했습니다.
		//
		// 숫자: 1
		// 틀렸습니다.
		//
		// 숫자: 3
		// 틀렸습니다.
		//
		// 숫자: 7
		// 틀렸습니다.
		//
		// 숫자: 2
		// 틀렸습니다.
		//
		// 숫자: 3
		// 틀렸습니다.
		//
		// 숫자: 7
		// 틀렸습니다.
		//
		// 숫자: 2
		// 틀렸습니다.
		//
		// 숫자: 3
		// 틀렸습니다.
		//
		// 숫자: 7
		// 틀렸습니다.
		//
		// 컴퓨터가 생각한 숫자는 5입니다.
		// 모든 기회를 실패했습니다.
		//
		// 프로그램을 종료합니다.

		m1();

	}// main

	private static void m1() {

		int num = 0;
		int count = 0;

		Scanner scan = new Scanner(System.in);

		System.out.print("컴퓨터가 1~10 사이의 숫자를 1개 생각했습니다.\n");
		for (int i = 1; i <= 10; i++) {

			count++;
			System.out.print("숫자: ");
			num = scan.nextInt();

			if (num == 5) {
				System.out.println("맞았습니다.\n");
				System.out.printf("컴퓨터가 생각한 숫자는 5입니다.\n정답을 맞추는데 시도한 횟수는 %d회입니다.\n", count);
				System.out.println("\n프로그램을 종료합니다.");
				break;
			} else if (num != 5 && count == 10) {
				System.out.println("틀렸습니다.\n");
				System.out.println("컴퓨터가 생각한 숫자는 5입니다.\n모든 기회를 실패했습니다.");
				System.out.println("\n프로그램을 종료합니다.");
				break;
			} else {
				System.out.println("틀렸습니다.\n");
			}

		} // for

	}

}
