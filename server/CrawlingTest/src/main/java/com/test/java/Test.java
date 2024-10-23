package com.test.java;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class Test {

	public static void main(String[] args) {

	try {
			
			String url = "https://www.koreabaseball.com/Record/Player/HitterBasic/BasicOld.aspx?sort=HRA_RT";
			
			Document document = Jsoup.connect(url).get();
			
			
			Elements avg = document.select(" td:nth-child(2)");
			Elements g = document.select(" td:nth-child(3)");
			Elements pa = document.select(" td:nth-child(4)");
			for (Element element: avg ) {
				String avgText = element.text();
				System.out.println(avgText);
			}
			for (Element element: g ) {
				String avgg = element.text();
				System.out.println(avgg);
				
			}
			for (Element element: pa ) {
				String avgpa = element.text();
				System.out.println(avgpa);
			}
				
			
		} catch (Exception e) {
			System.out.println("Ex02.main");
			e.printStackTrace();
		}
		
	}
}
