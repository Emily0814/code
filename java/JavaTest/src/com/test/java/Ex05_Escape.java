package com.test.java;

public class Ex05_Escape {
	
	public static void main(String[] args){
		
		//Ex05_Escape.java
		
		//특수 문자 > Escape Sequence
		//-컴파일러가 번역할 때 > 소스상의 문자를 그대로 화면 출력하지 않고 미리 약속된 표현으로 바꿔서 출력하는 요소
		
		//-\n, -\r, -\t, -\', -\", -\b, \\ 
		
		//1. \n
		//- new line, line feed
		//- 개행 문자(엔터)
		
		//요구사항] "안녕하세요. 홍길동님." 출력해주세요.
		//요구사항] 3번 출력
		
		//상수를 바로 사용하지 말것!
		System.out.println("안녕하세요. 홍길동님.");
		System.out.println("안녕하세요. 홍길동님.");
		System.out.println("안녕하세요. 홍길돈님.");
		
		String msg = "안녕하세요. 홍길돈님.";
		System.out.println(msg);
		System.out.println(msg);
		System.out.println(msg);
		
		
		//요구사항] "안녕하세요." "홍길동님." 각각 다른 라인으로 출력해주세요.
		//** 문자열 리터럴내에는 개행문자를 직접 작성할 수 없다.
		msg = "안녕하세요. \n홍길돈님."; // \n을 사용하면 줄바꾸기됨
		System.out.println(msg);
		
		//2. \r
		//- carriage return *타자기
		//- 캐럿(carret)의 위치를 현재 라인의 맨 앞으로 이동, 커서를 캐럿이라고 함 , home키
		
		msg = "안녕하세요. \r홍길동님."; //insert 처럼 작용되서 홍이라고 치면 안이 덮어져 삭제됨
		System.out.println("return: " + msg);
		
		//운영체제의 엔터
		//1. 윈도우: \r\n
		//2. 맥OS: \r
		//3. 리눅스: \n
		
		System.out.println("하나\r\n둘\r\n셋");		 
		System.out.println("하나\n둘\n셋");
		
		//3. \t
		//- 탭 문자, tab
		//- 탭이 뭐예요?
		msg ="하나	둘	셋";
		System.out.println(msg);
		
		msg ="하나\t둘\t셋";
		System.out.println(msg); //<-가독성때문에 이렇게 표현함
		
		
		//4. \b
		//- backspace
		msg = "홍길동\b입니다.";
		System.out.println(msg); //홍길입니다. 라고 결과가 나옴 그러나, 이클립스는 지원하지 않음
		
		//5. \",\', \\
		//- 이미 역할이 있는 문자들을 역할을 못하게 만든다.
		
		//요구사항] 출력 > 홍길동 : "안녕하세요."
		//msg = "홍길동: " "안녕하세요.""; //"" 때문에 생긴 오류, \를 붙여주면 해결됨
		msg = "홍길동: \"안녕하세요.\""; 
		System.out.println(msg);
		
		//요구사항] 수업 폴더가 어디냐?
		//- C:\class\code\java
		//String path = "C:\class\code\java"; //Invalid escape sequence (valid ones are  \b  \t  \n  \f  \r  \"  \'  \\ )
		String path = "C:\\class\\code\\java"; // \\를 적어주면 해결됨
		System.out.println(path);
		
		//마무리
		
		
		
	}
	
}
