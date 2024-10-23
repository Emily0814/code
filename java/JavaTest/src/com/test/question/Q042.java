package com.test.question;

import java.util.Calendar;

public class Q042 { //TODO 전반적으로 다 이해가가질 않음
	public static void main(String[] args) {

		// Q042.java 서기 1년 1월 1일부터 오늘까지 며칠째인지 합을 구하시오.
		// 조건] Calendar 클래스 사용 금지

		// 출력] 2024년 7월 1일은 739,068일째 되는 날이고 월요일입니다.

		m1();
		// m2();

	}// main

	private static void m1() {

		int year = 0;
		int month = 0;
		int date = 0;
		int sum = 0;
		String day = "";

		Calendar now = Calendar.getInstance();

		year = now.get(Calendar.YEAR);
		month = now.get(Calendar.MONTH) + 1;
		date = now.get(Calendar.DATE);

		for (int i = 1; i < year; i++) {

			if (isLeafYear(i)) {
				sum += 366;
			} else {
				sum += 365;
			}

		}

		for (int i = 1; i < month; i++) {

			sum += getMaxDate(i, year);

		}

		sum += date;

		day = getday(sum);

		System.out.printf("%d년 %d월 %d일은 %,d일째 되는 날이고 %s입니다.", year, month, date, sum, day);

	}

	private static String getday(int sum) {

		if (sum % 7 == 0) {
			return "일요일";
		} else if (sum % 7 == 1) {
			return "월요일";
		} else if (sum % 7 == 2) {
			return "화요일";
		} else if (sum % 7 == 3) {
			return "수요일";
		} else if (sum % 7 == 4) {
			return "목요일";
		} else if (sum % 7 == 5) {
			return "금요일";
		} else {
			return "토요일";
		}

	}

	private static int getMaxDate(int month, int year) {

		switch (month) {
		case 1:
		case 3:
		case 5:
		case 7:
		case 8:
		case 10:
		case 12:
			return 31;
		case 4:
		case 6:
		case 9:
		case 11:
			return 30;
		case 2:
			return isLeafYear(year) ? 29 : 28;
		}

		return 0;
	}

	private static boolean isLeafYear(int year) {

		if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0) {
			return true;
		} else {
			return false;
		}
	}

	private static void m2() {

		Calendar begin = Calendar.getInstance();
		begin.set(1, 0, 1);

		Calendar now = Calendar.getInstance();

		long gap = now.getTimeInMillis() - begin.getTimeInMillis();

		System.out.printf("%d년 %월 %d일은 %,d일째 되는 날 %s입니다.\n", now.get(Calendar.YEAR), now.get(Calendar.MONTH) + 1,
				now.get(Calendar.DATE), gap / 1000 / 60 / 60 / 24 - 1, now);

	}

}
