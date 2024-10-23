package com.test.java;

import java.util.Scanner;

public class Ex15_Method {
	
	public static void main(String[] args) {
		
		//Ex15_Method.java
		
		//public static void hello() 우선 이번 수업에서 void hello만 설명
		
		//void: 반환타입
		//- void == 없다. == null
		
		String name = getName();
		System.out.println(name);
		
		String result = checkScore(100, 90,80);
		System.out.println(result);
		
		Scanner scan = new Scanner(System.in);
		
		//매개변수와 리턴값이 어떻게 되어있는지 확인하는 습관을 기르자
		//void <- 리턴값 java.io.PrintStream.println(String x) <- 매개변수
		int num = scan.nextInt();
		
		
		
	}//main
	
	//This method must return a result of type String
	//String > 반환타입
	public static String getName(){
	
		//return문, 메서드 종료 + 돌아가기, 단일 값만 가능!
		return "홍길동"; // void가 아닌 다른 타입을 넣으면 반드시 return을 선언해주면 해결
		
		//Unreachable code, return문에서 종료되어 에러난 것
		//System.out.println("종료");
		
	}
	
	public static String checkScore(int kor, int eng, int math) {

		int total = kor + eng + math;

		double avg = total / 3.0;

		String result = avg >= 60 ? "합격" : "불합격";

		return result;
	}
	
	
}
