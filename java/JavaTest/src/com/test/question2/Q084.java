package com.test.question2;

import java.util.Scanner;

public class Q084 {
	
	public static void main(String[] args) {
		
		//Q084.java 특정 단어가 문장내에 몇회 있어있는지 수를 세시오.
		//조건] 대상 문자열: String content = "안녕~ 길동아~ 잘가~ 길동아~";
		//		검색 문자열: String word = "길동";
		
		//출력] '길동'을 총 2회 발견했습니다.
		
		int count = 0;
		String txt = "";
		String word = "";

		Scanner scan = new Scanner(System.in);
		
		System.out.print("대상 문자열: ");
		txt = scan.nextLine();
		
		System.out.print("검색 문자열: ");
		word = scan.nextLine();
		
		
		int index = -1; //0이 아닌 -1로 초기화해야함
		index = txt.indexOf(word, index); //
		
		index += count;
		
		index = txt.indexOf(word, index + count); //22
		
		index = txt.indexOf(word, index + count); //38
		
		System.out.printf("'%s'을 총 %d회 발견했습니다.", word,count);
		
		
	}//main
}
