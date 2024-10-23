package com.test.question2;

public class Q097 {
	
	public static void main(String[] args) {
		
		Refrigerator r = new Refrigerator();

		Item item1 = new Item();
		item1.setName("김치");
		item1.setExpiration("2024-07-25");
		r.add(item1);//냉장고에 넣기

		Item item2 = new Item();
		item2.setName("깍두기");
		item2.setExpiration("2024-07-18");
		r.add(item2);//냉장고에 넣기

		Item item3 = new Item();
		item3.setName("멸치볶음");
		item3.setExpiration("2024-07-20");
		r.add(item3);//냉장고에 넣기

		Item item4 = r.get("깍두기");//냉장고에서 꺼내기
		System.out.printf("%s의 유통기한 : %s\n", item4.getName(), item4.getExpiration());

		System.out.printf("냉장고 안의 총 아이템 개수 : %d개\n", r.count());

		r.listItem();
		
	}//main
	
}//class

class Refrigerator {

	private Item[] list = new Item[100];
	private int index = 0;
	
	
	public void add(Item item) {
		
		this.list[index] = item;
		this.index++;
		System.out.printf("'%s'를 냉장고에 넣었습니다.\n", item.getName());
		
	}

	public Item get(String name) {
		
		Item item = null;
		int itemIndex = -1;
		
		for ( int i=0; i<index; i++ ) {
			if (this.list[i].getName().equals(name)) {
				
				item = this.list[i];
				itemIndex = i;
				this.index--;
				break;
				
			}
		}
		
		if ( item != null ) {
			
			for ( int i=itemIndex; i<index; i++ ) {
				this.list[i] = this.list[i+1];
			}
			
		}
		return item;
	}

	public int count() {
		
		return this.index;
	}

	public void listItem() {
		
		System.out.println("[냉장고 아이템 목록]");
		
		for(int i=0; i<index; i++) {
			
			Item item = this.list[i];
			
			System.out.printf("%s(%s)\n", item.getName(), item.getExpiration());
			
		}
	}
}

class Item {
	
	private String name;
	private String expiration;
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getExpiration() {
		return expiration;
	}

	public void setExpiration(String expiration) {
		this.expiration = expiration;
	}
	
	
	
}
