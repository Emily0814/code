package com.test.java.collection;

public class Ex55_Anonymous {
	
	public static void main(String[] args) {
		
		//Ex55_Anonymous
		/*
			
			익명 클래스, Anonymous Class	
			- 익명 객체, Anonymous Object
			- 이름없는 클래스
			
			프로젝트
			- 수많은 클래스 > 50~100개, 수백개 ~ 수천개 
			
			
			실명 클래스
			- class BBB
			- 객체를 여러개 만들 수 있다.(장점)
			- 너무 많은 클래스 관리 > 어려움
			
			익명 클래스
			- 객체를 여러개 만들 수 없다.(단점)		> 장점 : 이름이 없는 것, 파일 탐색기에 나타나지 않음. 일회용.
			- 객체를 평생 1개를 만든다.(특징)
			- 객체를 반복(x) > 1회성 필요 > 익명 클래스 > 클래스 관리 유리
			
		 */
		
		//요구사항] 인터페이스를 구현한 클래스 선언하기 > 객체를 생성하기
		
		BBB b1 = new BBB();
		b1.test();
		
		AAA b2 = new BBB();	//업캐스팅
		b2.test();
		
		//Cannot instantiate the type AAA
		//The type new AAA(){} must implement the inherited abstract method AAA.test()
		//The type BBB must implement the inherited abstract method AAA.test()
		AAA b3 = new AAA() {

			@Override	//익명클래스
			public void test() {
				System.out.println("익명 객체 메서드");
			}
			
		};
		
		b3.test();
		
		AAA b4 = new AAA() {

			@Override
			public void test() {
				System.out.println("익명 객체 메서드");
				
			}
			
		};
		
		
	}//main
	
}//class



interface AAA {
	void test();
	
}

//The type BBB must implement the inherited abstract method AAA.test()
class BBB implements AAA {
	//void test(); 오버라이딩하는 법
	
	@Override
	public void test() {
		System.out.println("추상 메서드를 구현함.");
	}
}












