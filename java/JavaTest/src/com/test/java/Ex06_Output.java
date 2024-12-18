package com.test.java;

public class Ex06_Output {
	
	public static void main(String[] arms) {
		
		//Ex06_Output.java
		
		/*
		  
		 콘솔 출력
		 - 클래스.필드.메서드(인자);
		 
		 1. System.out.println(값);
		 	-println 메서드
		 	-print line > 값을 행 단위로 출력한다.
		 				> 갑을 출력하고 엔터를 쳐라.
		 
		2. System.out.print(값);
			-print 메서드
			-값을 출력하고 엔터를 안친다.
		 
		3. System.out.prinf(값);
			- print format 메서드
			- 형식을 제공 + 값을 출력
		
		
		
		 
		 */
		
		System.out.println(100);
		System.out.print(200);
		System.out.println(300);
		
		//성적표 출력하기
		String name1 = "홍길동";
		int kor1 = 100;
		int eng1 = 90;
		int math1 = 80;
		
		String name2 = "아무개";
		int kor2 = 95;
		int eng2 = 89;
		int math2 = 78;
		
		System.out.println("=================================");
		System.out.println("          성적표");
		System.out.println("=================================");
		System.out.println("[이름]\t[국어]\t[영어]\t[수학]\t");
		System.out.println("---------------------------------");
		
		System.out.print(name1 + "\t");
		System.out.print("\t");
		System.out.print(kor1 + "\t");
		System.out.print(eng1 + "\t");
		//System.out.print(math1 + "\r\n");
		System.out.print(math1);

		//개행
		//System.out.print("\r\n");
		System.out.println();
		//System.out.print();
		
		System.out.println(name2 + "\t" + kor2 + "\t" + eng2 + "\t" + math2 );
		
		
		//요구사항] "안녕하세요. ?님" 출력
		
		String name = "홍길동";
			
		System.out.println("안녕하세요. " + name + "님.");
		System.out.printf("안녕하세요. %s님. \n\n", name); //%s name		
		
		//요구사항] "안녕하세요. 홍길동님. 반갑습니다. 홍길동님. 안녕히가세요. 홍길동님."
		
		System.out.println("안녕하세요. " + name + "님. 반갑습니다." + name + "님. 안녕히가세요." + name + "님.");
		System.out.printf("안녕하세요. %s님. 반갑습니다. %s님. 안녕히가세요. %s님. \n\n", name, name, name);
		
		//printf()의 형식 문자
		//1. %s > String
		//2. %d > Decimal > byte, short, int, long
		//3. %f > Float > float, double
		//4. %c > Char
		//5. %b > Boolean
		
		System.out.printf("문자열: %s\n", "문자열");
		System.out.printf("정수: %d\n", 100);
		System.out.printf("실수: %f\n", 3.14);
		System.out.printf("문자: %c\n", 'A');
		System.out.printf("논리: %b\n", true);
		System.out.println();
		
		System.out.printf("문자열: %s\n", 100);
		System.out.printf("문자열: %s\n", 3.14);
		System.out.printf("문자열: %s\n", 'A');
		System.out.printf("문자열: %s\n", false);
		
		//System.out.printf("정수: %d\n", 3.14);
		//System.out.printf("정수: %d\n", "홍길동");
		//System.out.printf("정수: %d\n", 'A');
		//System.out.printf("정수: %d\n", true);
		
		//System.out.printf("실수: %f\n", 3);
		
		//문자 코드
		//- A(65), B(66) ~ Z(90)
		//- a(97) ~ z(122)
		//- 0(48) ~ 9(57) 숫자지만 문자로 인식
		//- 가(44032) ~ 힣(55203) > 11,172 궁금하면 비하인드스토리 보셈
		System.out.printf("문자: %c\n", 65); //숫자가 가능한 이유는 문자코드로 인식했기 때문, 외우기
		System.out.printf("문자: %c\n", 66); 
		System.out.printf("문자: %c\n", 90); 
		System.out.printf("문자: %c\n", 97); 
		System.out.printf("문자: %c\n", 122); 
		System.out.printf("문자: %c\n", 48); 
		System.out.printf("문자: %c\n", 57); 
		System.out.println((int)'가'); 
		System.out.println((int)'힣');
		
		//논리형은 할 필요없음, 왠만하면 규칙에 맞춰서 사용하길 권장
		
		//형식 문자의 확장 기능
		//1. %숫자d, %숫자s, %숫자f, %숫자c, %숫자d
		//- 정수
		
		int num = 1234567;
		System.out.printf("[%d]\n", num);
		System.out.printf("%d\n", num);
		
		// [ ] { } ( ) < >
		// ~!@엣#$%^케럿&*_+`-=\|;:'".,?/ 
		//^(xor) \(버티컬 바, 파이프) 특수문자 영어 명칭 알아두기
		
		//-출력할 너비를 지정
		//-양수(우측 정렬), 음수(좌측정렬)
		
		System.out.printf("[%5d]\n", num);
		System.out.printf("[%-5d]\n", num); //너비기능, 하지만 숫자가 초과하며 무의미
		System.out.println();
		
		//2. %.숫자f
		//-소수점 이하 자리수 결정
		double num2 = 3.14;
		
				
		System.out.println(num2);
		System.out.printf("%f\n", num2);
		System.out.printf("%.2f\n", num2);
		System.out.printf("%.1f\n", num2);
		System.out.printf("%.0f\n", num2);   //출력범위를 지정할 수 있음
		
		System.out.printf("%.3f\n", 3.4567);  //자동반올림, 확인 후 작업권장(***)
		
		
		//3.%,d, $,f
		//- 자릿수 표기(천단위 표기 -3자리)
		//- 1,000,000
		int price = 1234567;
		System.out.printf("금액: %,d원\n", price);
		
		//천단위 + 소수이하(2자리) + 출력너비(20자리, 우측정렬)
		double num3 = 1234567.89012345;
		
		System.out.printf("[%,20.2f]\n", num3); //.도 포함되어 출력됨
		
		
		
		
		//메뉴판 출력
		System.out.println("=================================");
		System.out.println("       음료가격(단위:원)");
		System.out.println("=================================");
		System.out.printf("콜라:\t\t%,6d원\n", 2500);
		System.out.printf("스무디:\t\t%,6d원\n", 3500);
		System.out.printf("사이다:\t\t%,6d원\n", 500);
		System.out.printf("아메리카노:\t%,6d원\n", 15000);    //단위 중요!
		
		
		//마무리
		
	}
	
}
	

