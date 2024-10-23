package com.test.java;

public class Ex0401_Variable {
	
	public static void main(String[] args) {
		
		//정수형
		
		//1.byte
		
		//01. 데이터 선정
		//- 연령대
		//02. 1의 데이터를 저장될 자료형 선택?
		//-연령 데이터 > 형태 + 범위
		//-10대 ~ 90대 > 실수 = float/double > float
		//03.변수 생성 + 초기화(리터럴)
		//04.마무리 > 출력
		String a = "[byte]";
		System.out.println(a);
		System.out.println(Byte.MAX_VALUE + " ~ " + Byte.MIN_VALUE);
		
		byte bmax;
		bmax = 127;
		System.out.println("1. byte의 최대값은 " + bmax + "입니다.");
		
		
		byte bmin;
		bmin = -128;
		System.out.println("2. byte의 최소값은 " + bmin + "입니다.");
		
		byte age;
		age = 20;
		System.out.println("3. 제 연령대는 " + age + "대입니다.");
		
		byte senti;
		senti = 110;
		System.out.println("4. 이것의 길이는" + senti + "cm입니다.");
		
		byte amazingage;
		amazingage = 127;
		System.out.println("5. 놀랍게도 그녀의 나이는 " + amazingage + "세입니다.");
		
		byte newrecord;
		newrecord = 80;
		System.out.println("6. 그녀의 신기록은 " + newrecord + "개입니다.");
		
		//byte height;
		//height = 110;
		//System.out.println("이것의 길이는" + height + "cm입니다.");
		
		
		//byte height;
		//height = 110;
		//System.out.println("이것의 길이는" + height + "cm입니다.");
		
		
		//byte height;
		//height = 110;
		//System.out.println("이것의 길이는" + height + "cm입니다.");
		
		
		//byte height;
		//height = 110;
		//System.out.println("이것의 길이는" + height + "cm입니다.");
		
	
		//2.short
		
		//01. 데이터 선정
		//- 제품가격
		//02. 1의 데이터를 저장될 자료형 선택?
		//-연령 데이터 > 형태 + 범위
		//-10대 ~ 90대 > 실수 = float/double > float
		//03.변수 생성 + 초기화(리터럴)
		short price;
		price = 20000;
		
		//04.마무리 > 출력
		String b = "[short]";
		System.out.println(b);
		System.out.println(Short.MAX_VALUE);
		System.out.println(Short.MIN_VALUE);
		System.out.println("이 제품의 가격은 " + price + "원입니다.");
		
		short smax;
		smax = 32767;
		System.out.println("shot의 최대값은 " + smax + "입니다.");
		
		short smin;
		smin = -32768;
		System.out.println("shot의 최소값은 " + smin + "입니다.");
		
		
		
		//3.int
		
		//01. 데이터 선정
		//- 도시 인구수
		//02. 1의 데이터를 저장될 자료형 선택?
		//-연령 데이터 > 형태 + 범위
		//-10대 ~ 90대 > 실수 = float/double > float
		//03.변수 생성 + 초기화(리터럴)
		//04.마무리 > 출력
		String c = "[int]";
		System.out.println(c);
		System.out.println(Integer.MAX_VALUE + " ~ " + Integer.MIN_VALUE);
		
		int imax;
		imax = 2147483647;
		System.out.println("1. int의 최대값은 " + imax + "입니다.");
		
		int city ;
		city = 200000000;
		System.out.println("2. 이 도시의 인구 수는 " + city + "명입니다.");
		
		
		//4.long
		
		//01. 데이터 선정
		//- 부동산
		//02. 1의 데이터를 저장될 자료형 선택?
		//-연령 데이터 > 형태 + 범위
		//-10대 ~ 90대 > 실수 = float/double > float
		//03.변수 생성 + 초기화(리터럴)
		//04.마무리 > 출력
		String d = "[long]";
		System.out.println(d);
		System.out.println(Long.MAX_VALUE + " ~ " + Long.MIN_VALUE);
		
		long lmax;
		lmax = 9223372036854775807L;
		System.out.println("1. long의 최대값은 " + lmax + "입니다.");
		
		long apartment;
		apartment = 210000000000000L;
		System.out.println("2. 이 아파트의 매매 가격은 " + apartment + "원입니다.");	
		
		//실수형
		
		//5.float
		//01. 데이터 선정
		//- 건강검진
		//02. 1의 데이터를 저장될 자료형 선택?
		//-연령 데이터 > 형태 + 범위
		//-10대 ~ 90대 > 실수 = float/double > float
		//03.변수 생성 + 초기화(리터럴)
		float healthy;
		healthy = 30.5F;
		
		//04.마무리 > 출력
		System.out.println(Float.MAX_VALUE);
		System.out.println("당신의 신체나이는 " + healthy + "세입니다.");
		
		float fmax;
		fmax = 3.4028235E38F;
		System.out.println("float의 최대값은" + fmax + "입니다.");
		
		//6.double
		//01. 데이터 선정
		//- 정육점
		//02. 1의 데이터를 저장될 자료형 선택?
		//-연령 데이터 > 형태 + 범위
		//-10대 ~ 90대 > 실수 = float/double > float
		//03.변수 생성 + 초기화(리터럴)
		double meat;
		meat = 300.9;
		
		//04.마무리 > 출력
		System.out.println(Double.MAX_VALUE);
		System.out.println("이 고기의 무게는 " + meat+ "g입니다.");
		
		double dmax;
		dmax = 1.7976931348623157E308;
		System.out.println("double의 최대값은 " + dmax + "입니다.");
		
		//논리형
		
		//7.boolean
		//01. 데이터 선정
		//- 거짓말탐지기
		//02. 1의 데이터를 저장될 자료형 선택?
		//-연령 데이터 > 형태 + 범위
		//-10대 ~ 90대 > 실수 = float/double > float
		//03.변수 생성 + 초기화(리터럴)
		boolean liar;
		liar = true;
		
		//04.마무리 > 출력
		System.out.println("당신의 말은 " + liar + "입니다.");
		
		
		//문자형
		
		//8.char
		//01. 데이터 선정
		//- 학점
		//02. 1의 데이터를 저장될 자료형 선택?
		//-연령 데이터 > 형태 + 범위
		//-10대 ~ 90대 > 실수 = float/double > float
		//03.변수 생성 + 초기화(리터럴)
		char score;
		score = 'A';
		
		//04.마무리 > 출력
		System.out.println("이번 학점은 " + score + "입니다.");
		
		//9.String
		//01. 데이터 선정
		//- 자격증
		//02. 1의 데이터를 저장될 자료형 선택?
		//-연령 데이터 > 형태 + 범위
		//-10대 ~ 90대 > 실수 = float/double > float
		//03.변수 생성 + 초기화(리터럴)
		String test;
		test = "합격";
		
		//04.마무리 > 출력
		System.out.println("축하합니다. 이번 시험 결과는 " + test + "입니다.");
		
	}
	
}
