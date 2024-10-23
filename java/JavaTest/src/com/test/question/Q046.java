package com.test.question;

import java.util.Scanner;

public class Q046 {
	
	public static void main(String[] args) {

		// Q046.java 숫자를 10개 입력받아 한글로 변환 후 출력하시오.
		// 조건] 1~9까지만 입력하시오.

		// 입력] 숫자: 5
		// 숫자: 7
		// 숫자: 4
		// 숫자: 3
		// 숫자: 5
		// 숫자: 7
		// 숫자: 6
		// 숫자: 2
		// 숫자: 1
		// 숫자: 3

		// 출력] 오칠사삼오칠육이일삼

		int num = 0;
		String sum = "";
		String kor = "";

		Scanner scan = new Scanner(System.in);

		for (int i = 1; i <= 10; i++) {
			System.out.print("숫자: ");
			num = scan.nextInt();

			if (num == 1) {
				kor = "일";
				sum += kor;
			} else if (num == 2) {
				kor = "이";
				sum += kor;
			} else if (num == 3) {
				kor = "삼";
				sum += kor;
			} else if (num == 4) {
				kor = "사";
				sum += kor;
			} else if (num == 5) {
				kor = "오";
				sum += kor;
			} else if (num == 6) {
				kor = "육";
				sum += kor;
			} else if (num == 7) {
				kor = "칠";
				sum += kor;
			} else if (num == 8) {
				kor = "팔";
				sum += kor;
			} else if (num == 9) {
				kor = "구";
				sum += kor;
			}

		}

		System.out.println(sum);

	}// main
}
