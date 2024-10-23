package com.test.java;

public class Ex24_For { // 6/28 ~
	
	public static void main(String[] args) {
		
		//Ex24_For.java
		/*
			
			중첩된 반복문
			-단일 for문
			- 2중 for문
			- 3중 for문
			
			for(){
			
			}
			
			for() {
				for(){
				
				}
			}
			
			for() {
				for(){
					for(){
					
					}
				}
			}
				
			
			
			
			
		 */
		
		//m1();
		//m2();
		//m3();
		m4();
		
	}//main

	private static void m4() {
		
		//별찍기(제어문)
		
		//5x5
		for (int i=0; i<5; i++) {
			for (int j=0; j<5; j++) {
				System.out.print("*");
			}
			System.out.println();
		}
		System.out.println();
		
		for (int i=0; i<5; i++) {
			for (int j=i; j<5; j++) {
				System.out.print("*");
			}
			System.out.println();
		}
		System.out.println();
		
		for (int i=0; i<5; i++) {
			for (int j=0; j<=i; j++) {
				System.out.print("*");
			}
			System.out.println();
		}
		System.out.println();
		
	}//m4

	private static void m3() {
		
		for(int i=0; i<10; i++) {
	
			for(int j=0; j<10; j++) {
				
				if(i == 5 || j == 5) {
					continue;	//break; 해보면서 익히자!
				}
				
				System.out.printf("i: %d, j: %d\n", i, j);
			}//j
			
		}//i
		
	}//m3

	private static void m2() {

		//구구단
		//2단 ~ 9단
		
		/*
		 	
		 	2 x 1 = 2
		 	2 x 2 = 4
		 	2 x 3 = 6
			..
		 	2 x 9 = 18
		
		 	3 x 1 = 3
		 	3 x 2 = 6
			..
		 	3 x 9 = 27
		
		 	4 x 1 = 4
		 	4 x 2 = 8
		 	4 x 3 = 6
			..
		 	4 x 9 = 36
			
		 */
		
		for (int dan=1; dan<=9; dan++) {
		
			//int dan = 2;
		
			System.out.println("===========");
			System.out.printf("   %d단\n", dan);
			System.out.println("===========");
			
		for(int i=1; i<=9; i++) {
			System.out.printf("%d x %d = %2d\n", dan, i, dan*i);
			}//i
			System.out.println();
		
		}//dan
		
		
		
		
		
		
		
	}

	private static void m1() {
		
		// 단일 for문
		for (int i=0; i<10; i++) {
			System.out.println("i: "+i);
			
		}
		System.out.println();
		
		//2중 for문 > 루프 변수 2개
		for(int i=0; i<10; i++) {	//대회전
			for(int j=0; j<10; j++) {	//소회전
				//System.out.println("안녕하세요."); //몇번 실행?
				System.out.printf("i: %d, j: %d\n",i,j);
			}// j for문
		}//i for문
		System.out.println();
		
		
		//3중 for문
		for (int i=0; i<24; i++) {	//대회전
			for (int j=0; j<60; j++) {	//중회전
				for (int k=0; k<60; k++) {	//소회전
					System.out.printf("%d시 %d분 %d초\n",i,j,k);
				}
			}
		}
		
		//학교
//		for(학년) {
//			for(반) {
//				for(번호) {
//					
//				}
//			}
//		}

		//아파트
//		for(단지) {
//			for(동) {
//				for(층) {
//					for(호) {
//						
//					}
//				}
//			}
//		}
		
	}//m1

}



































