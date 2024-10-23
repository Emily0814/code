package com.test.java.obj;

import java.util.Arrays;

public class User {
	
	private String name;
	private String id;
	
	//private String nick;
	
	private String[] nick;
	
	public String[] getNick() {
		return nick;
	}
	
	public void setNick(String[] nick) {
		this.nick = nick;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}

	
	
//	public String info() {
//		
//		return String.format("이름(%s), 아이디(%s), 별명(%s)", this.name, this.id, this.nick); //this.을 찍으면 멤버변수라는 가독성 굳, 자동생성 굳		
//	}
	
	public String info() {

		return String.format("이름(%s), 아이디(%s), 별명(%s)", this.name, this.id, Arrays.toString(this.nick));
	}
	
	
}
















