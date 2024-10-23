package com.test.java;

import java.util.Scanner;

public class Ex23_While {
	
	public static void main(String[] args) {
		
		//Ex23_While.java
		
		//m1();
		//m2();
		m3();
		//m4();
		//m5();
		
	}

	private static void m5() {
		
		/*
		 * - K&R 스타일 : 라인이 짧아짐/ 괄호간 짝을 맞추기 어려움 while(조건){ // 조건을 먼저 만남, 선조건 후실행 문장; } -
		 * Allman 스타일 : 가독성이 좋음/ 라인이 길어짐
		 * 
		 * do //아무 역할 없음, header를 표시하기 위한정도 { // 실행문부터 만남. 선실행, 후조건 => false조건이여도 한번 실행은
		 * 함 문장; } while(조건); // 끝남의 표시로 ; 사용
		 * 
		 * do{ 문장; }while(조건);
		 * 
		 */

			//	int num = 1;
			//
			//	while (num <= 10) {
			//		System.out.println(num);
			//		num++;
			//	}
			//	System.out.println();
			//
			//	
			//	num = 1;
			//	do {
			//		System.out.println(num);
			//		num++;
			//	} while (num <= 10);

		// ----------------------------------

		int num = 11;

		while (num <= 10) {
			System.out.println(num);
			num++;
		}
		System.out.println();

		// ------------------------
		num = 11;
		do {
			System.out.println(num);
			num++;
		} while (num <= 10);

		// do while문은 우선 실행 한번은 한거임

		// console 안쓰는거 끄는 습관 가지기
		
	}

	private static void m4() {
		
		//자판기
		//- (메뉴 출력 > 음료 선택 > 가격 출력) x 루프
		
		Scanner scan = new Scanner(System.in);
		
//		for(;;) {
//			
//		}
		
		boolean loop = true;
		String sel = ""; //앞에 빼주는 것이 메모리를 덜 잡아먹는다.
		int price = 0;
		
		while(loop) {
			
			System.out.println("================");
			System.out.println("    자판기");
			System.out.println("================");
			System.out.println("1.콜라");
			System.out.println("2.사이다");
			System.out.println("3.박카스");
			System.out.println("4.종료");
			System.out.println("----------------");
			
			System.out.print("선택: ");
			sel = scan.nextLine();
			
			if(sel.equals("1")) {
				price = 700;
			} else if(sel.equals("2")) {
				price = 600;
			} else if(sel.equals("3")) {
				price = 500;
			} else {
				
				//break; //프로그램 종료? 무한 루프 탈출
				loop = false;
			}
			
			System.out.println(price + "원입니다.");
			//일시 정지
			System.out.println();
			System.out.println("계속하시려면 엔터를 입력하세요.");
			scan.nextLine();
			
			
		}//while

		System.out.println("프로그램 종료");
		
	}//m4

	private static void m3() {
		
		//1~10 누적
		int sum = 0;
		
		for(int i=1; i<=10; i++) {
			sum += i;
		}
		System.out.println(sum);
		
		//---
		
		sum = 0;
		
		int num = 1;
		
		while(num <= 10) {
			sum += num;
			num++;
		}
		System.out.println(sum);
		
		
	}

	private static void m2() {
		
		/*
			
			반복문
			1. for
			2. while
			3. do while
			4. for
			
			while (조건식) { //if문을 무한대로 돌리는 것이라고 이해하면됨.
					
			}
			
			
		 */

		//요구사항] 1~10 출력
		
		for(int i=1; i<10; i++) {
			System.out.println(i);
		}
		System.out.println();
		
		int num = 1; //초기식
		
		while(num <= 10) { //조건식
			//System.out.println(?출력할 숫자가 없음);
			System.out.println(num);
			num++; //증감식
		}
		
//		for(;;) {
//			
//		}
		
		while(true) { //조건식이 생략이 안됨! 무한대로 하고 싶으면 true를 넣어야함.
			
		}
		
		
		
	}

	private static void m1() {
		
		Scanner scan = new Scanner(System.in);
		
		System.out.print("이름: ");
		String name = scan.nextLine();
		
		System.out.print("나이: ");
		int age = scan.nextInt(); //nextInt 를 읽을 때는 \r\n 을 남김, 숫자 뒤 문자를 입력하면 에러가 남
		
		
		//scan.skip("\r\n"); 또는 아래 식을 넣어야됨!
		scan.nextLine();
		
		System.out.print("주소: ");
		String address = scan.nextLine();

		
		
		
		System.out.println(name);
		System.out.println(address);
		System.out.println(age);
		
		
		
	}
}
