package com.test.java;

import java.util.Scanner;

public class Ex22_For {
	
	public static void main(String[] args) {
		
		//Ex22_For.java
		/*
		 	반복문
		 	- 코드를 원하는 횟수만큼 반복하는 제어
		 	- 생산성 + 유지보수
		 	
		 	for문
		 	
		 	for (초기식; 조건식; 증감식) {
		 		구현부;
		 	}
		 
		 
		 */
		
		//m1();
		//m2();
		//m3();
		//m4();
		//m5();
		//m6();
		//m7();
		//m8();
		//m9();
		//m10;
		m11();
		//m12();
		//m13();
		
	}//main

	private static void m13() {
		
		//난수 만들기
		//- 임의의 수 만들기 <-쉽게 말해 랜덤 ex)로또, 게임 등..
		// 1, 1, 1, 1, 1, 1, 1, 1, 0, 0
		
		//1. Math 클래스
		//2. Random 클래스 <- 자바 말고는 잘 사용하지 않음
		
		//System.out.println(Math.random());
		
		//Returns a double value with a positive sign, greater than or equal to 0.0 and
		//less than 1.0. 
		
		//0~0.999999999999999999999
		for(int i=0; i<10; i++) {
			//System.out.println(Math.random());
			
			//가공
			//0.0 > 0.0 > 0
			//0.1 > 1.0 > 1
			//0.345678 > 3.45678 > 3
			//0.5 > 5.0 > 5
			//0.9 > 9.0 > 9
			
			//System.out.println(Math.random() * 10);
			//System.out.println((int)(Math.random() * 10));
			
			//주사위(1 ~ 6)
			//0.0 > 0.0 > 0 > 1
			//0.1 > 0.6
			//0.2 > 1.2
			//0.3 > 1.8
			//0.4 > 2.4
			//0.5 > 3.0
			//0.6 > 3.6
			//0.7 > 4.2
			//0.8 > 4.8
			//0.9 > 5.4 > 5 > 6
			
			System.out.println((int)(Math.random()*6) + 1);
			
		}
		
	}

	private static void m12() {
		
		//지역 변수의 영역
		//- 자신이 포함된 메서드 영역
		//- 자신이 포함된 제어문 영역
		// > 블럭 스코프를 가진다.(Block Scope)
		
		int a = 10;	//영역(m12)
		//초기화
		//-초깃값? > 업무를 살펴보고 판단
		//			1. 필요한 값
		//			2. 최대한 피해주지 않는 값 
		int b = 0; 	//초기화를 하는 이유? 실행과 문법검사를 다름, false 경우에 에러가 남.
		double c = 0.0;
		char d = '\0'; //null 문자
		boolean e = false;
		String f = "";
		
		
		if(a>0) {
			
			System.out.println(a);
			b = a * 2; //영역(if)
			
			if(b>0) {
				
				int g = 10;
				
			}

			if(b>0) {
				
				int g = 10;
				
			}
			
		}
		
		System.out.println(b);
		
		int i = 0;
		
		for (i=0; i<10; i++) {
			System.out.println("반복");
		}
		
		System.out.println(i); //지역변수라 위에 식이 실행되지 않으므로 앞에 변수를 빼주면 실행 가능
		
		
	}

	private static void m11() {

		int sum = 0;

		for (int i = 1; i <= 3; i++) {

			sum += i;
			System.out.print(i + " + ");
			
		}
		
		System.out.println("\b\b= " + sum); // 1 + 2 + 3 = 6 결과가 나와야 되는데 이클립스에서는 backspace 지원안됨
		
	}

	private static void m10() {
		
		//1 + 2 + 3 = 6
		
		int sum = 0;
		
		for(int i=1; i<=3; i++) {

			sum += i;
			System.out.print(i);
			
			if(i != 3) {
				System.out.println("+");
			}
			
		}
		
		System.out.println("=" + sum);
		//안 좋은 예시이므로 사용하지 말자!
	}
	
