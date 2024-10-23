package com.test.java.collection;

import java.util.ArrayList;
import java.util.LinkedList;

public class Ex57_LinkedList {
	
	public static void main(String[] args) {
		
		//Ex57_LinkedList.java
		
		//Collection(I) < List(I) < ArrayList(C), LinkedList(I)
		//Collection(I) < Set(I) < HashSet(C)
		
		//ArrayList vs LinkedList
		//- 메서드 구성 유사 > 사용법이 아주 유사하다.
		//- 내부 구조가 다르다. > 사용 용도가 다르다.
		
		//LinkedList 종류
		//1. LinnkedList
		//2. Double LinkedList
		//3. Double Circular LinkedList > 순환구조 > 자바의 LinkedList
		
		/*
			
			ArrayList(배열) > 먼저 사용! 프로그램 진행 중 어느 부분이 실행이 오래 걸린다면! 그 때 LinkedList 고려!
			- 순차적인 추가/삭제 > 양호(최강)
			- 읽기 > 최강
			- 중간 추가 / 삭제 > 불량(최악) > Shift
			
			LinkedList
			- 순차적인 추가/삭제 > 양호
			- 중간 추가/삭제 > 양호
			
			
			
			[1. 순차적으로 데이터 추가하기, Append]
			ArrayList 작업 시간: 204ms
			LinkedList 작업 시간: 2,173ms
			
			[2. 중간에 데이터 추가하기, Insert]
			ArrayList 작업 시간: 9,233ms
			LinkedList 작업 시간: 0ms
			
			[3. 중간에 데이터 삭제하기, Delete]
			ArrayList 작업 시간: 6,313ms
			LinkedList 작업 시간: 0ms
			
			[4. 순차적으로 데이터 삭제하기, Delete]
			ArrayList 작업 시간: 0ms
			LinkedList 작업 시간: 0ms

		 */
		
		
		
		//m1();
		m2();
		
		
		
		
		
		
		
		
	}//main

	private static void m2() {
		
		//입출력 속도 비교
		ArrayList<Integer> list1 = new ArrayList<Integer>();
		LinkedList<Integer> list2 = new LinkedList<Integer>();
		
		long begin = 0, end = 0;
		
		//1. 순차적으로 데이터 추가하기, Append
		System.out.println("[1. 순차적으로 데이터 추가하기, Append]");
		
		begin = System.currentTimeMillis();
		
		for (int i=0; i<10000000; i++) {
			list1.add(i);
		}
		
		end = System.currentTimeMillis();
	
		System.out.printf("ArrayList 작업 시간: %,dms\n", end - begin);

		
		
		begin = System.currentTimeMillis();
		
		for (int i=0; i<10000000; i++) {
			list2.add(i);
		}
		
		end = System.currentTimeMillis();
		
		System.out.printf("LinkedList 작업 시간: %,dms\n", end - begin);
		
		
		
		
		//2. 중간에 데이터 추가하기, Insert
		System.out.println("[2. 중간에 데이터 추가하기, Insert]");	//shift 자체가 부하가 많이 가고 손이 많이 가는 작업이라 오래 걸림 > 안좋은작업
		
		begin = System.currentTimeMillis();

		for (int i = 0; i < 1000; i++) {
			list1.add(0, i);
		}

		end = System.currentTimeMillis();

		System.out.printf("ArrayList 작업 시간: %,dms\n", end - begin);		
		
		begin = System.currentTimeMillis();

		for (int i = 0; i < 1000; i++) {
			list2.add(0, i);
		}								//LinkedList는 작업 시간이 빠름

		end = System.currentTimeMillis();

		System.out.printf("LinkedList 작업 시간: %,dms\n", end - begin);
		
		
		//3. 중간에 데이터 삭제하기, Delete
		System.out.println("[3. 중간에 데이터 삭제하기, Delete]");	
		
		begin = System.currentTimeMillis();
		
		for (int i = 0; i < 1000; i++) {
			list1.remove(0);
		}
		
		end = System.currentTimeMillis();
		
		System.out.printf("ArrayList 작업 시간: %,dms\n", end - begin);		
		
		begin = System.currentTimeMillis();
		
		for (int i = 0; i < 1000; i++) {
			list2.remove(0);
		}								//LinkedList는 작업 시간이 빠름
		
		end = System.currentTimeMillis();
		
		System.out.printf("LinkedList 작업 시간: %,dms\n", end - begin);
		
		
		
		//4. 순차적으로 데이터 삭제하기, Delete
		System.out.println("[4. 순차적으로 데이터 삭제하기, Delete]");	
		
		begin = System.currentTimeMillis();
		
		for (int i = list1.size()-1; i < 1000; i--) {
			list1.remove(i);
		}
		
		end = System.currentTimeMillis();
		
		System.out.printf("ArrayList 작업 시간: %,dms\n", end - begin);		
		
		begin = System.currentTimeMillis();
		
		for (int i = list2.size()-1; i < 1000; i--) {
			list2.remove(i);
		}								//LinkedList는 작업 시간이 빠름
		
		end = System.currentTimeMillis();
		
		System.out.printf("LinkedList 작업 시간: %,dms\n", end - begin);
		
		
		
		
		
		
	}

	private static void m1() {
		
		//사용법?
		ArrayList<Integer> list1 = new ArrayList<Integer>();
		LinkedList<Integer> list2 = new LinkedList<Integer>();
		
		list1.add(100);
		list1.add(200);
		list1.add(300);	//ArrayList data 추가
		
		list2.add(100);
		list2.add(200);
		list2.add(300); //LinkedList data 추가
		
		System.out.println(list1.size()); //ArrayList 사이즈확인
		System.out.println(list2.size()); //LinkedList 사이즈확인
		
		System.out.println(list1.get(0));
		System.out.println(list2.get(0));	//둘 다 똑같이 data를 방번호로 가져옴
		
		for (int n : list1) {
			System.out.println(n);
		}
		
		for (int n : list2) {
			System.out.println(n);
		}
		
		
	}
	
}//class





























