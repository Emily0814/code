package com.test.java;

public class Ex66_String {
	
	public static void main(String[] args) {
		
		//Ex66_String.java
		//- "문자열은 불변(Immutable)이다."
		
		
		//m1();
		//m2();
		//m3();
		m4();
		
		
	}//main

	private static void m4() {
		
		//문자열
		//1. String 클래스
		//2. StringBuilder 클래스
		
		String s1 = "홍길동";	//혜택
		String s2 = new String("홍길동");	//FM 방식
		
		//조작 > 비용X
		StringBuilder s3 = new StringBuilder("홍길동");
		System.out.println(s3);
		System.out.println(s3.length());
		System.out.println(s3.indexOf("홍"));
		
		long begin = 0, end = 0;
		
		begin = System.currentTimeMillis();

		String txt1 = "홍길동";
		
		for(int i=0; i<500000; i++) {
			txt1 += ".";
		}
		
		end = System.currentTimeMillis();
		System.out.printf("길이: %,d자\n시간: %,dms\n"
							, txt1.length()
							, end-begin);

		
		
		begin = System.currentTimeMillis();
		
		StringBuilder txt2 = new StringBuilder("홍길동");
		
		for (int i=0; i<500000; i++) {
				txt2.append("."); //txt1 = ".";
		}
		
		end = System.currentTimeMillis();
		System.out.printf("길이: %,d자\n시간: %,dms\n"
				, txt2.length()
				, end-begin);
		
		
		
	}

	private static void m3() {
		
		//문자열의 잦은 조작 > 금지!!
		String txt = "홍길동";
		
		for(int i=0; i<10000; i++) {
			txt += ".";			//^한바퀴씩 돌때마다 garbage가 생김 -> 낭비가 심함
		}
		
		System.out.println(txt);
		
		
		//커다란 문자열의 수정 > 금지!!
		txt = "홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동홍길동";	
		
		txt += ".";
		
		
	}

	private static void m2() {	//^값형과 참조형의 차이는?		
		
		//자료형 > int[] 
		int[] nums1; //자료형만으로 크기를 알 수 없음
		int[] nums2 = new int[10];
		
		//자료형 > String
		String txt1 = "홍길동";		
		String txt2 = "홍길동";
		
		txt2 = txt2 + "님"; 	//사이드이펙트(부작용)를 못 주게끔 하려고 별도로 새로운 문자열 생성
		
		System.out.println(txt1.hashCode());
		System.out.println(txt2.hashCode());	//txt1과 txt2는 동일한 객체
		
		
		
		
	}

	private static void m1() {
		
		String name1 = "홍길동";
		String name2 = "홍길동";
		String name3 = "홍";
		name3 = name3 + "길동";
		
		System.out.println(name1);
		System.out.println(name2);
		System.out.println(name3);

		System.out.println(name1 == name2);
		System.out.println(name1 == name3);
		
		System.out.println(name1.equals(name2));	
		System.out.println(name1.equals(name3));
		
		
		//- "문자열은 불변(Immutable)이다."		^문자열의 수정은 수정이 아닌 새로운 문자열을 생성하는 것.
		String txt = "홍길동";
		txt = txt + "님";	//수정 작업이 불가능하다.(X)
		System.out.println(txt);
		
		
	}
	
}//class




class Item {
	
	private int num;
	private String type;
	
	
//	@Override
//	public String toString() {
//		return String.format("Item [num=%s, type=%s]", num, type);
//	}
	
	@Override //^코드 관리에 있어서 이 스타일을 제일 추천함
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Item [num=")
				.append(num)
				.append(", type=")
				.append(type)
				.append("]");
		return builder.toString();
	}
	
//	@Override
//	public String toString() {
//		StringBuilder builder = new StringBuilder();
//		builder.append("Item [num=");
//		builder.append(num);
//		builder.append(", type=");
//		builder.append(type);
//		builder.append("]");
//		return builder.toString();
//	}
	
//	@Override
//	public String toString() {
//		return "Item [num=" + num + ", type=" + type + "]";
//	}
	
	
	
	
	
	
}


























