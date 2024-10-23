package com.test.question2;

import java.util.Stack;

public class Q106 {
	
public static void main(String[] args) {
		
		//배열 생성
		MyStack stack = new MyStack();
		
		//추가
		stack.push("빨강");
		stack.push("노랑");
		stack.push("파랑");
		stack.push("주황");
		stack.push("검정");

		//읽기
		System.out.println(stack.pop());
		System.out.println(stack.pop());
		System.out.println(stack.pop());

		//개수
		System.out.println(stack.size());

		//확인
		System.out.println(stack.peek());
		System.out.println(stack.peek());
		System.out.println(stack.size());

		//크기 조절
		stack.trimToSize();

		//초기화
		stack.clear();
		System.out.println(stack.size());
	}
	
}

class MyStack{
	
	private String[] list;
	private int index;
	
	public MyStack() {
		this.list = new String[4];	// 크기가 4인 문자열 배열을 초기화합니다.
		this.index = 0;				// 인덱스를 0으로 초기화합니다.
	}
	
	public void push(String value) {
		
		doubling();		// 스택이 꽉 차면 배열 크기를 두 배로 늘리는 메서드 호출
		
		this.list[this.index] = value;		// 현재 인덱스 위치에 값을 추가합니다.
		this.index++;						// 인덱스를 다음 위치로 이동합니다.
		
	}
	
	private void doubling() {
		
		if(this.list.length <= this.index) {	// 배열이 현재 인덱스보다 작거나 같으면 (즉, 꽉 찼으면)
			
			String[] temp = new String[ this.list.length * 2 ];	// 현재 배열 크기의 두 배 크기의 임시 배열을 생성합니다.
			
			for ( int i=0; i<this.list.length; i++ ) {	
				temp[i] = this.list[i];		 // 기존 배열의 값을 임시 배열로 복사합니다. (깊은 복사)
			}
			this.list = temp;		// 기존 배열을 새로 생성한 두 배 크기의 배열로 교체합니다. (얕은 복사)
		}
		
	}
	
	public String pop() {
		
		String last = this.list[ this.index -1 ];	// 스택의 맨 위에 있는 값을 가져옵니다.
		this.index--;		// 인덱스를 하나 줄입니다 (스택에서 값을 꺼냈으므로).
		return last;		// 가져온 값을 반환합니다.
		
	}
	
	public int size() {
		
		return this.index;	// 현재 스택에 저장된 원소의 개수를 반환합니다 (현재 인덱스 값).
	}

	public String peek() {
		
		return this.list[this.index-1];		// 스택의 맨 위에 있는 원소를 반환합니다.
	}
	
	public void trimToSize() {
		
		String[] temp = new String[this.index];		// 현재 스택의 크기에 맞는 새로운 배열을 생성합니다.
		
		for(int i=0; i<this.index; i++) {		
			
			temp[i] = this.list[i];		  // 기존 스택의 값을 새 배열에 복사합니다.
		}
		
		this.list = temp;		 // 기존 배열을 새로 생성한 배열로 교체합니다.
	}
	
	public void clear() {	
		
		this.index = 0;		// 인덱스를 0으로 설정하여 모든 원소를 제거합니다.
	}
}

	
	

