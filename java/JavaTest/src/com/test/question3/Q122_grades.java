package com.test.question3;

import java.io.BufferedReader;
import java.io.FileReader;
import java.util.ArrayList;

public class Q122_grades {
	
	public static void main(String[] args) {
		
		
		//성적을 확인 후 합격자/불합격자 명단을 출력하시오.
		try {	//=> 파일에서 데이터를 읽어와서 조건에 따라 합격자와 불합격자를 구분하여 출력하는 기본적인 파일 입출력되는 프로그램
		
		
		String path = "C:\\class\\code\\java\\file2\\파일 입출력 문제\\성적.dat\\";		//1.파일 경로 설정
		BufferedReader reader = new BufferedReader(new FileReader(path));		//2.파일 읽기
		
		//ArrayList을 2개 생성,String 타입의 요소를 저장
		ArrayList<String> pass = new ArrayList<String>();
		ArrayList<String> fail = new ArrayList<String>();
		
		String line = null;
		//사용자가 입력한 한 줄의 문자열
		while( (line = reader.readLine()) != null ) {	//3.데이터 처리
			
			String[] temp = line.split(",");	//각 줄을 읽어 (,)로 구분된 데이터를 분리
			
			int kor = Integer.parseInt(temp[1]);
			int eng = Integer.parseInt(temp[2]);
			int math = Integer.parseInt(temp[3]);
			
			if((kor + eng + math)/3>=60 && (kor>=40 && eng>=40 && math>=40)) {	//평균이 60 이상이고 국어, 영어, 수학 점수가 각각 40 이상이면
				pass.add(temp[0]);		//pass 리스트에 이름을 추가
			} else {
				fail.add(temp[0]);		//그렇지 않으면 fail 리스트에 추가
			}
			
		}
		
		System.out.println("[합격자]");		//4.결과 출력
		//저장된 모든 요소를 반복하여 출력하는 코드
		for(String name : pass) {
			System.out.println(name);
		}
		
		System.out.println("[불합격자]");
		
		for(String name : fail) {
			System.out.println(name);
		}
		
		reader.close();
		
		} catch (Exception e) {		//5.예외 처리 - 예외가 발생할 경우 해당 예외를 출력하고 프로그램을 종료
			System.out.println("Q122_grades.main");
			e.printStackTrace();
			
		}	
		
		
		
	}//main
	
}//class

////출력 담당 클래스
//public class ScoreView {
//	
//	
//	public void subTitle(String title) {
//		System.out.println();
//		System.out.println("🤗" + title + "🤗");
//	}
//
//	public void pause() {
//		
//		System.out.println();
//		System.out.print("계속하시려면 엔터를 치세요.");
//		
//		Scanner scan = new Scanner(System.in);
//		scan.nextLine(); //Block
//		
//		System.out.println();
//		
//	}
//	
//	
//}