	private static void m9() {
		
		//분기문 > 단독으로 사용 불가, 조건문 or 반복문과 같이 사용
		//- break > 자신이 포함된 제어문을 탈출
		//- continue
		
//		for(int i=1; i<=10; i++) {
//			
//			//break;
//			
//			if(i==5) {
//				break; //조건부 탈출장치가 되는 기능으로 사
//			}
//			
//			System.out.println(i);
//			//break; //출력이 1만 나옴, 반복문의 의미가 사라짐
//			
//		}

//		for(int i=1; i<=10; i++) {
//			
//			//continue; 다시 처음으로 돌아가라는 의미, 계속 증감되기만 함.
//			
//			if(i==5) {
//				continue;
//			}
//			
//			System.out.println(i);
//	
//			continue; //아래에 위치한 것은 의미가 없음
//			
//		}
		
		//사용자 숫자 입력 > 홀수의 합?
		//- 숫자를 몇 개 입력? > 사용자 맘대로~ > 회전수? > 무한 루프
		//- 0을 입력하면 프로그램 종료
		
		//초기 준비물 아래 2개
		int sum = 0;
		Scanner scan = new Scanner(System.in);
		
		for (;;) {
			
			System.out.print("숫자: ");
			int num = scan.nextInt();
			
			if(num == 0) {
				break;
			}
			
			if(num % 2 == 1) {
				//홀수
				sum += num;
			} else {
				//짝수
				System.out.println("짝수를 입력 > 프로그램 종료");
				break; //불필요한 값으로 혼동되지 않도록 break 사용권장
			}
			
			
		}
		
		System.out.println("합: " + sum);
		
		
	}

	private static void m8() {
		
		// 무한 루프. Infinite Loop
		
		//for (int i=0; i<10; i--) { //증감식을 i++ 해야하는데 실수하거나 몇 번을 실행하는지 예측불가일 때 사용
			
		//	System.out.println(i); //물리적으로 무한루프입니까? 아닙니다. 왜? 오버플로우(or 언더플로우)가 발생하기 때문입니다. 
		//}

		//무한 루프 직접 생성하기
//        1.for(int i=0; true; i++) { //true or 조건식을 생략하면 무한루프로 처리됨, 보통 true 쓰지 않음
//			System.out.println(i);
//		}
	
		//2.
		for(;;) {
			System.out.println("실행문");
		}
		
		
		
		
	}

	private static void m7() {
		//구구단 출력
		
		/*
		 	
		 	5 x 1 = 5
		 	5 x 2 = 10
		 	5 x 3 = 15
		 	..
		 	5 x 9 = 45
		 	
		 */
		
		Scanner scan = new Scanner(System.in);
		
		System.out.print("단 입력: ");
		
		
		int dan = scan.nextInt();
		
		for(int i=1; i<10; i++) {
			
			//System.out.println("5 x 1 = 5");
			System.out.printf("%d x %d = %2d\n", dan, i, dan * i); //가독성 좋게 2자리 숫자로 맞춘다.
			
		}
		
		
		
	}

	private static void m6() {
		//요구사항] 사용자가 입력한 숫자들의 합 > 10개 입력
		Scanner scan = new Scanner(System.in);
		
		int sum = 0;
		
		for (int i=0; i<10; i++) {
			
			//사용자 숫자 입력 > 누적
			System.out.print("숫자: ");
			int num = scan.nextInt();
			sum += num;
			
			
		}
		
		System.out.println("합: " + sum);
		
		
	}

	private static void m5() {

		//요구사항] 1 ~ 사용자가 립력한 숫자까지의 합
		
		Scanner scan = new Scanner(System.in);
		
		System.out.print("숫자: ");
		int num = scan.nextInt();
		
		int sum = 0; //누적 변수
		for (int i=1; i<=num; i++) {
			
			sum += i;
			
		}
		
		System.out.printf("1 ~ %d = %d\n", num, sum);
		
		
	}

