package com.test.question2;

public class Q105 {
	
	public static void main(String[] args) {
		
		//Q.105.java
		//배열 생성
		MyQueue queue = new MyQueue();

		System.out.println(queue);
		
		//추가
		queue.add("빨강");
		queue.add("노랑");
		queue.add("파랑");
		queue.add("주황");
		queue.add("검정");
		System.out.println(queue);

		//읽기(+삭제) - 무조건 0번쨰 방 읽기, 나머지를 왼쪽으로 shift
		System.out.println(queue.poll());
		//System.out.println(queue.poll());
		//System.out.println(queue.poll());
		
		System.out.println(queue);
		//개수
		System.out.println(queue.size());

		//확인
		System.out.println(queue.peek());
		System.out.println(queue.peek());
		System.out.println(queue.size());
		
		System.out.println();
		//초기화
		queue.clear();
		System.out.println(queue.size());
		System.out.println();
		System.out.println(queue.peek());	//데이터가 없다고 했는데 peek했을 때 값이 나옴 -> poll and peek method수정
		
		System.out.println(queue);
		
		queue.add("빨강");
		queue.add("노랑");
		queue.add("파랑");
		System.out.println(queue);
		
//		System.out.println("trimpToSize");	//좋은 메서드같으나, 굳이 쓰지 않음? 
		queue.trimToSize();
		
		System.out.println(queue);
		
		MyQueue queue2 = new MyQueue();
		
		//4 > 8 > 16 > 32 > 64 > 128
		for (int i=0; i<10; i++) {
			queue2.add("" + i);
		}
		
		System.out.println(queue2.size());
		
		System.out.println(queue2);
		
	}//main
	
}//class
