package com.test.question3;

import java.io.BufferedReader;
import java.io.FileReader;
import java.util.ArrayList;

public class Q126_Attendance {
	
	public static void main(String[] args) {
		
		//직원들의 지각과 조퇴를 카운트하시오.
		try {
			
			BufferedReader reader = new BufferedReader(new FileReader("C:\\class\\code\\java\\file2\\파일_입출력_문제\\출결.dat"));
			
			ArrayList<String> attendance = new ArrayList<String>();
			
			String line = null;
			
			while ((line = reader.readLine()) != null) {

				String[] temp = line.split(",");

	
				
			}
			
			
		} catch (Exception e) {
			System.out.println("Q126_Attendance.main");
			e.printStackTrace();

		}
		
		
	}//main
	
}//class
