package com.test.java.obj;

public class Ex34_Cnstructor {
	
	public static void main(String[] args) {
		
		//Ex34_Cnstructor.java
		/*
				
			생성자, Constructor
			- (특수한 목적을 가지는)메서드
			- 객체의 멤버(변수)를 초기화하는 전용 메서드
			
			
			자료형 객체명 = new 생성자;	
			Book b1 = new Book();
			
				
				
				
		 */
		
		
		//Box() > 메서드 호출 구문(0)
		
		//호출 순서
		//1. new > 객체 생성 연산자
		//2. Box()
		Box b1 = new Box();	//처음 셋팅 역할
		
		//b1.Box();	//생성자는 평생 단 1회 호출이 가능하다.(객체 생성 시)
		
		b1.setSize("대형");
		b1.setWeight(100); 	//수정하는 역할
		
		//사이즈(null), 무게(0)
		//System.out.println(b1.info());
		
		
		//요구사항] 대형 + 100 > 500개씩
		Box b2 = new Box();
		
		b2.setSize("대형");
		b2.setWeight(100);
		
		//b2.setSize("대형");
		//b2.setWeight(100);
		
		System.out.println(b2.info());
		
		//가끔씩 > "소형" + 50 > 500개씩
		Box b3 = new Box("소형", 50);
		
		//b3.setSize("소형");
		//b3.setWeight(50);
		
		System.out.println(b3.info());
		
		Box b4 = new Box("중형");
		
		Box b5 = new Box(30);
		
		System.out.println(b5.info());	//???
		
	}//main
	
}



class Box{
	
	private String size;
	private int weight;
	
	//메서드 > 생성자 > 기본 생성자(Default)
	//1. 메서드명 == 클래스명
	//2. 반환타입 > 없음 > return 소유 불가능
	public Box() {
		//this.size = null;
		//this.weight = 0;	//자동으로 생성됨
		this("대형", 100);
	}
//Java에서는 클래스명과 생성자명이 동일하면 해당 클래스의 기본 생성자가 자동으로 생성되며, 이 기본 생성자는 멤버 변수를 0으로 초기화합니다
	
	
	//메서드 오버로딩 > 생성자 오버로딩
	public Box(String size, int weight) {
		
		if(!(this.size.equals("대형") || this.size.equals("중형") || this.size.equals("소형"))) {
			return;
		}
		
		if(weight <= 0) {
			return;
		}
		
		this.size = size;
		this.weight = weight;
		
	}
	
	public Box(String size) {
		//this.size = size;
		//this.weight = 0;
		this(size, 0);
	}
	
	public Box(int weight) {
		//this.size = null;
		//this.weight = weight;
		this(null, weight);
	}
	
	
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
	
	public String info(){
		return String.format("사이즈(%s), 무게(%d)", this.size, this.weight);
	}
	
	
}








