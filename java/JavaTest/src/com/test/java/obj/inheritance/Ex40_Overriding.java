package com.test.java.obj.inheritance;

import java.util.Calendar;

public class Ex40_Overriding {
	
	public static void main(String[] args) {
		
		//Ex40_Overriding.java
		
		Time t1 = new Time(2, 30);
		Time t2 = new Time(3, 40);
		
		System.out.println(t1.info());
		System.out.println(t2.info());
		
		System.out.println(t1);
		System.out.println(t1.toString());
		
		
		//Calendar now = new Calendar();
		Calendar now = Calendar.getInstance();
		//System.out.println(now);
		//System.out.println(now.toString());
		
		
	}//main
	
}//class


//시간 클래스
class Time {	//extends Object
	
	private int hour;
	private int min;
	
	public Time(int hour, int min) {
		
		this.hour = hour;
		this.min = min;
	}

	public String info() {
		
		return this.hour + ":" + this.min;
		
	}

	@Override	//오른쪽 마우스 -> 소스 -> toString
	public String toString() {
		return "Time [hour=" + hour + ", min=" + min + "]";
	}

//	@Override // 어노테이션(일종의 주석) //Ctrl + space
//	public String toString() {
//
//		return this.hour + ":" + this.min;
//		
//	}
	
	
	
	
}






















