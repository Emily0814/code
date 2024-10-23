package com.test.java;

import java.util.Scanner;

import javax.annotation.processing.SupportedSourceVersion;

public class Ex08_Error {

	public static void main(String[] args) {
		
		//Ex08_ Error.java
		
		/*
		 
		  에러, Error
		  - 오류, 버그(Bug), 예외(Exception) 등...
		  
		  
		  1.컴파일 에러
		  - 컴파일 작업 중에 발생하는 에러
		  - 컴파일러 발견!! > 번역하다가 > 문법 오류 발견!!
		  - 발생!!! > 컴파일 중단 > 프로그램 생성 불가 > 반드시 해결!!
		  - 난이도 가장 낮음 > 컴파일러가 알려줌!! > 에러 메세지
		  - 오타!!
		   
		   
		  2.런타임 에러
		  - 런타임(Runtime) > 프로그램 실행 중
		  - 컴파일 작업 중에서는 발견x > 실행 중에 발견되는 에러
		  - 문법에는 오류가 없었는데.. 다른 이유로 발생하는 에러
		  - 예외(Exception)
		  - 난이도 중간 > 발견 O,X
		  - 에러 메시지 정리
		  
		  3.논리 에러
		  - 컴파일 O > 런타임 O > 결과가 이상;; 실수같은 것
		  
		 
		 */
		
//		Scanner scan = new Scanner(System.in);
//		
//		System.out.print("숫자 입력: ");
//		int num = scan.nextInt();
//		
//		System.out.println(100 / num); //제수가 0이 될 수 없음
		
		int a1 = 10;
		int a2 = 5;
		
		System.out.println(a1 + a2);  //논리 에러
		
		
		
		
		
	}
	
}
