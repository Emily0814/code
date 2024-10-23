package com.test.question;

import java.util.Scanner;

public class Q050 {
	
	public static void main(String[] args) {

		// Q050.java 아래와 같이 출력하시오.
		// 조건] 행의 갯수를 입력받으시오.

		// 입력] 행: 5

		// 출력] *
		// 		**
		// 	   ***
		// 	  ****
		// 	 *****

		int row = 0;

		Scanner scan = new Scanner(System.in);

		System.out.print("행: ");
		row = scan.nextInt();

		for (int i = 1; i <= row; i++) {

			for (int j = 0; j < row - i; j++) {
				System.out.print(" ");
			}
			for (int j = 0; j < i; j++) {
				System.out.print("*");
			}
			System.out.println();
		}

	}// main

}
