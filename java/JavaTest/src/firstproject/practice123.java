//package firstproject;
//
//import java.io.BufferedWriter;
//import java.io.FileWriter;
//import java.time.LocalDate;
//import java.util.Random;
//
//public class practice123 {
//
//	public static void main(String[] args) {
//
//		try { // 일련번호,날짜,유저닉네임,캐릭터일련번호,세트스코어
//
//			String record = ".\\Tennis\\resource\\record.txt";
//
//			BufferedWriter writer = new BufferedWriter(new FileWriter(record));
//
//			// 랜덤 객체 생성
//			Random random = new Random();
//
//			// 2.날짜 범위 설정 (예: 2000년 1월 1일부터 2023년 12월 31일까지)
//			LocalDate startDate = LocalDate.of(2024, 1, 1);
//			LocalDate endDate = LocalDate.of(2024, 07, 19);
//
//			for (int i = 1; i <= 10; i++) {
//
//				// 랜덤 날짜 생성
//				LocalDate randomDate = generateRandomDate(startDate, endDate, random);
//
//				// 유저닉네임
//				String[] names1 = { "김", "이", "박", "최", "정", "현", "전", "강" };
//				String[] names2 = { "길", "동", "재", "석", "철", "민", "호", "진", "희", "영" };
//
//				// 캐릭터일련번호
//				int[] numbers = { 1, 2, 3 };
//				int randomIndex = random.nextInt(numbers.length);
//				int randomNumber = numbers[randomIndex];
//
//				// 세트스코어 ?세트에서 ?세트 이겼는지 졌는지
//				int[] numberset = { 1, 2 };
//				int randomIndexset = random.nextInt(numberset.length);
//				int randomNumberset = numbers[randomIndexset];
//
//				// 일련번호,날짜,유저닉네임,캐릭터일련번호,세트스코어
//
//				String line = "";
//
//				line += i + ",";
//
//				line += randomDate;
//
//				line += "," + names1[random.nextInt(names1.length)] + names2[random.nextInt(names2.length)]
//						+ names2[random.nextInt(names2.length)];
//
//				line += "," + randomNumber;
//
//				if (randomNumberset == 1) {
//					line += "," + (randomNumberset + 1);
//					line += "," + (randomNumberset - 1);
//				} else if (randomNumberset == 2) {
//					line += "," + (randomNumberset);
//					line += "," + (randomNumberset - 1);
//				} 
//
//				System.out.println(line);
//				writer.write(line + "\r\n");
//			}
//
//			writer.close();
//
//			System.out.println("완료");
//
//		} catch (Exception e) {
//			System.out.println("practice123.main");
//			e.printStackTrace();
//
//		}
//
//	}
//
//	// 여기서부터 메서드~
//
//	// 랜덤날짜 생성 메서드
//	public static LocalDate generateRandomDate(LocalDate startDate, LocalDate endDate, Random random) {
//		long startEpochDay = startDate.toEpochDay();
//		long endEpochDay = endDate.toEpochDay();
//		long randomEpochDay = startEpochDay + random.nextInt((int) (endEpochDay - startEpochDay + 1));
//		return LocalDate.ofEpochDay(randomEpochDay);
//	}
//
//}
