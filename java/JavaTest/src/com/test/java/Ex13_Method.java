package com.test.java;

public class Ex13_Method {
	
	//6/25
	//메서드
	//- 특수 메서드
	//- 이름이 예약어(main)
	//- 프로그램을 실행 > 자바가 최우선해서 main 메서드 검색 > main() 호출
	//- 프로그램의 시작점(Entry Point)
	//- 프로그램의 종착점(End Point)
	public static void main(String[] args) {
		
		//Ex13_Method.java
		/*
 			
 			메서드, Method
 			- 함수(Function), 프로시저(Procedure), 서브 루틴(SubRoutine	)
 			- 코드의 집합
 			- 같은 목적을 가지는 코드의 집합
 			- 코드 재사용의 단위(*******)
 			
 			메서드 사용
 			1. 메서드 선언
 			2. 메서드 호출(사용한다)
 			
		 
		 */
		
		//요구사항] "안녕하세요." x 5회 출력
		//수정사항] "반갑습니다." 수정
		
		//하드 코딩
		System.out.println("반갑습니다.");
		System.out.println("반갑습니다.");
		System.out.println("반갑습니다.");
		System.out.println("반갑습니다.");
		System.out.println("반갑습니다.");
		
		//선언한 메서드 > 호출하기
		hello();
		hello();
		hello();
		hello();
		hello();
		
		
		
		
		
		
		
		
	}//main
	
	//메서드의 선언 위치(클래스 내부) 메서드 안에 또 다른 메서드를 선언할 수 없음
	//- 메서드는 클래스의 멤버이다.
	//- 메서드끼리는 선언 순서가 무관하다.
	
	/*
	 
	 메서드 헤더(header), 서명(Signature)
	 
	 접근지정자		정적키워드	반환타입	메서드명	인자리스트
	 public    		static   	void   		hello		() {
	 
	 	메서드 본문(Body), 구현부
	 	- 코드 작성
	 
	 }
	 
	 */
	
	
	public static void hello() {
		
		//hello 메서드의 할일
		System.out.println("반갑습니다.");
		
	}
	
	
}//class
