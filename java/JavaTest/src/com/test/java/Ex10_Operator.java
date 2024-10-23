package com.test.java;

public class Ex10_Operator {
	public static void main(String[] args) {
	
		//Ex10_Operator.java
		/*
			연산자, Operator
			-수학 연산자 > 프로그래밍 연산자
			- 피연산자를 대상으로 미리정해진 연산(행동)을 한 후에, 연산(행동)의결과를 반환하는 요소
			- 주로 기호를 사용 + 단어도 사용
			
			
			1. 문장, Statement
			2. 표현식, Expression
			3. 연산자, Operator
			4. 피연산자, Operand
			5. 연산자 우선 순위
			6. 연산자 연산 방향
			
			1.문장, Statement
			- 1개 이상의 표현식이 모여서 문장이 된다.
			ex) int n1 = 10;
			ex) int n2 = 10 + 20;
			ex) int n3 = scan.nextInt();
			
			2.표현식, Expression
			-문장을 구성하는 최소 단위
			ex) 10
				int n1
				n1 = 10
			
			3. 연산자, Operator
			ex) int n2 = 10 + 20;
			
			4. 피연산자, Operand
			ex) int n2 = 10 + 20;
			
			5. 연산자 우선 순위
			- 하나의 문장에 속해있는 연산자들 중 누구를 먼저 실행할지 정해져있는 순위
			- 1 + 2 x 3 = ?
			
			6. 연산자 연산 방향
			- 하나의 문장에 속해있는 연산자들 중 우선 순위가 동일한 연산자들 중 누구를 먼저 실행할지 정해져있는 순위
			- 1 + 2 + 3
			- 어느 방향으로 실행할지
			
			
			
			[연산자 종류]
			1. 행동(목적)
				a. 산술 연산자
				b. 비교 연산자
				c. 논리 연산자
				d. 대입 연산자
				e. 증감 연산자
				f. 조건 연산자
				g. 비트 연산자 (쓸 일이 없어서 수업x)
			
			2. 형태(피연산자의 개수)
				a. 1항 연산자
				b. 2항 연산자
				c. 3항 연산자
				
		 */
		
		//산술 연산자
		//- +, -, *, /, %(mod, 나머지)
		//- 2항 연산자
		//- 피연산자를 숫자형을 가진다.(정수, 실수)
		//ex) true + false
		
		int a = 10;
		int b = 3;
		
		//10 + 3 = 13
		System.out.printf("%d + %d = %d\n", a, b, a + b);
		System.out.printf("%d - %d = %d\n", a, b, a - b);
		System.out.printf("%d * %d = %d\n", a, b, a * b);
		System.out.printf("%d / %d = %d\n", a, b, a / b); //몫
		System.out.printf("%d %% %d = %d\n", a, b, a % b); //나머지, java.util.IllegalFormatFlagsException <- % 형식문자 오류
		//escape시켜줘야함 % 하나를 더 붙여주면 해결됨
		
		double c = 10;
		double d = 3;
		
		System.out.printf("%.0f / %.0f = %f\n", c, d, c / d); 
		
		//*** 모든 산술 연산자의 결과값 자료형
		//- 두 피연산자의 자료형 중에서 더 크기가 큰 자료형으로 반환된다.
		//(왜? 데이터 손실을 최소화하기 위해서..)
		
		//- 정수 / 정수 = 정수
		//- 실수 / 실수 = 실수
		//- 정수 / 실수 = 실수
		//- 실수 / 정수 = 실수
		
		System.out.println(10 / 3);
		System.out.println(10.0 / 3.0);
		System.out.println(10 / 3.0);
		System.out.println(10.0 / 3);
		
		
		int e = 10000;
		byte f = 10;
		
		System.out.println(e + f);
		
		//- +, -, * > 오버플로우 조심~
		
		int g = 2000000000;  //2_000_000_000; _사용 가능하며 가독성이 좋음, 잘 안씀
		int h = 2000000000;
		
		System.out.println(g + h); //에러가 발생하지 않고 값만 깨짐, 통상적으로 예측 가능함
		System.out.println(g + (long)h); //long으로 자료형을 변경해줌
		
		
		//정수값 > int a;
		//실수값 > double b;
		
		byte j = 10;
		byte k = 20;
		//int 미만의 모든 자료형의 산술 연산 결과는 항상 int이다.
		//- CPU가 한번에 처리하는 데이터의 크기 > int
		//Type mismatch: cannot convert from int to byte
		//byte + byte = int
		//short + short = int
		//byte l = j + k;
		byte l = (byte)(j + k); //번거로워서 byte and short변수를 잘 사용하지 않음
		//메모리 값도 저렴해졌고 개발의 편의를 위해 int를 main으로 사용
		System.out.println(j + k);
		
		//float > double(배정도)
		
		//8가지
		//- int, long
		//- double
		//- char
		//- boolean
		
		
		
		
		
		
		
		
	}
}
