package com.test.question;

import java.time.LocalDate;
import java.util.Calendar;
import java.util.Scanner;

public class Q001 {
	
	public static void main(String[] args) {
		
		//Q001 태어난 년도를 입력받아 나이를 출력하시오.
		//1. 스캐너를 생성한다.
			Scanner scan = new Scanner(System.in);
			
		//2. 사용할 변수를 선언한다.
			LocalDate today = LocalDate.now();
			int currentYear = today.getYear();
		
		//3. 라벨을 출력한다.
			System.out.print("태어난 년도: ");
		
		//4. 태어난 년도를 입력받는다.
			int input = scan.nextInt();
			
		//5. 나이를 계산한다.
			int age = currentYear - input;
		
		//6. 나이를 출력한다.
			System.out.printf("나이: %d세", age);
			
		//7. 유효성 검사?
			
		
		
	}
}
