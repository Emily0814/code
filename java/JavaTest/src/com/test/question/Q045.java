package com.test.question;

import java.util.Scanner;

public class Q045 {
	
	public static void main(String[] args) { // TODO 하.. 모르겠다..

		// Q045.java 사용자가 입력한 범위의 숫자까지 369 게임 과정을 출력하시오.
		// 조건] 최대 3자리까지만 입력하시오.

		// 입력] 최대 숫자: 50

		// 출력] 1 2 짝 4 5 짝 7 8 짝 10 11 12 짝 14 15 짝 17 18 짝 20
		// 21 22 짝 24 25 짝 27 28 짝 짝 짝 짝 짝짝 짝 짝 짝짝 짝 짝 짝짝 40
		// 41 42 짝 44 45 짝 47 48 짝 50

		int max = 0;
		
		Scanner scan = new Scanner(System.in);

		System.out.print("최대 숫자: ");
		max = scan.nextInt();

		for (int i = 1; i <= max; i++) {
			int a = i / 10; // 10의 자리
			int b = i % 10; // 1의 자리
			int count = 0;

			if (a == 3 || a == 6 || a == 9) {
				count++;
			}
			if (b == 3 || b == 6 || b == 9) {
				count++;
			}

			if (count == 2) {
				System.out.print("짝짝 ");
			} else if (count == 1) {
				System.out.print("짝 ");
			} else {
				System.out.print(i + " ");
			}
		}

	}// main

}
