package com.test.question3;

import java.io.BufferedReader;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.Scanner;

public class Q123_memberSearch {
	
	public static void main(String[] args) {
		
		//이름을 입력받아 회원 정보를 검색 후 출력하시오.
		Scanner scan = new Scanner(System.in);
		
		System.out.print("이름: ");
		String name = scan.nextLine();
		
		try {
			
			
			String path = "C:\\class\\code\\java\\file2\\파일 입출력 문제\\단일검색.dat\\";
			BufferedReader reader = new BufferedReader(new FileReader(path));
			
			String line = null;
			
			while( (line = reader.readLine()) != null) {
				
				String[] temp = line.split(",");
				
				int num = Integer.parseInt(temp[0]);
				String member = temp[1];
				String address = temp[2];
				String phone = temp[3];
				
				if( member.equals(name)) {
					System.out.println("[" + member + "]");
					System.out.println("번호: " + num );
					System.out.println("주소: " + address);
					System.out.println("전화: " + phone);
					break;
				} else {
					//System.out.println("not found");
				}
				
			}
			System.out.println("not found");
			
			reader.close();
			
			} catch (Exception e) {
				System.out.println("Q122_grades.main");
				e.printStackTrace();

			}
		
		
	}//main
	
}//class


