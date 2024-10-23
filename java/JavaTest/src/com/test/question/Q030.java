package com.test.question;

import java.util.Scanner;

public class Q030 {
	
	public static void main(String[] args) {

		// Q030.java 영문자 1개를 입력받아 대/소문자 변환을 한 뒤 출력하시오.
		// 조건] 유효성 검사를 하시오.(영문자만 입력 가능)

		// 입력] 문자: a

		// 출력] 'a'의 대문자는 'A'입니다.
		// 'F'의 소문자는 'f'입니다.
		// 영문자만 입력하시오.

		char word = '\0';

		Scanner scan = new Scanner(System.in);

		System.out.print("문자: ");
		word = scan.nextLine().charAt(0);

		if (word >= 'A' && word <= 'Z') {

			System.out.printf("'%c'의 소문자는 '%c'입니다.\n", word, word + 32);

		} else if (word >= 'a' && word <= 'z') {

			System.out.printf("'%c'의 대문자는 '%c'입니다.\n", word, word - 32);

		} else {
			System.out.println("영문자만 입력하시오.");
		}

		// if(word >= "A" && word <= "Z") {
		//
		// big = (int)word;
		// System.out.println(big);
		//
		// System.out.printf("'%s'의 대문자는 '%s'입니다.\n",word,word);
		//
		// } else if(word >= "a" && word <= "z") {
		//
		//
		// System.out.printf("'%s'의 대문자는 '%s'입니다.\n",small,word);
		// }

	}

}
