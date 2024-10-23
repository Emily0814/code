package com.test.question3;

import java.io.BufferedReader;
import java.io.FileReader;
import java.util.Stack;

public class Q125_deskmate {
	
	public static void main(String[] args) {
		
		//모든 괄호가 서로 짝이 맞는지 검사하시오.
		
		try {
			
			BufferedReader reader = new BufferedReader (new FileReader("C:\\class\\code\\java\\file2\\파일_입출력_문제\\괄호.java"));
			
			Stack<Character> stack = new Stack<Character>(); //스택은 객체들을 후입선출(LIFO, Last In First Out) 방식으로 관리하는 자료 구조
			
			String line = null;
			String wholeText = "";
			
			while ((line = reader.readLine()) != null) {
				wholeText += line + "\r\n";
			}
			
			reader.close();
			//문자열 wholeText를 순회
			for (int i=0; i<wholeText.length(); i++) {
				char c = wholeText.charAt(i);
				
				if (c == '(' || c == '{') { //괄호 '('와 '{'를 스택에 push
					stack.push(c);
				}
				
				if (c == ')' || c == '}') { //괄호 ')'와 '}'를 스택에서 pop하는 과정을 반복하는 코드
					stack.pop();
				}	//단순히 스택에 넣고 빼는 과정
			}
			
			if (stack.size() == 0) {
				System.out.println("올바른 소스입니다.");
			} else {
				System.out.println("올바르지 않은 소스입니다.");
			}
			
		} catch (Exception e) {
			System.out.println("Q125_deskmate.main");
			e.printStackTrace();

		}
		
		
	}//main
	
}//class
