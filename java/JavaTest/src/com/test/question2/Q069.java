package com.test.question2;

import java.util.Random;
import java.util.Scanner;

public class Q069 {
	
	public static void main(String[] args) {
	
		//Q069.java 배열의 요소를 순차적으로 2개씩 더한 결과를 배열로 생성한 뒤 출력하시오.
		//조건] 원본 배열 길이: 사용자 입력
		//		원본 배열 요소: 난수(1~9)
		//		결과 배열 길이: 사용자 입력 / 2
		
		//입력] 배열 길이: 10 , 배열 길이: 5 
		
		//출력] 원본: [ 1, 5, 3, 6, 2, 7, 8, 2, 2, 9 ]
		//		결과: [ 6, 9, 9, 10, 11 ]	
		//		원본: [ 1, 5, 3, 2, 7 ]
		//		결과: [ 6, 5, 7 ]
		
		int length = 0;
		int[] list = null;
		int[] copy = null;
		Random rnd = new Random(); // < 이건 뭐지??
		
		Scanner scan = new Scanner(System.in);
		
		System.out.print("배열 길이: ");
		length = scan.nextInt();
		
		list = new int[length];
		copy = new int[(int)Math.ceil(length/2.0)];
		
		for (int i=0; i < list.length; i++) {
			list[i] = rnd.nextInt(9) + 1; // 0~9 이거를 +1 1~10으로 변경해줌
		}
		
		System.out.print("원본: ");
		
		printArray(list);
		
		for (int i=0; i<list.length-1; i+=2) {
			
			copy[i/2] = list[i] + list[i+1];
			
		}
		
		if (list.length % 2 == 1) {
			copy[copy.length-1] = list[list.length-1];
		}
		
		System.out.print("결과: ");
		
		printArray(copy);
		
		
		
		
	}//main

	private static void printArray(int[] list) {
		
		String temp = "[ ";
		
			
			for(int i=0; i< list.length; i++) {
				
				temp += list[i];
				
				if(i<list.length -1) {
					
					temp += ", ";
					
				}
				
				
			}
			
			temp += " ]";
			
			System.out.println(temp);
			
			
			
		}
				
		
		
	}
	

