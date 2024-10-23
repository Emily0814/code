package com.test.java.obj.inheritance;

public class Ex39_Overriding {
	public static void main(String[] args) {
		
		//Ex40_Overriding.java
		/* 면접에서 자주 질문함
			
			메서드 오버로딩, Method Overloading
			- 메서드 이름 동일 X N 생성
			
			메서드 오버라이딩, Method Overriding
			- 메서드 재정의 > 상속받은 메서드를 수정하는 기술
			- 클래스 상속에서 발생
			
			
			
		 */
		
		
		OverridingParent hong = new OverridingParent();
		hong.name = "홍길동";
		hong.hello();
		
		OverridingChild jhong = new OverridingChild();
		jhong.name = "홍철수";
		//jhong.hi();
		jhong.hello();
		
	}//main
	
}//class


class OverridingParent{
	
	public String name;
	
	public void hello() {
		System.out.printf("안녕하세요. 좋은 아침입니다. 저는 %s입니다.\n", name);
	
	}
	
}

class OverridingChild extends OverridingParent{
	
	//일종의 덮어쓰기 > Overriding
	public void hello() {	//상속된 부모 메서드의 hello도 가지고 있음 -> 총2개
		System.out.printf("하이~ 난 %s야!!\n", name);
	
	}
	
//	public void hi() {
//		
//		System.out.printf("하이~ 난 %s야!!\n", name);
//		
//	}
	
}















