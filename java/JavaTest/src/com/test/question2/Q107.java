package com.test.question2;

public class Q107 {

	public static void main(String[] args) {
		
//		//Q107.java
//		//배열 생성
//		MyHashMap map = new MyHashMap();
//
//		//추가
//		map.put("국어", "합격");
//		map.put("영어", "불합격");
//		map.put("수학", "보류");
//
//		//읽기
//		System.out.println(map.get("국어"));
//		System.out.println(map.get("영어"));
//		System.out.println(map.get("수학"));
//
//		//개수
//		System.out.println(map.size());
//
//		//수정
//		map.put("영어", "합격");
//		System.out.println(map.get("영어"));
//
//		//삭제
//		map.remove("영어");
//		System.out.println(map.get("영어"));
//
//		//검색(key)
//		if (map.containsKey("국어")) {
//		      System.out.println("국어 점수 있음");
//		} else {
//		      System.out.println("국어 점수 없음");
//		}
//
//		//검색(value)
//		if (map.containsValue("합격")) {
//		      System.out.println("합격 과목 있음");
//		} else {
//		      System.out.println("합격 과목 없음");
//		}
//
//		//초기화
//		map.clear();
//		System.out.println(map.size());
//		출력..
//		합격 //System.out.println(map.get("국어"));
//		불합격 //System.out.println(map.get("영어"));
//		보류 //System.out.println(map.get("수학"));
//
//		3 //System.out.println(map.size());
//
//		//수정
//		합격 //System.out.println(map.get("영어"));
//
//		//삭제
//		null //System.out.println(map.get("영어"));
//
//		//검색(key)
//		국어 점수 있음 
//
//		//검색(value)
//		합격 과목 있음 
//
//		0 //초기화
		
		
		
	}//main
	
}//java



class MyHashMap {
	
	private String[] keys;
	private String[] values;
	private int index;
	
	public MyHashMap() {
		this.keys = new String[4];
		this.values = new String[4];
		this.index = 0;
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return super.toString();
	}
	
}


















