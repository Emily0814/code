package com.test.java;

public class Ex09_Casting {
	public static void main(String[] args) {
		
	//Ex09_Casting.java
	/*
	  	형변환, 자료형변환
		- Casting, Promotion
		- 하나의 자료형을 다른 자료형으로 변화하는 작업
		- 코드 작성을 유연하게 하기 위해서(개발자 편의성?)
		- int > double
		- long > float
		- byte > short
		
		1. 암시적(묵시적) 형변환, 자동 형변환, Promotion
			- 큰형 = 작은형
			- 100% 안전
		
		2. 명시적 형변환, 강제 형변환, Casting
			- 작은형 = 큰형
			- 경우에 따라 다르다.
				-오버플로우 발생 가능~!
		
	 */
		
		byte b1;    //1byte
		short s1;   //2byte
		
		b1 = 10; //원본
		
		//LValue = RValue
		//공간 = 값
		//*** 절대 규칙 > LValue와 RValue의 자료형은 반드시 동일해야 한다. > 만약 동일하지 않으면 무조건 컴파일 오류
		
		//short = byte
		//s1 = b1; //변수끼리 복사할 때 사용
		
		//(자료형) : 형변환 연산자
		s1 = (short)b1; 
		
		//검증
		System.out.println(s1);
		
		
		
		byte b2;
		short s2;
		
		s2 = 128;
		
		//Type mismatch: cannot convert from short to byte 명시적인 형변환
		b2 = (byte)s2;
		
		System.out.println(b2);
		
		
		int money = 2100000000;
		
		short money2;
		
		//오버 플로우(Overflow)
		//언더 플로우(Underflow)
		money2 = (short)money;
		
		System.out.println("계좌 이체 결과 잔액: " + money2);
		
		
		//6/24
		
		System.out.println();
		System.out.println();

		//(값형끼리의) 형변환
		//- 값형과 참조형간에는 형변환 불가능하다.
		//byte, short, uint, long
		//float, double
		//char
		//boolean(X)
		//String(X) - 참조형
		
		
		float f1; //4
		double d1; //8
		
		f1 = 3.14F;
		
		//8 = 4
		d1 = f1;
		
		System.out.println(d1);
		
		d1 = 3.1234567890123456789;
		
		//4 = 8
		f1 =  (float)d1;
		
		System.out.println(d1); //원본
		System.out.println(f1); //복사본
		
		
		
		//정수 > 정수
		//실수 > 실수
		//정수 > 실수
		//실수 > 정수
		int n1 = Integer.MAX_VALUE; //원본(4)
		float n2;     //복사본(4)
		
		//4 = 4
		n2 = n1; //정수와 실수 간에 형변환을 할 때 값에 손실이 일어날 수 있음, 에러는 안남
		
		System.out.println(Integer.MAX_VALUE); //Integer가 가지는 원본값
		System.out.println(n2);
		
		
		int n3;		  //복사본(4)
		float n4 = 10000000000.0F; //원본(4) 오버플로우 발생시 최대값으로 변함?
		//float n4 = 1.0F + Integer.MAX_VALUE;
		
		//Type mismatch: cannot convert from float to int
		n3 = (int)n4; //오른쪽이 범위가 더 크고 왼쪽이 작은 때 발생, 물리적인 크기 같아도  float가 더 큰 자료형이므로 에러가 발생
		
		
		System.out.println("n3: " + n3);
		
		//숫자형 크기 비교
		//byte(1) < short(2) < int(4) < long(8) <<< float(4) < double(8)
		
		//char 형변환
		//- 문자 코드값 <- (형변환) -> 숫자
		//- 일종의 정수형변환이다.
		
		System.out.println(65);
		System.out.println((char)65);
		System.out.println('a');
		System.out.println((int)'a');
		
		System.out.println("A"); //String
		//System.out.println((int)"A");  참조형과 값형간의 형변환 불가능
		
		//*** 문자를 정수로 형변환할 때는 반드시 int로 변환한다.(short 사용금지)
		
		char c1;  //정수(2byte)
		short t1; //정수(2byte)
		
		c1 = '가'; //44032
		
		//c1 = 'A';
		
		//t1 = c1 Type mismatch: cannot convert from char to short, 오른쪽이 더 커서 오류남
		
		t1 = (short)c1;
		
		System.out.println(t1); //65
		
		char c2;
		short t2;
		
		t2 = 97;
		
		//c2 = t2; //이번에는 short가 더 크다고 에러남
		c2 = (char)t2; //명시적형변환을 반드시 요구함
		System.out.println(c2); 
		
		
		//"100" -> 100
		//이런 경우가 되게 많음
		
		String txt = "100";
		int result;
		
		//참조형 = 값형(X)
		//result = (int)txt;
		
		result = Integer.parseInt(txt);
		//result = 100;
		
		System.out.println(result);
		
		txt = "3.14";
		
		double result2 = Double.parseDouble(txt);
		System.out.println(result2);
		
		//Wrapper별로 문자열을 자신의 자료형으로 바꿔주는 메서드
		//- Byte.parseByte("100")
		//- Short.parseShort("100")
		//- Float.parseFloat("3.14")
		
	}
}
