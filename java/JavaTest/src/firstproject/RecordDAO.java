//package firstproject;
//
//import java.io.BufferedReader;
//import java.io.FileReader;
//
//import com.test.java.file.ScoreDTO;
//
//public class RecordDAO {
//
//	private final String game = ".\\resource\\game.txt";
//
//	public RecordDTO get(String name) {
//
//		try {
//			
//			BufferedReader reader = new BufferedReader(new FileReader(game));
//
//			String line = null;
//
//			while ((line = reader.readLine()) != null) {
//				
//				if (line.startsWith(name)) {
//
//					String[] temp = line.split(",");
//
//					RecordDTO dto = new RecordDTO();
//					//1, 1세트, 6게임, 40, 0
//					dto.getNo(temp[0]);
//					dto.getmatch(Integer.parseInt(temp[1]));
//					dto.getgame(Integer.parseInt(temp[2]));
//					dto.getUserScore(Integer.parseInt(temp[3]));
//					dto.getCPUScore(Integer.parseInt(temp[4]));
//					
//					return dto;
//					
//				}
//			}
//
//			reader.close();
//
//		} catch (Exception e) {
//			System.out.println("ScoreDAO.get");
//			e.printStackTrace();
//
//		}
//
//		return null;
//	}
//
//}
