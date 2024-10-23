package com.test.question;

import java.util.Scanner;

public class Q025 {
	
	public static void main(String[] args) {
		
		//Q025.java 숫자 2개를 입력받아 큰수와 작은수를 출력하시오.
		//조건] 두 숫자가 얼마의 차이를 보이는지 출력하시오.
		
		//입력]	첫번째 숫자: 5 
		//		두번째 숫자: 3 
		
		//출력] 큰수는 5이고, 작은수는 3입니다. 두 숫자는 2(가)이 차이납니다.
		
		int first = 0;
		int second = 0;
		
		
		Scanner scan = new Scanner(System.in);
		
		System.out.printf("첫번째 숫자: ");
		first = scan.nextInt();
		
		System.out.printf("두번째 숫자: ");
		second = scan.nextInt();
		
		if (first > second) {
			int big = first;
			int small = second;
			
			System.out.printf("큰수는 %d이고, 작은수는 %d입니다. 두 숫자는 %d(가)이 차이납니다.\n",big,small,big-small);
			
		} else {
			int big = second;
			int small = first;
			
			System.out.printf("큰수는 %d이고, 작은수는 %d입니다. 두 숫자는 %d(가)이 차이납니다.\n",big,small,big-small);
		}
		
		
	}
}
