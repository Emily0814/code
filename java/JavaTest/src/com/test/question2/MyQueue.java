package com.test.question2;

public class MyQueue {
	
	private String[] list;
	private int index; //현재 추가될 요소의 위치 & size
	
	public MyQueue() {
		this.list = new String[4];
		this.index = 0;
	}
	
	public MyQueue(int capacity) {
		this.list = new String[capacity];
		this.index = 0;
	}
	
	@Override
	public String toString() {
		
		String temp = "";
		
		temp += "\r\n";
		temp += "length: " + this.list.length + "\r\n";
		temp += "index: " + this.index + "\r\n";
		temp += "[\r\n";
		for (int i=0; i<this.list.length; i++ ) {
			temp += " " + i + ":" + this.list[i] + "\r\n";
		}
		temp +="]\r\n";
		
		return temp;
	}

	public void add(String value) {
		
//		if(공간이 모자른가?) {
//			두배로 늘려라();
//		}
		
		if(checkLength()) {
			doubleList();
		}
		
		
		this.list[this.index] = value;
		this.index++;
	}

	private void doubleList() {
		//컬렉션의 가장 큰 단점은 이것이다. 비용이 제일 많이 듦.
		String[] temp = new String[this.list.length * 2 ];
		
		for (int i=0; i<this.list.length; i++) {
			temp[i] = this.list[i];
		}
		
		this.list = temp;
	}

	private boolean checkLength() {
		
		return this.index == this.list.length;
	}

	public int size() {
		
		return this.index; //지금까지 int를 몇 개 넣었니?
	}

	public String poll() {
		
		if ( this.index == 0 ) {
			return null;
		}
		
		String temp = this.list[0];
		
		for( int i=0; i<this.list.length-1; i++ ) {
			this.list[i] = this.list[i+1];
		}
		
		this.index--;
		
		return null;
	}

	public String peek() {
		
		if ( this.index == 0 ) {
			return null;
		}
		
		return this.list[0];	//무조건 0번째 방을 가져오며, 요소가 삭제되지 않고 위치 그대로 유지
	}

	public void clear() {
		
//		for (int i=0; i<this.list.length; i++) {
//			this.list[i] = null;
//		}
//		
//		this.index = 0;   	=> 방을 각 각 들어가 청소를 해야하기 때문에 비용이 많이 듦
		
//		this.list = new String[4];	//덮어쓰기
//		this.index = 0;	 	=> 위에 식보다는 비용이 적음
		
		this.index = 0;		//효율이 가장 좋음, 배열을 버리지 않고 두는 것이 경험상 더 효율이 좋다고 함
		
	}

	public void trimToSize() {
		
		String[] temp = new String[this.index];
		
		for(int i=0; i<temp.length; i++ ) {
			temp[i] = this.list[i];
		}
		
		this.list = temp;
		
	}
	
	
	
	
}
