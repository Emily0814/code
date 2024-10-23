package com.test.question2;

import java.util.Scanner;

public class Q089 {
	
	public static void main(String[] args) {
		
		//Q089.java 입력받은 금액을 한글로 출력하시오.
		//조건] 입력 범위(원): 0 ~ 99,999,999
		
		//입력] 	금액(원): 120, 금액(원): 12,345,678 
		
		//출력] 	일금 일백이십원
		//	  	일금 일천이백삼십사만오천육백칠십팔원
		
		String price = "";
		String result = "";
		
		Scanner scan = new Scanner(System.in);
		
		System.out.print("금액(원): ");
		price = scan.nextLine();
		
		for (int i=0; i<price.length(); i++) {
			
			char c = price.charAt(i);
			
			result += getNum(c);
			result += getUnit(i, price.length(), getNum(c));
			
		}
		
		System.out.println("일금 " + result); 	

		
	}//main


	private static String getUnit(int i, int length, String num) {
		
		String[] unit = { "원", "만" };
		String[] unit2 = { "천", "", "십", "백" };
		String temp = "";
		
		if(!num.equals("")) {
			temp += unit2[(length - i ) % 4];
		}
		
		if((length - i)	% 4 == 1 ) {
			temp += unit[(length - i) / 5 ];
		}
		
		return temp;

	
	}

	private static String getNum(char c) {
		
		switch (c) {
        case '1': return "일";
        case '2': return "이";
        case '3': return "삼";
        case '4': return "사";
        case '5': return "오";
        case '6': return "육";
        case '7': return "칠";
        case '8': return "팔";
        case '9': return "구";
        default: return ""; // 0은 변환하지 않음
    }


}

	private static String getnum2(char c) {
		
		if( c == '1' ) {
			return "일";
		} else if( c == '2' ) {
			return "이";
		} else if( c == '3' ) {
			return "삼";
		} else if( c == '4' ) {
			return "사";
		} else if( c == '5' ) {
			return "오";
		} else if( c == '6' ) {
			return "육";
		} else if( c == '7' ) {
			return "칠";
		} else if( c == '8' ) {
			return "팔";
		} else if( c == '9' ) {
			return "구";
		} 
		
		return "";
		
		
	}

}
	

