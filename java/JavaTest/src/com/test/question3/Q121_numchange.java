package com.test.question3;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;

public class Q121_numchange {
	
	public static void main(String[] args) {
		
		//숫자를 한글로 바꾼 뒤 파일을 다른 이름으로 저장하시오.
		
		try {
			
			BufferedReader reader = new BufferedReader(new FileReader("C:\\class\\code\\java\\file2\\파일 입출력 문제\\숫자.dat"));
			BufferedWriter writer = new BufferedWriter(new FileWriter("C:\\class\\code\\java\\file2\\파일 입출력 문제\\숫자_변환.dat"));
																									//저장할 파일명: 숫자_변환.dat
			String line = null;
			
			while( (line = reader.readLine()) != null ) {	//0 → 영, 1 → 일 ... 9 → 구 
				line = line.replace("0", "영")
							.replace("1", "일")
							.replace("2", "이")
							.replace("3", "삼")
							.replace("4", "사")
							.replace("5", "오")
							.replace("6", "육")
							.replace("7", "칠")
							.replace("8", "팔")
							.replace("9", "구");
				
				writer.write(line);
			}
			
			reader.close();
			writer.close();
			
			System.out.println("변환 후 다른 이름으로 저장하였습니다.");	//출력] 변환 후 다른 이름으로 저장하였습니다.
			
		} catch (Exception e) {
			System.out.println("Q121.main");
			e.printStackTrace();

		}
		
		
		
	}
	
}
