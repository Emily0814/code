package com.test.java;

public class Ex03_Variable {
	
	public static void main(String[] args) {
		
		/*
		  Ex03_Variable.java
		  
		  자료형 + 변수
		  
		  변수,Variable 
		  -데이터를 저장하는 공간 
		  -개발자가 명령어를 사용해서 메모리에 할당받은 공간
		  -변할 수 있는 수
		  
		  1.변수 선언하기(생성하기) 
		  -자료형 변수명;
		  
		  2.변수 초기화
		  -변수명 = 값;
		  
		  3.변수 접근(호출)
		  
		  
		 */		
		
		//국어점수
		byte 국어;
		국어 = 90;
		System.out.println(국어);
		
		//영어 점수
		byte eng;
		eng = 80; //초기화
		System.out.println(eng); //syso작성 ctrl + space, tab 누르면 간편함
		
		
		eng = 70; //치환(덮어쓰기)
		System.out.println(eng);
		
		//A >= B
		
		//변수 <> 상수(=리터럴, Literal)
		System.out.println(100);
		
		System.out.println(100);
		
		
		
		//변수명을 만들 때 규칙
		//1.영문자 + 숫자 + '_,$'을 사용한다. 관습적 + 물리적
		//2.숫자로 시작 불가능		
		//3.예약어(키워드) 사용 불가능
		//4.의미있게(**********************)
		
		byte kor;
		byte kor1;
		byte kor_1;
		//byte kor%1;
		
		//byte 1kor;
		byte _1kor;
		
		//byte byte; 예약어는 식별자로 사용 불가능
		
		byte a;
		byte b;
		byte c; //이런 식으로 하면 식별 불가, 의미있게 만들자
		
		
		byte english_score;
		
		english_score=100; 
		
		//
		//byte kor;
		//System.out.println(kor);
		
		//byte Kor;
		//byte kOr;
		//byte KoR;
		//byte KOr;
		//byte KOR;
		//byte koR;
		//byte kOR; //대,소문자 구별하더라도 스펠링같은 문자 생성X
		
		//변수 생성하는 방법
		int n1; //선언
		//다른 코드..
		n1 = 100; //초기화
		
		int n2 = 200; // 선언 + 초기화
		
		int n3;
		int n4;
		
		int n5, n6;
		
		int n7 =100, n8 =200;
		
		int n9, n10 = 100, n11, n12, n13 = 200, n14 = 300;
		
		// Ctrl + Shift + F (정렬)
		
		//지도 좌표(x,y)
		double x1; //우리집 x좌표
		double y1; //우리집 y좌표 <- 가독성
		
		//double x1, y1; //친구집 x좌표, 친구집 y좌표 <- 가독성이 떨어짐
		
		double x3, //마트 x좌표
			   y3; //마트 y좌표
		
		double x4, 
		y4; //Ctrl + Shift + F 들여쓰기 잘하자
		
		
		
		
		//int n1;
		//int n1;
		
		float f1;
		//double f1;
		
//		System.out.println(f1); //자료형이 달라도 이름이 같으면 식별 불가능
		
		
		int num; //선언 > null 상태, 쓰레기 데이터는 없는 것으로 취급
		
		
		//The local variable num may not have been initialized 
		//System.out.println(num);
		
		//식별자(변수명 + 다른 요소의 이름 포함) 명명법(패턴)
		//1.헝가리언 표기법
		//2.파스칼 표기법
		//3.캐멀 표기법
		//4.스네이크 표기법
		//5.케밥 표기법
		
		//1.헝가리언 표기법
		//- 식별자를 만들 때 식별자의 접두어로 자료형을 표시하는 방법
		//- 자바 진영에서는 잘 사용 안함
		//- 닷넷 진영에서는 잘 사용 함
		//사용) 인터페이스명
		int age; 
		int intAge;
		int iAge;
		int iage;
		int i_age;
		
		//2.파스칼 표기법
		//-식별자의 첫문자를 대문자 표기 + 나머지 문자를 소문자 표기
		//-2개 이상의 합성어 > 각 단어의 첫문자를 대문자 표기
		//-사용) 클래스명(Ex03_Variable)
		
		int weight;
		int Weight;
		
		int mathscore;
		int MathScore;
		
		//3.캐멀 표기법
		//-식별자의 첫문자를 소문자 표기 + 나머지 문자를 소문자 표기
		//-2개 이상의 합성어 > 각 단어의 첫문자를 대문자로 표기
		//-사용) 변수명, 메서드명
		
		int KoreanScore; //파스칼 표기법
		int koreanScore; //캐멀 표기법
		
		//4.스네이크 표기법
		//-전부 소문자 표기
		//-2개 이상의 단어 > '_'로 연경
		//사용) 마음대로~ 자바보다는 다른 언어의 주로 사용 
		
		int myheight;
		int my_height;
		
		//5.케밥 표기법
		//-전부 소문자
		//-2개 이상의 단어 > '-'로 연결
		//-자바에서는 불가능한 표기법('-'마이너스 연산자로 생각함)
		//int my-height;
		
		
		//데이터 중 일부는 값을 변화시키면 안되는 값들
		//double pi = 3.14; //파이(원주율)
		
		System.out.println(3.14*10); //원주율 x 10, 가독성 떨어짐
		
		
		
		
		//상수 > 모든 문자를 대문자로 씀
		final double pi = 3.14; //final을 붙이면 수정할 때, 값을 할당할 수 없음
		System.out.println(pi*10); //가독성을 높음
		
		
		//The final local variable pi cannot be assigned. It must be blank and not using a compound assignment
		//pi = 5.5
		System.out.println(pi * 10);
		
		final int HEIGHT = 180;

		
		
	}
	
}
