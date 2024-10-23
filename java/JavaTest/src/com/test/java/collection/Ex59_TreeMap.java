package com.test.java.collection;

import java.util.Collection;
import java.util.HashMap;
import java.util.Set;
import java.util.TreeMap;
import java.util.Vector;

public class Ex59_TreeMap {
	
	public static void main(String[] args) {
		
		//Ex59_TreeMap.java
		
		//TreeMap
		//- 키 + 값 > Map
		//- 이진 탐색 트리 > 내부 정렬
		
		TreeMap<String,String> map = new TreeMap<String,String>();
		
		map.put("White", "흰색");
		map.put("black", "검정색");
		map.put("red", "빨간색");
		map.put("yellow", "노랑색");
		map.put("blue", "파랑색");
		
		System.out.println(map);
		
		System.out.println(map.get("white"));
		
		System.out.println(map.firstKey());
		System.out.println(map.lastKey());
		
		System.out.println(map.headMap("m"));
		System.out.println(map.tailMap("m"));
		System.out.println(map.subMap("r", "w"));
		
		
		/*
												^공부할 시간이 한정되었다면, *** 집중하자!
			List
			- ArrayList *** 1
			- Stack
			- Queue
			- LinkedList
			- Vector(x) > ArrayList
			
			Set
			- HashSet *** 3
			- TreeSet
			
			Map
			- HashMap *** 2
			- TreeMap
			- Properties > 나중에
			- HashTable(X) > HashMap?
			
				
			
		 */
		
		
		Vector<Integer> v = new Vector<>();
		v.add(100);
		System.out.println(v.get(0));
		
		System.out.println();
		System.out.println();
		HashMap<String,String> map2 = new HashMap<String,String>();
		
		map2.put("White", "흰색");
		map2.put("black", "검정색");
		map2.put("red", "빨간색");
		map2.put("yellow", "노랑색");
		map2.put("blue", "파랑색");
		
		//Map > Loop(X) > O
		
		Set<String> set = map2.keySet();
		System.out.println(set);
		
		for (String key : set) {
			System.out.println(key);
		}
		
		
		Collection<String> values = map2.values();
		System.out.println(values);
		
		for(String value : values) {
			System.out.println(value);
		}
		
		System.out.println();
		System.out.println();
		System.out.println();
		
		for(String key : set) {
			System.out.printf("map[%s] = %s\n", key, map2.get(key));	//HashMap같이 루프를 돌리지 못하는 메서드?를 이런 식으로하면 루프 돌릴 수 있음
		}
		
		
	}//main
	
}//class


























