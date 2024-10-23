package com.test.begin.di2;

public class Service {

	//의존 주입 도구
	//1. 생성자 > 요즘에 많이 쓰는 타입
	//2. Setter
	
	
	private Hong hong;
	
	public Service(Hong hong) {
		this.hong = hong;
	}
	
	public void setHong(Hong hong) {
		this.hong = hong;	
	}
	
	public void work() {
		
		//기존 방식
		//Hong hong = new Hong();
		//hong.coding();
		
		//DI
		hong.coding();
	  
		
	}
	
}
