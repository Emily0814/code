package com.test.java.collection;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.TreeSet;

public class Ex58_TreeSet {
	
	public static void main(String[] args) {
	
		//Ex58_TreeSet.java
		
		/*
		  	
		  	컬렉션 이름
		  	
		  	[물리구조]	[사용법=인터페이스 or 특징(용도)]
		  	Array		List(순서가 있는 목록)
		  	Linked		List
		  	Hash		Set(순서가 없는 집합, 중복값 허용X, 방번호 관련X)
		  	Tree		Set
		  	Hash		Map(방번호X, 방이름O)
		  	Tree		Map
		  	
		  	
		  	TreeSet
		  	- 순서가 없다.
		  	- 중복값을 가지지 않는다.
		  	- 이진 탐색 트리 구조, Binary Search Tree
		 		- 내부 데이터가 정렬이 되어있는 구조로 저장
		
		 */
		
		TreeSet<Integer> set = new TreeSet<Integer>();			//자동정렬
		//HashSet<Integer> set = new HashSet<Integer>();		//중복값 필요없으면서 빠른 실행이 필요시 사용
		
		set.add(6);
		set.add(2);
		set.add(5);
		set.add(8);
		set.add(1);
		set.add(9);
		set.add(3);
		set.add(4);
		set.add(10);
		set.add(7);
		
		System.out.println(set.size());
		System.out.println(set);
		System.out.println();
		
		
		for(int n : set) {
			System.out.println(n);
		}
		
		System.out.println();
		//범위 관련 기능 제공
		System.out.println(set.first());
		System.out.println(set.last());
		
		System.out.println(set.headSet(3));
		System.out.println(set.tailSet(7));
		System.out.println(set.subSet(3, 7));
		
		
		
		System.out.println();
		HashSet<String> names = new HashSet<String>();

		names.add("홍길동");
		names.add("아무개");
		names.add("강아지");
		names.add("고양이");
		names.add("병아리");
		names.add("홍길동");

		System.out.println(names);
		
		
		
		
		
		
		
		
		
		
		
		
		
		//Set > (변환)  < List
		ArrayList<String> list = new ArrayList<String>(names);	//names라는 배열을 list에 깊은 복사한 것
		
		Collections.sort(list); //set을 가지고 정렬을 할 때 이런 식으로 사용가능
		
		System.out.println(list);
		
	}//main
	
}//class








