	private static void m4() {
		
		//요구사항] 1~10까지의 합 > 누적 연산
		
		//*** 누적값 구하기
		
		//sum = 0 + 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10
		
		//1. 누적 변수
		int sum = 0;
		
		//2. 원하는 수열 만들기
		
		for (int i=1; i<=10; i++) {
			
			sum = sum + i;
			// i(1) 1 = 0 + 1
			// i(2) 3 = (0 + 1) + 2
			// i(3) 6 = (0 + 1 + 2) + 3
			// i(4) 10 = (0 + 1 + 2 + 3) + 4
			//..
			// i(10) 55 = (0 + 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9) + 10
			
		}
		
		System.out.println(sum);
		
	}
	
	private static void m3() {
		
		//1.회전수 제어
		//2.루프 변수 제어(*****)
		
		//*** 업무 구현 > 특정한 숫자의 채턴 사용 > 반복문의 루프 변수 활용
		
		//요구사항] 숫자 1~10까지 출력
		System.out.println(1);
		System.out.println(2);
		System.out.println(3);
		System.out.println(4);
		System.out.println(5);
		System.out.println(6);
		System.out.println(7);
		System.out.println(8);
		System.out.println(9);
		System.out.println(10);
		
		
		int num = 1;
		
		System.out.println(num);
		num++;
		System.out.println(num);
		num++;
		System.out.println(num);
		num++;
		System.out.println(num);
		num++;
		System.out.println(num);
		num++;
		System.out.println();
		
		num = 1;
		
		for(int i=0; i<10; i++) {
			
			System.out.println(num);
			num++;
			
		}
		System.out.println();
		
		for(int i=0; i<10; i++) {
			
			System.out.println(i+1);
			
		}
		System.out.println();
		
		for(int i=1; i<11; i++) {
			
			System.out.println(i);
			
		}
		System.out.println();
		
		for(int i=1; i<11; i=i+2) {
			
			System.out.println(i);
			
		}
		System.out.println();
		
		for(int i=2; i<11; i+=2) {
			
			System.out.println(i);
			
		}
		System.out.println();
		
		//1~100사이의 7의 배수
		for(int i=7; i<=100; i+=7) {
			
			System.out.println(i);
			
		}
		
		
		
		
	}
	
	private static void m2() {
		
		//반복문 목적!!
		//1. 회전수 제어
		//2. 루프 변수 제어
		
		for (int i=0; i<5; i++) {
			System.out.println("실행문");
		}
		System.out.println();
		
		for (int i=1; i<5; i++) {
			System.out.println("실행문");
		}
		System.out.println();
		
		for (int i=123; i<128; i++) {
			System.out.println("실행문");
		}
		System.out.println();
		
		for (int i=5; i>0; i--) {
			System.out.println("실행문");
		}
		System.out.println();
		
		for (int i=1; i<=41; i=i +10) {
			System.out.println("실행문");
		}
		System.out.println();
		
		//가장 보편적인 방법
		//- 루프 변수 > 0부터
		for (int i=0; i<5; i++) {
			System.out.println("실행문");
		}
		System.out.println();
		
		
		
	}

	private static void m1() {
		
		//요구사항] "안녕하세요." x 5 출력
		System.out.println("안녕하세요.");
		System.out.println("안녕하세요.");
		System.out.println("안녕하세요.");
		System.out.println("안녕하세요.");
		System.out.println("안녕하세요.");
		
		hello();
		hello();
		hello();
		hello();
		hello();
		
		
		//순서
		//1. int i=0; > 초기식 <- 초기식은 딱 한번만 실행, 반복x
		//2. i<5; > 조건식
		//3. 구현부 실행
		//4. i++ > 증감식
		//5. i<5; > 조건식
		//6. 구현부 실행
		//7. i++ > 증감식 <-조건에 만족하지 않을 때 탈출~
		
		for (int i=0; i<5; i++) { //++i 하나밖에 없어서 똑같음
			
			//System.out.println("Hello~");
			hello();
			
		} //반복문은 나가지 않고 다시 돌아옴, 반복문을 쓴다고 메서드를 안쓰지는 않음
		
		
	}

	private static void hello() {
		
		System.out.println("반갑습니다.");
		
		
	}
}






















