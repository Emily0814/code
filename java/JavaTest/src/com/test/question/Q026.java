package com.test.question;

import java.util.Scanner;

public class Q026 {
	
	public static void main(String[] args) {
		
		//Q026.java 학생의 국어 점수를 입력받아 성적을 출력하시오.
		//조건] 90 ~ 100: A
		//		80 ~  89: B
		//		70 ~  79: C
		//		60 ~  69: D
		//		 0 ~   59: F
		//		유효성 검사를 하시오.(점수: 0 ~ 100점 이내)
		
		//입력] 점수: 85 
		
		//출력] 입력한 85점은 성적 B입니다.
		
		int score = 0;
		
		Scanner scan = new Scanner(System.in);
		
		System.out.print("점수: ");
		score = scan.nextInt();
		
		if (score >=0 && score <= 100) {
			
			int kor = score;
			
			if(score >=90) {
				System.out.printf("입력한 %d점은 성적 A입니다.",kor);
			} else if(score >=80){
				System.out.printf("입력한 %d점은 성적 B입니다.",kor);
			} else if(score >=70){
				System.out.printf("입력한 %d점은 성적 C입니다.",kor);
			} else if(score >=60){
				System.out.printf("입력한 %d점은 성적 D입니다.",kor);
			} else {
				System.out.printf("입력한 %d점은 성적 F입니다.",kor);
			}
			
		}//큰 if문
		
		
	}
}
