package com.test.java.obj;

public class Book {

	public String title; // 외부 공개

	// private int price; //외부 비공개 왜?
	// public int price;
	private int price; // 대다수의 변수는 public보다 private로 사용, 왜? 에러 가능성 있음
	
	//bbb() > getPrice() > Getter
	//- get키워드 + 멤버 변수명 > 캐멀
	public int getPrice() {
		
		return this.price;
		
		//this > 객체 접근 연산자
		//this.title = "";//O
		//title = "";	  //X
		
		
	}
	
	
	public void aaa(int a) {
		
		//개입 > 통제 가능
		if (a >= 0 && a <= 100000) {
			price = a;
		}
		
	}


	public String getAuthor() {
		return author;
	}


	public void setAuthor(String author) {
		this.author = author;
	}


	public int getDiscount() {
		return discount;
	}


	public void setDiscount(int discount) {
		this.discount = discount;
	}


	public int getPages() {
		return pages;
	}


	public void setPages(int pages) {
		this.pages = pages;
	}


	private String publisher;
	private String author;
	private int discount;
	private int pages;
	
	
	
	
	
	//aaa() > setPrice() > Setter
	//- set키워드 + 멤버변수명 > 케멀 표기법
	public void setPrice(int price) {
		
		this.price = price; //영역이 좁은 무언가가 영역이 넓은 변수명이 같은 무언가를 이김
		
		//this > 객체 접근 연산자 (상대적 표현, b1이라고 하면 절대적 표현이기 때문에 불가능)
		//this.title = "";//O
		//title = "";		//X > this.이 생략이 된 것
		
	}
	
	public int bbb() {
		return price;
	}
	
	public String getPublisher() {
		return publisher;
	}


	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	
	
}
