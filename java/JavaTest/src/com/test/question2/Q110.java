package com.test.question2;

import java.io.File;
import java.util.Scanner;

public class Q110 {
	
	public static void main(String[] args) {
	
		//Q110.java 파일의 경로를 입력받아 파일 정보를 출력하시오.
		//조건] 파일 크기 단위 변환 출력(소수이하 1자리까지) : B, KB, MB, GB, TB
		
		//입력] 파일 경로 : "C:\class\code\java\file2\test.txt"
		//출력] 파일명 : test.txt 
		//		종류 : txt 파일 
		//		파일 크기 : 38B 
		
		//입력]	파일 경로 : C:\movie\SpriderMan.mp4 
		//출력]	파일명 : SpriderMan.mp4
		//		종류 : mp4 파일 
		//		파일 크기 : 2.54TB 
		
		
		
		Scanner scan = new Scanner(System.in);
		
		System.out.print("파일 경로 : ");
		String path = scan.nextLine();
		
		File file = new File(path);
		//System.out.println(file.exists());
		long fileSize = file.length();
		
		String fileName = file.getName();
		//System.out.println(fileName.substring(fileName.indexOf(".")+1));
		String fileKind = fileName.substring(fileName.indexOf(".")+1);
		
		System.out.println("파일명: " + file.getName());
		System.out.printf("종류 : %s 파일\n", fileKind);
		System.out.println("파일 크기 : " + fileUnits(fileSize)) ;
		
	
		
	}

	private static String fileUnits(long bytes) {
		
		if( bytes < 1024) {
			
			return String.format( "%.1fB", (double)bytes );	//타입 캐스팅: 연산을 수행할 때, 소수점을 포함한 정밀한 계산을 위해 double로 명시적으로 캐스팅
		} else if ( bytes < 1024 * 1024 ) {
			
			return String.format( "%.1fKB" , (double)bytes/1024 );
		} else if ( bytes < 1024L * 1024 * 1024 ) {
			
			return String.format( "%.1fMB" , (double)bytes/(1024*1024) );	//괄호 사용: 연산의 순서가 명확하도록 괄호를 사용하여 그룹화
		} else if ( bytes < 1024L * 1024 * 1024 * 1024 ) {
			
			return String.format( "%.1fGB" , (double)bytes/(1024*1024*1024) );
		} else{
			
			return String.format( "%.1fTB" , (double)bytes/(1024*1024*1024*1024) );
		}
		
		
		
	}
	
}//java


