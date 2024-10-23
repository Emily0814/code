package com.test.question3;

import java.io.BufferedReader;
import java.io.FileReader;
import java.util.Scanner;

public class Q124_order {

	public static void main(String[] args) {

		// 이름을 입력받아 회원 주문 정보를 검색 후 출력하시오.
		


		try {
			Scanner scan = new Scanner(System.in);
			BufferedReader mreader = new BufferedReader(new FileReader("C:\\class\\code\\java\\file2\\파일_입출력_문제\\검색_회원.dat"));
			BufferedReader oreader = new BufferedReader(new FileReader("C:\\class\\code\\java\\file2\\파일_입출력_문제\\검색_주문.dat"));
		
			System.out.print("이름: ");
			String name = scan.nextLine();

			String line = null;
			String num = "";
			String address = "";
			
			while ((line = mreader.readLine()) != null) {

				String[] temp = line.split(",");

				if (temp[1].equals(name)) {
					num = temp[0];
					address = temp[2];
					break;
				} 
				
			}
			
			if (!num.equals("")) {
				
				System.out.println("=====구매내역=====");
				System.out.println("[번호]\t[이름]\t[상품명]\t[개수]\t[배송지]");
			
				while ((line = oreader.readLine()) != null) {
					
					String[] temp = line.split(",");
					
					if(temp[3].equals(num)) {
						
						System.out.printf("%s\t%s\t%s\t\t%s\t%s\r\n"
								, temp[0]
								, name
								, temp[1]
								, temp[2]
								, address);
					}
					
				}
			
			}
			
			
			
			mreader.close();
			oreader.close();

		} catch (Exception e) {
			System.out.println("Q122_grades.main");
			e.printStackTrace();

		}

	}// main

}// class
