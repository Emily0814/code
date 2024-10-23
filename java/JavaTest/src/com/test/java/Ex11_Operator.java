package com.test.java;

import java.util.Scanner;

public class Ex11_Operator {
	
	public static void main(String[] args) {
		
		//Ex11_Operator
		/*
			비교연산자
			- >,>=, <=, ==(equals), !=(!,=, not equals)
			- 2항 연산자
			- 피연산자들의 우위(동등) 비교
			- 피연산자는 숫자형이다.
			- 연산의 결과가 boolean이다.(true, false)
			
		 */
		
		int a = 10;
		int b = 3;
		
		System.out.println(a > b);   //초과
		System.out.println(a >= b);  //이상
		System.out.println(a < b);   //미만
		System.out.println(a <= b);  //이하
		System.out.println(a == b);   
		System.out.println(a != b);  
		
		
		//흐름의 조건으로 사용
		//요구사항] 사용자로부터 나이를 입력 > 성인이면 통과! 미성년이면 거절!
		
//		Scanner scan = new Scanner(System.in);
//		
//		System.out.println("나이 입력: ");
//		
//		int age = scan.nextInt();
//		
//		boolean result = age >= 18;
//		
//		System.out.println(result);
		
		System.out.println();
		System.out.println();
		System.out.println();
		
		
		
		//비교 연산자 주의
		//- 문자열(참조형) 비교
		
		int n1 = 100;
		int n2 = 100;
		int n3 = 50;
		n3 = n1 + n2;
		int n4 = 200;
		
		
		System.out.println(n1==n2);
		System.out.println(n1==n3);
		System.out.println(n3==n4);  //n1+n2==200
		
		String s1 = "홍길동";
		String s2 = "홍길동";
		String s3 = "홍";
		s3 = s3 + "길동"; //"홍" + "길동" > "홍길동"
		
		System.out.println(s1==s2); //잘못된 행동
		System.out.println(s3);
		System.out.println(s1==s3); //false 잘못된 행동 
		
		//*** 문자열을 비교할 때는 절대로 연산자(==, !=)를 사용하면 안된다.
		
		//*** 문자열의 비교는 equals() 메서드를 사용한다.
		System.out.println(s1.equals(s2)); //s1==s2		
		System.out.println(s1.equals(s3)); //s1==s3		
		System.out.println();
		System.out.println();
		System.out.println();
		
		/*
		 
			논리 연산자
		 	- &&(and), ||(or), !(not)
		 	- 2항 연산자(&&, ||)
		 	- 1항 연산자(!)
		 	- 피연산자의 자료형이 boolean이다.
		 	- 연산의 결과는 boolean이다.
		 	- 정해진 규칙에 따른 결과를 반환
		 	
		 	A && B = ?
		 	
		 	논리곱(x) T=1, F=0이라고 생각해보면 이해하기 쉬움
		 	T && T = T
		 	T && F = F
		 	F && T = F
		 	F && F = F
		 	
		 	A || B = ?
		 	
		 	논리합(+)
		 	T || T = T
		 	T || F = T
		 	F || T = T
		 	F || F = F
		 	
		 	
		 	소개팅 > 남자 소개
		 	1. 키 180cm이상
		 	2. 잘생김
		 	
		 	
		 	!A(부정연산자)
		 	
		 	!T = F
		 	!F = T
		 	
		 	
		 	T = 1, F = 0
		 	베타적 논리합(xor)
		 	= exclusive or
		 	
		 	A ^ B = ?
		 	
		 	T ^ T = F
		 	T ^ F = T
		 	F ^ T = T
		 	F ^ T = F
		 	
		 	
		 
		*/
		
		
		boolean b1 = true;
		boolean b2 = false;
		
		System.out.println(b1 && b2); //false 0
		System.out.println(b1 || b2); //true 1
		System.out.println(!b1);	  //false 0
		System.out.println(b1^b2);	  //true 1
		
		
		
		// 나이 입력 > 18세 이상 + 60세 미만
		//	    		  18 <= age < 60
		
		int age = 20;
		//The operator < is undefined for the argument type(s) boolean, int
		//System.out.println(18<=age<60); 한 번에 1가지씩만! (true < 60)로 확인되어 오류남
		System.out.println(18<=age && age<60); 
		System.out.println((18<=age) && (age<60)); 
		
		
		/*
			
			대입(할당) 연산자
			- =
			- +=, -=, *=, /=, %= (복한 대입 연산자)
			- 2항 연산자
			- LValue(변수) = RValue(상수, 변수)
			- LValue와 RValue의 자료형이 반드시 동일해야 한다. > 형변환 사용
			
			- 대입 연산자의 연산자 우선 순위가 가장 낮다.
			- 
			
			
			연산자 우선 순위
			- 산술 연산자 > 비교 연산자 > 논리 연산자 > 대입 연산자
			
			
			
			
			
		 */
		
		int sum = 1 + 2 * 3; //연산자 총3개, * > + > =
		
		System.out.println(sum);
		
		
		int m1 = 100;
		int m2;
		int m3;
		
		m2 = m1;
		m3 = m1;
		
		//연산자의 연산 방향
		//- 하나의 문장 > 동일한 연산자 여럿 > 어느 방향?
		//1 + 2 + 3(연산자는 대부분 왼쪽부터)
		m3 = m2 = m1; //But, 대입 연산자는 대부분 오른쪽부터
		
		
		//복홥 대입 연산자
		int n = 10;
		
		//n에 1을 더하시오. > 누적
		n = n + 1;
		System.out.println(n);
		
		n += 1; //n = n + 1 , 위와 같은 표현이며 간편하게 표현한 것
		System.out.println(n);
		
		n += 5; //n = n + 5
		System.out.println(n);
		
		n = n-2;
		System.out.println(n); //15
		
		n -= 3;
		System.out.println(n); //12
		
		n = n * 2;
		System.out.println(n); //24
		
		n *= 3;
		System.out.println(n); //72
		
		n = n /3;
		System.out.println(n); //24
		
		n /= 2;
		System.out.println(n); //12
		
		n = n % 7;
		System.out.println(n); //5
		
		n %= 3;
		System.out.println(n); //2
		
		n = n + 10;
		n += 10;
		
		n = n - 10;
		n -= 10;
		
		n = 10 + n;
		n += 10;
		
		n = 10 - n;
		n -= 10; //조심;;;
		
		/*
		 	증감 연산자
			- ++(증가), --(감소)
			- 1항 연산자
			- 피연산자는 숫자형이다.
			- 누적 연산
			- 기존의 값에 1을 더하거나, 1을 뺀다
			- 피연산자의 위치를 바꿀 수 있다. (*****)
				-연산자의 위치에 따라 연산자 우선 순위가 바뀐다.
					- ++n: 전위 > 연산자 우선순위 최상  소괄호빼고는 애가 최상
					- n++: 후위 > 연산자 우선순위 최하
			
			
		
		
		 */
			
		n = 10;
		
		//n = n + 1;
		//n += 1;
		++n; //제일 효율성있음 but 응용을 못함 1만 더함
		
		System.out.println(n);
		
		//--n = n - 1;
		//n -= 1;
		--n;
		System.out.println(n);
		
		++n;
		n++; //자신이 하는 행동에는 변하지 않음
		System.out.println(n);

		--n;
		n--; 
		System.out.println(n);
		System.out.println();
		
		//*** 하나의 문장에 증감 연산자와 다른 연산자를 동시에 사용하지 말 것!! > 가독성 저하
		
		n = 10;
		int result = 0;
		
		//result = 10 + ++n;
		
		++n;
		result = 10 + n;
		
		System.out.println(result);
		
		System.out.println();
		n = 10;
		result = 0;
		
		//result = 10 + n++;
		
		result = 10 + n;
		
		n++;
		
		
		System.out.println(result);
		System.out.println(n);
		
		
		int o = 10;
		
		System.out.println();
		System.out.println(--o-o--); //0
		System.out.println(o); //8
		
		
		/*
			
			조건 연산자
			- ?:
			- 3항 연산자 (유일함)
			- A ? B : C
			- A: boolean > 조건으로 사용
			- B,C: 상수, 변수 > 연산의 결과로 사용
			- A가 참이면 B반환, A가 거짓이면 C반환
			
			
		 	
		 	
		 */
		
		System.out.println(1+2);
		System.out.println(true ? 10 : 20);
		System.out.println(false ? 10 : 20);
		
		age = 10;
		
		System.out.println(age >= 18);
		System.out.println(age >= 18 ? "성인" : "미성년자");
		
		//18세 이상 ~ 60세 미만 > 통과, 거절
		age = 10;
		System.out.println(age >= 18 && age < 60);
		System.out.println(age >= 18 && age < 60 ? "통과":"거절");
		
		
		//System.out.println(age >= 18? "성인" : 100);
		
		//자료형? regult2 = age >= 18? "성인" : 100; 문법적으로 허용은 가능하나 경우에 따라 값이 달라져 에러
		
		
		
		//제어문 > 조건문 > if문
		
		
		
		//비트 연산자
		//- bit값을 대상으로 연산
		//- &(and), |(or)
		
		a = 10;
		b = 5;
		
		System.out.println();
		System.out.println(a & b);
		System.out.println(a | b);
		
		//잘 안씀, 쓰게 되면 그 때 연습해도 됨.
		
		
		//정수 / 정수
		System.out.println(5/0);
		System.out.println(0/5);
		
		//실수 / 실수
		System.out.println(5 / 0.0);	//infinity
		System.out.println(5 % 0.0);	//NaN > Not a Number
		
		//Shift(이동) 연산자
		//a>>1 한 칸씩 오른쪽으로 이동
		
		
		
		
		//12에서 하다가 옴
		
		char c = 'G';
		
		System.out.println((int)c >= 65 && (int)c <= 90);
		
		System.out.println((int)c >=(int)'A' && (int)c <= (int)'Z');
		
		//비교 연산자는 char 비교 가능 > 숫자로서 비교
		System.out.println(c >= 'A' && c <= 'Z');
		
		System.out.println(c >= '가' && c <= '힣');
		
		
		
	}
	
}
