package com.test.java.file;

import java.util.Scanner;

public class Ex62_Process {
	
	public static void main(String[] args) {
		
		//자바에서 외부 프로그램 실행하기
		Scanner scan = new Scanner(System.in);
		
		System.out.println("1. 메모장");
		System.out.println("2. 그림판");
		System.out.println("3. 계산기");
		System.out.println("4. 브라우저");
		System.out.print("선택: ");
		
		String seq = scan.nextLine();
		
		try {
			
			ProcessBuilder builder = new ProcessBuilder();
			
			
			if(seq.equals("1")) {
				builder.command("notepad.exe", "C:\\class\\code\\java\\JavaTest\\dat\\score.txt");
			
			} else if (seq.equals("2")) {
				builder.command("C:\\Program Files\\Classic Paint\\mspaint1.exe\", \"C:\\class\\code\\java\\JavaTest\\this.png\\");
			} else if (seq.equals("3")) {
				builder.command("calc.exe");
			} else if (seq.equals("4")) {
				builder.command("C:\\Program Files (x86)\\Microsoft\\Edge\\Application\\msedge.exe\\", "https://youtu.be/_WS-e_f0suM");
			}
			
			builder.start();
			
		} catch (Exception e) {
			System.out.println("Ex62_Process.main");
			e.printStackTrace();

		}
		
		
	}
	
}




































