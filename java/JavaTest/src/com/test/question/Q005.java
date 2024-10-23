package com.test.question;

import java.util.Scanner;

public class Q005 {
	
	public static void main(String[] args) {
		
		//Q007.java 자전거가 있다. 자전거의 바퀴는 지름(직경)이 26인치이다.
		//사용자가 페달을 밟은 횟수를 입력하면 자전거가 총 몇 m를 달렸는지 출력하시오.
		//조건]	- 기어비 1:1 → 페달 1회전 == 자전거 바퀴 1회전
		//		- 모든 출력 숫자는 천단위 표기하시오.
		
		// 1. 스캐너를 생성한다.
		Scanner scan = new Scanner(System.in);
		
		// 2. 사용할 변수를 선언한다.
		double d;
		double h;

		// 3. 라벨을 출력한다.
		System.out.print("사용자가 페달을 밟은 횟수: ");
		
		// 4. 숫자를 입력받는다.
		d = scan.nextDouble();
		
		// 5. 연산을 한다.
		h = d * 26 * 0.0254 * 3.14;
		
		// 6. 결과를 출력한다.
		System.out.printf("사용자가 총 %.0f회 페달을 밟아 자전거가 총 %,fm를 달렸습니다.",d,h);
		
		
	}
}
