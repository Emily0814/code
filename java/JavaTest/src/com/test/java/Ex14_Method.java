package com.test.java;

public class Ex14_Method {
	
	public static void main(String[] args) {
		
		//Ex14_Method.java
		
		//public static void hello()
		
		//- hello: 메서드명 > 캐멀 표기법 + 의미있게
		//- (): 인자리스트(Parameters, Arguments), 매개변수
		
		//요구사항] '홍길동'에게 인사를 하는 메서드를 구현하시오.
		//요구사항] '아무개'에게 인사를 하는 메서드를 구현하시오.
		//요구사항] '테스트'에게 인사를 하는 메서드를 구현하시오.
		//요구사항] 우리 강의실의 모든 사람에게 각각 ~ 23명
		//요구사항] 대한민국 모든 국민에게 ~ 4천만개
		
		
		hello();
		hello2();
		hello3();
		
		//The method is not applicable for the arguments ()
		helloEveryone("홍길동");
		helloEveryone("아무개");
		helloEveryone("테스트"); //실인자
		
		//인자값과 매개변수의 자료형이 동일해야 한다.
		//helloEveryone(100);
		
		int age = 20;
		checkAge(age); //집합이라고 판단이 되면 메서드 만들자, 가독성 증가
		
		//checkAge("스무살");
		
		byte age2 = 20;
		checkAge(age2); //암시적 형변환되어 가능함
		
		
		//성적 계산
		//- 매개변수의 순서(***), 순서가 헤갈리므로 다량으로 만들지x
		//- 매개변수의 개수(***), 많아도 적어도 에러이므로 선언된 개수만큼!
		checkScore(100, 90, 80);
		
		//checkScore(age2, age, age2); 특수한 주석설명하면서 만들었음
		
	}//main
	
	public static void hello() {
		
		// String name = "홍길동"
		
		System.out.println("홍길동님 안녕하세요.");
		
	}
	public static void hello2() {
		//hello2 같이 넘버링같은 식은 최악임
		System.out.println("아무개님 안녕하세요.");
		
	}

	public static void hello3() {

		System.out.println("테스트님 안녕하세요.");
		
	}
	
	public static void helloEveryone(String name) { //매개변수, 가인자 
		//매개변수 안에는 선언은 가능하나, 초기화를 못함
		//Duplicate local variable name
		//String name = "테스트";
		
		System.out.println(name+ "님 안녕하세요.");
		
	}
	
	public static void checkAge(int age) {

		String result = age >= 18 ? "통과" : "거절";
		
			
		System.out.printf("입력한 나이 %d세는 %s입니다. \n"
							,age,result);
	}
	
	// '/**'치고 엔터를 치면 특수한 주석을 만들 수 있음, 팀작업할 때 유용
	/**
	 * 성적을 계산합니다.
	 * @param kor 국어
	 * @param eng 영어
	 * @param math 수학
	 */
	public static void checkScore(int kor, int eng, int math) {
		
		int total = kor + eng + math;
		
		//double avg = (double)total / 3;
		double avg = total / 3.0; //위와 같은 표현
		
		String result = avg >= 60 ? "합격" : "불합격";
		
		System.out.printf("평균 점수 %.1f점은 %s입니다.\n"
							, avg, result);
	}
	
}
