package com.test.question2;

public class MyArrayList {
	
	private String[] list;
	private int index;
	
	public MyArrayList() {
		this.list = new String[4];
		this.index = 0;
	}
	
	public MyArrayList(int capacity) {
		this.list = new String[capacity];
		this.index = 0;
	}

	public void add(String s) {
//		
//		if (checkLength()) {
//			doubleList();
//		}
		
		this.list[this.index] = s;
		this.index++;
		
	}
}
