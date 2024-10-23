package com.test.java;

public class Ex18_Method {
	
	public static void main(String[] args) {
		
		//Ex18_Method.java
		
		//재귀 메서드, Rqcursive Method
		//- 재귀 구조를 가지는 메서드
		//- 메서드 구현부에게 자기 자신을 호출하는 메서드
		//- 특정 행동을 반복해여 하는 경우에 사용(몇 번 반복해야 할지 모르는 경우) ***
		
		
		//m1();
		//m2();
		//m3();
		
		//팩토리얼
		//4! = 4 X 3 X 2 X 1
		
		//요구사항] 팩토리얼 메서드를 구현하시오.
		
		//int n = 4;
		
		// TODO 김대리 > 점심 후 반드시 확인할 것!!!
		//int result = factorial(n); //Ctrl + 1 enter하면 손쉽게 자동으로 메서드생성
		
		//System.out.printf("$d! = %d\n", n, result);
		
		//m4(); //Ctrl + Shift + m
		
		//홍길동 업무 설명..
		int n = 4;
		int result = factorial(n);
		System.out.printf("$d! = %d\n", n, result);
		
	}//main
	

	private static int factorial(int n) {
		
		return (n==1)? 1 : n * factorial(n-1);
	}


	public static void m1() {
		System.out.println("첫번째 메서드");
		//m2();
	}

	public static void m2() {
		System.out.println("두번째 메서드");
		
	}
	
	//재귀 메서드 필요 또는 실수로 만들어짐
	public static void m3() {
		System.out.println("세번째 메서드");
		//m3(); 재귀 호출, 무한반복, 호출하는 과정에서 메모리 사용, 메모리가 꽉차서 죽임
	}
	
}
