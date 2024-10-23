package com.test.question2;

import java.util.Scanner;

public class Q088 { 

	public static void main(String[] args) {

		// Q088.java 금지어를 마스킹 처리 하시오.
		/// 조건]금지어
		// -바보
		// -멍청이

		// 입력] 입력: 너랑 안놀아 바보야!!

		// 출력] 너랑 안놀아 **야!!
		// 금지어를 1회 마스킹했습니다.

		String txt = "";
		String change = "";

		Scanner scan = new Scanner(System.in);

		System.out.print("입력: ");
		txt = scan.nextLine();

		// String[] bad = {"바보","멍청이"};
		// System.out.println(txt.replace("바보", "**")); // charsequence? 이게 String과 같은
		// 것이라고 보면됨.
		// System.out.println(txt.replace("멍청이", "**"));
		
		int count = 0;
		int count1 = 0;

		
		if(txt.contains("멍청이")) {
			System.out.println(txt.replace("멍청이", "***"));
			count++;
			System.out.printf("금지어를 %d회 마스킹했습니다.",count);
		} else if (txt.contains("바보")){
			System.out.println(txt.replace("바보", "**"));
			count++;
			System.out.printf("금지어를 %d회 마스킹했습니다.",count);
		}
		
		
		

	}// main
}
