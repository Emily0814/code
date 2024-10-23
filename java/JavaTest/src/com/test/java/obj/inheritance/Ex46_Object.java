package com.test.java.obj.inheritance;

import java.util.Scanner;

public class Ex46_Object {
	
	public static void main(String[] args) {
		
		//Ex46_Object.java
		/*
			
			Object 클래스
			- 모든 클래스의 부모 클래스이다.
			
		 */
		
		AAA a1 = new AAA();
		AAA a2 =  new BBB(); //부모 변수 = 자식 객체 > 업캐스팅
		AAA a3 =  new CCC(); //할아버지 = 손자 객체 > 업캐스팅
		
		//Object 참조 변수는 만능 타입이다. > 모든 것을 저장할 수 있다.(*****)
		Object o1 = new Object();
		Object o2 = new AAA();
		Object o3 = new BBB();
		Object o4 = new CCC();
		
		Object o5 = new Scanner(System.in);
		Object o6 = new Test();
		
		Object o7 = new int[3];
		Object o8 = "홍길동";
		
		//값형의 데이터를 Object 변수에 넣을 때
		// > 박싱 발생
		
		//이상함?? > 100(int), true(boolean) > 클래스? X
		Object o9 = 100; //Boxing 발생
		//Object o9 = new Integer(100);
		
		//System.out.println(o9 + 100);	//Object와 int를 더하려고 해서 에러남
		System.out.println((int)o9 + 100);		//언박싱 발생, 다운 캐스팅
		System.out.println((Integer)o9 + 100); 	//언박싱 발생, 다운 캐스팅
		//값형을 넣으면 성능 저하, 일반적인 상황일 때는 크게 문제 되지 않음
		
		
		Object o10 = true;
		
		//System.out.println(a10 ? "O" : "X");
		System.out.println((boolean) o10 ? "O" : "X");
		
		//a3.a = 10;
		
		int a = 100;	//Boxing 발생
		Integer b = new Integer(100);
		
		System.out.println(a == b); //값형과 참조형을 비교하면 타 클래스는 에러남
		System.out.println(a + b);
		
//		Object[] list = new Object[5];
//		list[0] = 100;
//		list[1] = "홍길동";
//		list[2] = true;
//		list[3] = new AAA();
//		list[4] = new Scanner(System.in);

//		for(int i=0; i<list.length; i++){
//			System.out.println((int)list[i] + 100);
//		}
	}//main
	
}//class



class AAA { //extends Object
	public int a;
}

class BBB extends AAA {
	public int b;
}

class CCC extends BBB {
	public int c;
}








