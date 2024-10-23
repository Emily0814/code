package com.test.java;

import java.io.File;

import com.github.lalyos.jfiglet.FigletFont;

public class Ex70 {
	public static void main(String[] args) {
		
		try {
			
			  String asciiArt1 = FigletFont.convertOneLine("Java");
			  System.out.println(asciiArt1);
			
			  String asciiArt2 
			  = FigletFont.convertOneLine(new File(".\\flf\\big.flf"), "winner");
			  System.out.println(asciiArt2);
			  
		} catch (Exception e) {
			System.out.println("Ex70.main");
			e.printStackTrace();
			
		}
		
	}
}
