package com.test.java;

import java.sql.Connection;

public class Ex02 {
	
	public static void main(String[] args) {
		//Ex02.java
		/* 
		 	접속 시 발생하는 에러
		 	
		 	
		 	
		*/
		
		
		Connection conn = null;
		
		try {
			
			DBUtil util = new DBUtil();
			
			conn = util.open();
			
			System.out.println(conn.isClosed()); //false
			
			util.close(); //conn.close();
			
		} catch (Exception e) {
			System.out.println("Ex02.main");
			e.printStackTrace();
		}
		
		
		
	}//main
	
}
