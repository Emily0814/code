package com.test.java.obj.inheritance;

public class Ex43_Abstract {
	
	public static void main(String[] args) {
		
		//Ex43_Abstract.java
		/*
			
			Abstract
			- 추상 클래스, Abstract Class
			- 추상 메서드, Abstract Method 
			
			
			
			
			
		 */
		
		//홍길동
		
		G305 m1 = new G305();
		
		m1.color = "black";
		m1.weight = 100;
		m1.buttons = 7;
		
		m1.click();
		m1.charge();
		
		
		M410 m2 = new M410();
		
		m2.weight = 150;
		m2.buttons = 5;
		m2.size = "대형";
		
		m2.click();
		m2.autoScroll();
		
		//Cannot instantiate the type Mouse
		//- 추상 클래스가 객체를 생성하지 않지 못하는 이유?
		//- 	> 추상 메서드때문에(메서드가 구현부를 가지지 못해서)
		//Mouse m3 = new Mouse();
		//m3.click();
		
	}//main
	
}//class



//추상 클래스
//- 추상 메서드를 가질 수 있다.
//- 객체 생성할 수 없다. 
//- 일반 클래스의 부모 역할을 한다.(상속) > 추상 메서드 > 행동 정의(규약)


//추상 클래스 선언
abstract class Mouse{
	
	public int weight;
	public int buttons;
	
	//추상 메서드 선언하기 > 규약
	public abstract void click();	//구현부(Body) 없음
	
}


//마우스 생산
class G305 extends Mouse {
	
	public String color;
	//public int weight;
	//public int buttons;
	
	public void click() {
		System.out.println("G305의 기술로 클릭합니다.");
	}
	
	public void charge() {
		System.out.println("충전합니다.");
	}
	
	
}


class M410 extends Mouse { //일반 메서드는 구현부가 없는 메서드를 만들 수 없음 
	
	//public int weight;
	//public int buttons;
	public String size;
	
//	public void click() {
//		System.out.println("click");
//	}
	
	public void autoScroll() {
		System.out.println("Auto Scroll");
	}
	//추상 메서드 > 상속 > 구현
	//1. 추상 메서드를 구현한다.(없던 Body를 추가로 구현했기 때문에)
	//2. 오버라이드를 했다.

	@Override
	public void click() {
		System.out.println("M410 클릭!!");	
	}
	
	
	
}





