package com.test.java;

import java.util.Arrays;
import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Ex67_RegEx {
	
	public static void main(String[] args) {
		
		//Ex67_RegEx.java
		/*
			
			정규 표현식, Regular Expression
			- 정규식
			- "특정 패턴"을 가지는 문자열을 검색하는 도구
			
			
			
			정규 표현식 요소(문법)
			1. x
				- x는 임의의 문자 1개
				ex) a > a
				ex) abc > abc
				ex) 홍길동 > 홍길동
			
			2. .
				- 임의의 문자 1개(wildcard)
				ex) . > 문자 1개
				ex) .. > 문자 2개
				ex) a.c > abc, aac, acc, adc, aec, a1c, a홍c
				ex) a..c > abc, abbc, a12c, a123c
				
			
			3. 출현횟수
				- 바로 앞의 문자(집합)의 출현 횟수를 표현
				
				3.1 생략
					- 바로 앞의 대상의 출현 횟수가 생략X, 중복X
					- 출현횟수: 1
					ex) a?bc > bc, abc, abb, ac, bc, bbc, aaabc
					
				3.2 ?
					- 바로 앞의 대상의 출현 횟수가 생략O, 중복X
					- 출현횟수: 0 ~ 1
					ex) a?bc > bc, abc, abb, ac, bc, bbc, aaabc
					ex) 홍?길동 > 안녕~ 길동아~ 네 이름은 홍길동이지?
					ex) 홍길?동 > 홍길동, 홍동, 길동
					ex) 홍길동? > 홍길동, 홍길, 길동
					ex) (자바)?코드 > 자바코드가 있습니다. 그런데 코드에 에러가 있어요.
					
				3.3 +
					- 바로 앞의 대상의 출현 횟수가 생략X, 중복O
					- 출현횟수: 1 ~ 무한대
					ex) a+bc > bc, abc, aabc, aaaaaaaaaaaaabc 
					ex) 홍+길동 > 안녕~ 길동아~ 네 이름은 홍길동이지? 홍홍홍홍홍홍길동
					ex) (자바)+코드 > 자바코드가 있습니다. 그런데 코드에 에러가 있어요. 자자자자자자바코드, 자바자바자바코드
					
				3.4 *
					- 바로 앞의 대상의 출현 횟수가 생략O, 중복O
					- 출현횟수: 0 ~ 무한대
					ex) a*bc > bc, abc, aabc, aaaaaaaaaaaaabc 
					ex) 홍*길동 > 안녕~ 길동아~ 네 이름은 홍길동이지? 홍홍홍홍홍홍길동
					ex) (자바)*코드 > 자바코드가 있습니다. 그런데 코드에 에러가 있어요. 자자자자자자바코드, 자바자바자바코드
				
				
					ex) a?a?abc > bc, abc, aabc, aaabc, aaaabc
			
			4. 선택, Choice
				- 연산자(or) 역할
				- [] 안에 문자 중 1개를 선택
				
				4.1 [열거값] 0 or 1 or 2
					ex) [012] > 제 나이는 12살입니다. 제 동생은 10살이예요. 키는 160cm입니다. 몸무게는 50kg입니다.
					ex) [나생은] > 제 나이는 12살입니다. 제 동생은 10살이예요. 키는 160cm입니다. 몸무게는 50kg입니다.
					ex) [홍김박최]길동 > 홍길동, 아무개, 김길동, 박길동, 최길동, 박최길동
					ex) [홍김박최]?길동 > 홍길동, 아무개, 김길동, 박길동, 최길동, 박최길동
					ex) [홍김박최]+길동 > 홍길동, 아무개, 김길동, 박길동, 최길동, 박최길동, 김김김김김길동
					
					ex) 숫자 > [0123456789]+
							 > [6475839201]+
					
					ex) 주민등록번호 > 950716-2123456
									   	000103-1928374
					
						[0123456789][0123456789][0123456789][0123456789][0123456789][0123456789]-[0123456789][0123456789][0123456789][0123456789][0123456789][0123456789][0123456789]
					
					ex) 전화번호
						010-1234-5678
						010-536-0987
						010-2734-0458
						010-4321-9434
						
						010-[0123456789][0123456789][0123456789][0123456789]?-[0123456789][0123456789][0123456789][0123456789]
						
				
					ex) 영어 소문자 > [abcdefghijklmnopqrstvwxyz]+
					ex) 영어 대문자 > [ABCDEFGHIJKLMNOPQRSTVWXYZ]+
					ex) 영문자 > [ABCDEFGHIJKLMNOPQRSTVWXYZabcdefghijklmnopqrstvwxyz]+
					ex) 한글 > [가나다바라마가강간감]
				
					*** []에서 연속된 문자(코드)를 간단하게 표현하는 방법
					ex) 숫자 > [0123456789] > [0-9] ^같은표현 but 연속되었을 경우만!
					ex) 숫자 > [01236789] > [0-9](X) > [0-36-9](0)
					ex) 숫자 > [13579] > 못줄임;;
					ex) 영어소문자 > [a-z]
					ex) 영어대문자 > [A-Z]
					ex) 영문자 > [A-Za-z](O), [a-zA-Z](0) > [A-z](X) 중간에 다른 문자가 있어서 연속되게 표현할 수 없음
					ex) 한글 > [가-힣]
					
					ex) 주민등록번호 > [0-9][0-9][0-9][0-9][0-9][0-9]-[0-9][0-9][0-9][0-9][0-9][0-9][0-9]
					ex) 전화번호 > 010-[0-9]?[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]
					
					ex) 홍씨 이름? > 홍길동, 홍순신, 홍재석, 홍아지, 홍양이
									> 홍길동입니다.
						홍[가-힣][가-힣]
						
					ex) 영문자 + 숫자 > [A-Za-z0-9]
					ex) 영문자 + 숫자 + 한글 > [A-Za-z0-9가-힣]
					ex) 식별자 적합한 문자(영어 + 숫자 + _)
						> [A-Za-z0-9_]
					
					
				4.2 [^열거값]
					- 4.1의 부정형
					- 열거값을 제외한 나머지 검색
					
					ex) [0-9]+ > [^0-9]+
				
					
				
			5. 출현횟수		
				- 바로 앞의 문자(집합)의 출현 횟수를 표현
				- ?, +, * > 더 세밀한 패턴 지정이 가능
				
				5.1 {n}
					- n: 출현 횟수
					ex) a{1}bc > ab, bc, abc, ac, abbc, abcc, aabc, aaabc
					ex) a{2}bc > ab, bc, abc, ac, abbc, abcc, aabc, aaabc
					ex) a{3}bc > ab, bc, abc, ac, abbc, abcc, aabc, aaabc
					
					
				5.2 {n, m}
					- n: 최소 출현 횟수
					- m: 최대 출현 횟수
					ex) a{1,2}bc > ab, bc, abc, ac, abbc, abcc, aabc, aaabc
					ex) a{2,3}bc > ab, bc, abc, ac, abbc, abcc, aabc, aaabc
					ex) a{0,2}bc > ab, bc, abc, ac, abbc, abcc, aabc, aaabc
				
				
				5.3 {n,}
					- n: 최소 출현 횟수
					- m 생략: 무한대
					ex) a{1,}bc > ab, bc, abc, ac, abbc, abcc, aabc, aaabc
					ex) a{0,}bc > ab, bc, abc, ac, abbc, abcc, aabc, aaabc
				
					ex) a?bc > a{0,1}bc
					ex) a+bc > a{1,}bc
					ex) a*bc > a{0,}bc
				
					ex) 주민등록번호 > [0-9][0-9][0-9][0-9][0-9][0-9]-[0-9][0-9][0-9][0-9][0-9][0-9][0-9]
									 > [0-9]{6}-[0-9]{7}
					
					ex) 전화번호 > 010-[0-9]?[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]
								 > 010-[0-9]{3,4}-[0-9]{4}
					
					ex) 한글 2~4 > [가-힣]{2,4}
					
					ex) 영문자 5자 이상 > [A-Za-z]{5,}
					
					ex) 영문자 5자 이상 + 단, 첫문자는 대문자로 시작
						> [A-Z][A-Za-z]{4,}
						
			6. 처음과 끝
				- 입력 컨트롤 or 입력 값 등을 대상으로 사용
				
				6.1 ^
					- 뒤의 표현으로 반드시 시작
					- str.startsWith("홍")
					ex) ^홍길동
				
				
				6.2 $
					- 앞의 표현으로 반드시 끝
					- str.endsWith("동")
					ex) 홍길동$
					
			7. 줄임표현
				
				7.1 \d or \D
					- Digital, 숫자
					- [0-9] == \d
					- [^0-9] == \D
					ex) [0-9]{6}-[0-9]{7}
					ex) \d{6}-\d{7}
					
					
				7.2 \w or \W
					- Word > 영어대소문자 + 숫자 + _조합
					ex) [A-Za-z0-9_]{2,5}
					ex) \w{2,5}
					
				7.3 \s or \S
					- 공백 문자(스페이스, 엔터, 개행)
					ex) \s+
			
					
		 */
		
		
		//m1();
		//m2();
		//m3();
		//m4();
		//m5();
		m6();
		
	}//main

	private static void m6() {
		
		//유효성 검사 > 회원 가입
		//1. 아이디 > 필수값, 4~12자 이내, 영문자+숫자+_, 숫자로 시작X
		//2. 암호 > 필수값, 4~12자 이내
		//3. 이름 > 필수값, 한글 2~5자 이내
		//4. 나이 > 필수값, 숫자, 범위(0~120)
		
		Scanner scan = new Scanner(System.in);
		System.out.println("[회원 가입]");
		
		while(true) {
		
			System.out.print("아이디: ");
			String id = scan.nextLine();
		
		
			if(invalidId(id)) { //유효성 검사 > 잘못된 것을 찾아라!!
			System.out.println("필수값, 4~12자 이내, 영문자+숫자+_, 숫자로 시작X");
			} else {
				break;
			} 
		
		}//while
		
		while(true) {
			
			System.out.print("암호: ");
			String pw = scan.nextLine();
		
		
			if(invalidPw(pw)) { //유효성 검사 > 잘못된 것을 찾아라!!
				System.out.println("필수값, 4~12자 이내");
			} else {
				break;
			} 
		
		}//while
		
		while(true) {
			
			System.out.print("이름: ");
			String name = scan.nextLine();
			
			
			if(invalidName(name)) { //유효성 검사 > 잘못된 것을 찾아라!!
				System.out.println("필수값, 2~5자 이내, 한글만");
			} else {
				break;
			} 
			
		}//while
		
		while(true) {
			
			try {
				
				System.out.print("나이: ");
				int age = scan.nextInt();
				
				if(invalidAge(age)) { //유효성 검사 > 잘못된 것을 찾아라!!
					System.out.println("필수값, 숫자만, 0~120");
				} else {
					break;
				}
			
			} catch (Exception e) {
				System.out.println("숫자만 입력하세요.");
				scan = new Scanner(System.in);
			}
			
			
		}//while
		
		
		System.out.println("회원 가입 진행");
		System.out.println("완료");
		
		
	}
	
	
private static boolean invalidAge(int age) {
		
	//필수값, 숫자만, 0~120
	//String regex = "1?[0-9]{1,2}";
	
	if(age < 1 || age > 120) {
		return true;
	}
	
	return false;
	}

private static boolean invalidName(String name) {
		
	String regex = "^[가-힣]{2,5}$";
	
	Pattern p1 = Pattern.compile(regex);
	
	Matcher m1 = p1.matcher(name);
	
	return !m1.find();
	
	}

private static boolean invalidPw(String pw) {
		
	if(pw == null || pw.equals("")) { //필수값 입력 확인
		return true;
	}
	
	if(pw.length() < 4 || pw.length() > 12) { //4~12자 이내
		return true;
	}
	
	return false;
	}

/*
	private static boolean invalidId(String id) {
		
		//필수값
		//4~12자 이내
		//영문자+숫자+_, 
		//숫자로 시작X
		
		if(id == null || id.equals("")) { //필수값 입력 확인
			return true;
		}
		
		if(id.length() < 4 || id.length() > 12) { //4~12자 이내
			return true;
		}
		
		for (int i=0; i<id.length(); i++) {
			
			char c = id.charAt(i);
			
			if (( c < 'A' || c > 'Z') 
					&& ( c < 'a' || c > 'z') 
					&& ( c < '0' || c > '9')
					&& c != '_') {
				return true;
			}
					
		}
		
		char c2 = id.charAt(0);
		
		if(c2 >= '0' && c2 <= '9') {
			return true;
		}
		
		//이곳 ~ 유효한 아이디
		return false;
		
	}
*/
	
	private static boolean invalidId(String id) {
		
		
		//필수
		//4~12자 이내
		//영문자+숫자+_
		//숫자로 시작X
		String regex = "^[A-Za-z가-힝_][A-Za-z0-9가-힣_]{3,11}$";
		
		Pattern p1 = Pattern.compile(regex);
		
		Matcher m1 = p1.matcher(id);
		
		
		return !m1.find();
				
				
				
	}
	

	private static void m5() {
		
		String txt = "안녕하세요. 홍길동입니다. 당신 이름도 길동이예요? 아~ 김길동이군요. 저쪽에 최길동도 있어요. 그리고 남궁길동도입니다.";
		
		//요구사항] 모든 길동이 찾기!!
		//String regex = "[홍김최(남궁)]길동";
		String regex = "(홍|김|최|남궁)(길동)"; //2글자 이상 초이스 해야할 때 ()묶어 |로 분리
		Pattern p1 = Pattern.compile(regex);
		Matcher m1 = p1.matcher(txt);
		
		while(m1.find()) {
			System.out.println("찾은 이름: " + m1.group());
			System.out.println("성: " + m1.group(1));
			System.out.println("이름: " + m1.group(2));
			System.out.println();
		}
		
		
	}

	private static void m4() { 
		
		String txt = "E(lectronic) Mail\r\n"
				+ "\r\n"
				+ "인터넷을 이용하는 메시지 송수신 규약. 직역하면 전자우편이다.\r\n"
				+ "\r\n"
				+ "메일 송신자가 메일 서버로 메일을 보내면 메일 수신자는 메일 서버에서 메일을 받는다. javadevelop@google.com송신자-서버-수신자가 분리되어 있는 점이 인스턴트 메신저와의 차이점이다. 인스턴트 메신저는 이용자가 송수신자 구분 없이 인터넷에 방을 만들고 들어가서 실시간으로 대화한다.\r\n"
				+ "\r\n"
				+ "영문으론 e-mail과 email 둘 다 맞는 표기법이다.\r\n"
				+ "\r\n"
				+ "마이크로소프트에서는 이메일을 한국어로 반만 직역하여, 전자 메일이라 부른다. 우체국의 우편 체계와 직관적으로 구분하기 위해서 '전자우편'으로 완전히 번역하지 않았다고 한다.\r\n"
				+ "2. 역사[편집]\r\n"
				+ "\r\n"
				+ "1984년 BBC의 'Database'라는 프로그램에서 소개된 'E-mail을 보내는 방법'[1]\r\n"
				+ "1970년대 초반에 발명되었다. 'E-mail'이라는 표현은 1990년대에나 통용되기 시작했고, 전자 우편(electronic mail)이라는 용어는 팩스같이 전자기기를 통한 문서의 교환 방법에 구분 없이 사용되었기 때문에 이메일의 발명 시점을 정확히 집어서 말하긴 힘들다. 1969년 ARPANET이 만들어지면서 메시지들을 전송하려는 시도가 있었으며, 1971년에는 골뱅이(@) 문자를 사용하는 메일이 처음으로 보내졌고, 메일 규격을 표준화하려는 시도가 1973년 RFC 561 등으로부터 시작되었다. 현재 사용되는 것과 같은 메일 전송 규약인 SMTP의 첫 표준 RFC 821이 등장한 것은 1982년.\r\n"
				+ "\r\n"
				+ "간혹 인도계 미국인 소년 시바 아야두라이(V.A. Shiva Ayyadurai)가 1978년에 이메일을 최초로 발명했다고 하는 기사를 찾을 수 있으나#, 이는 당사자의 일방적인 주장으로, 이것을 보도했던 gpal4180@naver.com 워싱턴 포스트에서도 정정보도를 낸 바 있다. 이메일의 최초 사용자라고 일반적으로 인정받는 사람은 ARPANET의 작업에 참여했던 레이 톰린슨이다. 인터넷은 원래 웹 서핑 하려고 만들어졌던 게 아니라, 문자정보를 주고 받기 위해 만들어진 네트워크였다. 즉, 이메일은 인터넷의 탄생 목적과 연관이 있다. 메일주소 중간에 @를 사용해서 사용자 계정 이름과 이메일 서버 이름을 구분하는 방식 역시 1971년에 인터넷의 전신인 ARPANET 시절 처음 등장했을 정도로 그 역사가 깊다.[2]\r\n"
				+ "\r\n"
				+ "국내에선 인터넷이 대중화되기 전, 그러니까 PC통신 javajava@hanmail.net 시절에도 '전자 메일'이라는 이름으로 비슷한 게 있었지만 이 시절에는 서비스 제공자끼리 협조가 안 돼서 같은 서비스 가입자끼리만 주고받을 수 있었다는 점이 좀 다르다. (예: 이 프로그램을 사용하시다가 궁금하신 점이 있으면 천리안 namu0821이나 하이텔 namuking으로 메일 보내주세요.) 시간이 지나면서 인터넷이 대중화되자 이들 PC통신 서비스도 인터넷 이메일의 편지함을 자사의 전자메일과 연동시키는 방법으로 인터넷에서도 이메일을 주고받을 수 있도록 했다.";
		
		//정규식 사이트 > http://regexlib.com
		
		//이메일 주소 검색
		//String regex = "이메일 주소 패턴 정규식";
		String regex = "(\\w+)@([a-zA-Z_]+?\\.[a-zA-Z]{2,3})";
		
		Pattern p1 = Pattern.compile(regex);
		
		Matcher m1 = p1.matcher(txt);
		
		while (m1.find()) {
			System.out.println( "아이디: " + m1.group(1));
			System.out.println( "도메인: " + m1.group(2));
			System.out.println();
		}
		
		
	}

	private static void m3() {
		
		//자바 > 정규식 클래스 제공
		String txt = "안녕하세요. 홍길동입니다. 제 연락처는 010-1234-5678입니다. 혹시 연락이 안되면 010-8765-9876로 연락주세요. 010-2345-0394입니다.";
		
		//txt 안에 전화번호가 포함되어 있는지?
		String regex = "([0-9]{3})-([0-9]{3,4})-([0-9]{4})"; //^ () 정규 표현식에 영향을 미치지 않음 but, 그룹을 나타냄 -> System.out.println("통신사: " + m1.group(1));               1           2            3
		
		//정규 표현식 객체
		Pattern p1 = Pattern.compile(regex);
		
		//검색 + 결과
		Matcher m1 = p1.matcher(txt);
		
		//대상(txt)에서 정규식 패턴에 일치하는 부분을 발견했습니다.
		//System.out.println(m1.find()); 
		
//		if(m1.find()) {
//			System.out.println("txt내에서 전화번호 발견O");
//		} else {
//			System.out.println("txt내에서 전화번호 발견X");
//		}
		
//		System.out.println(m1.find()); //true
//		System.out.println(m1.find()); //true
//		System.out.println(m1.find()); //true
//		System.out.println(m1.find()); //iterator처럼 찾을 때마다 다음으로 넘어가기 때문에 마지막에 false가 나옴, 전진만 가능.
		
//		int count = 0;
//		
//		while (m1.find()) {
//			count++;
//		}
//		
//		System.out.println("전화번호를 총 " + count + "회 발견했습니다.");
		
		while (m1.find()) {
			
			System.out.println("[전화번호 발견]");
			System.out.println("전화번호: " + m1.group());
			System.out.println("전화번호: " + m1.group(0)); //위의 식과 같은 표현
			System.out.println("통신사: " + m1.group(1)); 
			System.out.println("앞자리: " + m1.group(2)); 
			System.out.println("뒷자리: " + m1.group(3)); 
			System.out.println();
			
			
		}
		
		
		
		
	}

	private static void m2() {
		
		String names = "홍길동,,아무개.강아지;고양이 병아리";
		
		String[] list = names.split("[,;\\s.]+"); //space bar눌러도 되는데 가독성 떨어지므로 \\s 넣어줌
		
		for( String name: list ) {
		
			System.out.println(name);
			
//			if(name.contains(";")) {
//				
//				String[] sublist = name.split(";");
//				System.out.println(Arrays.toString(sublist));
//				
//			} else {
//				System.out.println(name);
//			}
			
		}
		
		
		
		
		
		
	}

	private static void m1() {
		
		//자바 > 여러 메서드가 정규 표현식을 지원한다.
		
		//게시판 > 글쓰기 > 개인정보(전화번호) 마스킹
		String txt = "안녕하세요. 홍길동입니다. 제 연락처는 010-1234-5678입니다. 혹시 연락이 안되면 010-8765-9876로 연락주세요. 010.2345.0394입니다.";
		
		//System.out.println(txt.replace("010-1234-5678", "XXX-XXXX-XXXX"));
		
		System.out.println(txt.replaceAll("[0-9]{3}-[0-9]{3,4}-[0-9]{4}", "XXX-XXXX-XXXX")
							  .replaceAll("[0-9]{3}.[0-9]{3,4}.[0-9]{4}", "XXX-XXXX-XXXX"));	//regex가 적혀 있으면 정규 표현식 사용가능
		
		System.out.println(txt.replaceFirst("[0-9]{3}-[0-9]{3,4}-[0-9]{4}", "XXX-XXXX-XXXX"));
		
	}
	
}//class
































