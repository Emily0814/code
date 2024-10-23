package com.test.question;

import java.util.Scanner;

public class Q031 {
	
	public static void main(String[] args) {
		
		// Q031.java 숫자 5개를 입력받아 짝수와 홀수의 개수를 출력하시오.
		// 입력] 숫자 입력: 3
		// 숫자 입력: 2
		// 숫자 입력: 7
		// 숫자 입력: 1
		// 숫자 입력: 8

		// 출력] 짝수는 2개 홀수는 3개 입력했습니다.
		// 홀수가 짝수보다 1개 더 많습니다.

		int n = 0;
		int even = 0;
		int odd = 0;

		Scanner scan = new Scanner(System.in);

		System.out.print("숫자 입력: ");
		n = scan.nextInt();

		if (n % 2 == 0) {
			even++;
		} else {
			odd++;
		}

		System.out.print("숫자 입력: ");
		n = scan.nextInt();

		if (n % 2 == 0) {
			even++;
		} else {
			odd++;
		}

		System.out.print("숫자 입력: ");
		n = scan.nextInt();

		if (n % 2 == 0) {
			even++;
		} else {
			odd++;
		}

		System.out.print("숫자 입력: ");
		n = scan.nextInt();

		if (n % 2 == 0) {
			even++;
		} else {
			odd++;
		}

		System.out.print("숫자 입력: ");
		n = scan.nextInt();

		if (n % 2 == 0) {
			even++;
		} else {
			odd++;
		}

		System.out.printf("짝수는 %d개 홀수는 %d개 입력했습니다.\n", even, odd);
		System.out.printf("홀수가 짝수보다 %d개 더 많습니다.\n", odd - even);

	}

}
