package com.test.question;

import java.util.Scanner;

public class Q038 {
	
	public static void main(String[] args) {

		//Q038.java 입력 횟수(N)와 숫자 N개를 입력받아 짝수의 합과 홀수의 합을 각각 출력하시오.
		//입력]	입력 횟수: 10
		// 		숫자: 5
		// 		숫자: 2
		// 		숫자: 12
		// 		숫자: 3
		// 		숫자: 11
		// 		숫자: 8
		// 		숫자: 1
		// 		숫자: 7
		// 		숫자: 23
		// 		숫자: 10
		
		//출력]	짝수 4개의 합: 32
		// 		홀수 6개의 합: 50

		m1();

	}

	private static void m1() {

		int count = 0;
		int num = 0;
		int even = 0;
		int odd = 0;
		int evenSum = 0;
		int oddSum = 0;

		Scanner scan = new Scanner(System.in);

		System.out.print("입력 횟수: ");
		count = scan.nextInt(); //count = 2

		for (int i = 0; i < count; i++) { // 1. 0 ..  2. 1  ..  3.2
			
			System.out.print("숫자: "); //2개 출력
			num = scan.nextInt();

			if (num % 2 == 0) { //num = 2
				even++; //0+1=1
				evenSum += num; //0+2=2
				
			} else { //num = 1
				odd++; //0+1=1
				oddSum += num; //0+1=1
			}

		}

		System.out.printf("짝수 %d개의 합: %d\n홀수 %d개의 합: %d\n", even, evenSum, odd, oddSum);

	}
}
