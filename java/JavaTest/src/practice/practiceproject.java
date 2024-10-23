package practice;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.time.LocalDate;
import java.util.Random;

public class practiceproject {

	public static void main(String[] args) {

		try { // 일련번호,날짜,유저닉네임,캐릭터일련번호,세트스코어

			String record = ".\\Tennis\\resource\\record.txt";

			BufferedWriter writer = new BufferedWriter(new FileWriter(record));

			// 랜덤 객체 생성
			Random random = new Random();

			// 2.날짜 범위 설정 (예: 2000년 1월 1일부터 2023년 12월 31일까지)
			LocalDate startDate = LocalDate.of(2000, 1, 1);
			LocalDate endDate = LocalDate.of(2023, 12, 31);

			for (int i = 1; i <= 10; i++) {

				// 랜덤 날짜 생성
				LocalDate randomDate = generateRandomDate(startDate, endDate, random);

				// 유저닉네임
				String characters = "^[A-Za-z가-힝][A-Za-z0-9가-힣]{3,11}$";
				String dummyId = generateDummyId(random, characters);

				// 캐릭터일련번호
				int[] numbers = { 1, 2, 3 };
				int randomIndex = random.nextInt(numbers.length);
				int randomNumber = numbers[randomIndex];

				// 세트스코어
				

				// 일련번호,날짜,유저닉네임,캐릭터일련번호,세트스코어

				String line = "";

				line += i + ", ";

				line += randomDate;

				line += ", " + dummyId;

				line += ", " + randomNumber;

				System.out.println(line);
				writer.write(line + "\r\n");
			}

		} catch (Exception e) {
			System.out.println("practice123.main");
			e.printStackTrace();

		}

	}

	// 여기서부터 메서드~

	// 랜덤날짜 생성 메서드
	public static LocalDate generateRandomDate(LocalDate startDate, LocalDate endDate, Random random) {
		long startEpochDay = startDate.toEpochDay();
		long endEpochDay = endDate.toEpochDay();
		long randomEpochDay = startEpochDay + random.nextInt((int) (endEpochDay - startEpochDay + 1));
		return LocalDate.ofEpochDay(randomEpochDay);
	}

	// 닉네임
	private static String generateDummyId(Random random, String regexPattern) {
		StringBuilder sb = new StringBuilder();

		// 시작 문자 선택
		char startChar = getRandomStartCharacter(random);
		sb.append(startChar);

		// 이어지는 문자열 길이 선택 (3에서 11 사이)
		int length = random.nextInt(4) + 8; // 4에서 12 사이의 랜덤한 수

		// 이어지는 문자열 추가

		for (int i = 0; i < length; i++) {
			char nextChar = getRandomNextCharacter(random);
			sb.append(nextChar);
		}

		// StringBuilder를 String으로 변환
		String generatedId = sb.toString();

		// 생성된 아이디가 정규 표현식 패턴에 맞는지 확인
		if (!generatedId.matches(regexPattern)) {
			// 패턴에 맞지 않으면 재귀적으로 다시 생성
			return generateDummyId(random, regexPattern);
		}

		return generatedId;
	}

	private static char getRandomStartCharacter(Random random) {
		String validCharacters = "A-Za-z가-힝_";
		return validCharacters.charAt(random.nextInt(validCharacters.length()));
	}

	private static char getRandomNextCharacter(Random random) {
		String validCharacters = "A-Za-z0-9가-힝_";
		return validCharacters.charAt(random.nextInt(validCharacters.length()));
	}

}
