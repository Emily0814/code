package com.test.question2;

public class Q079 {
	
//	   public static void main(String[] args) {
//	        int n = 3; // 마방진의 크기 (n x n)
//
//	        int[][] magicSquare = new int[n][n];
//
//	        // 배열을 0으로 초기화 (자바에서는 배열은 이미 0으로 초기화됨)
//	        // 하지만 명확성을 위해 초기화 과정을 추가합니다.
//	        for (int i = 0; i < n; i++) {
//	            for (int j = 0; j < n; j++) {
//	                magicSquare[i][j] = 0;
//	            }
//	        }
//
//	        int row = n / 2;	//1.5
//	        int col = n - 1;	//2
//
//	        // 마방진 생성
//	        for (int num = 1; num <= n * n; ) {
//	            if (row == -1 && col == n) {
//	                row = 0;
//	                col = n - 2;
//	            } else {
//	                // 조건에 따라 row와 col을 조정
//	                if (row == -1)
//	                    row = n - 1;
//	                if (col == n)
//	                    col = 0;
//	            }
//
//	            if (magicSquare[row][col] != 0) {
//	                col -= 2;
//	                row++;
//	                continue;
//	            } else {
//	                magicSquare[row][col] = num++;
//	            }
//
//	            col++;
//	            row--;
//	        }
//
//	        // 마방진 출력
//	        for (int i = 0; i < n; i++) {
//	            for (int j = 0; j < n; j++) {
//	                System.out.print(magicSquare[i][j] + "\t");
//	            }
//	            System.out.println();
//	        }
//	    }
//	

	
	
	
	 public static void main(String[] args) {
	        int n = 3; // 마방진의 차원 (3x3)

	        int[][] magicSquare = new int[n][n];

	        
	        // 초기 위치 설정
	        int row = 0;
	        int col = n / 2;
	        
	        
	        // 마방진 채우기
	        for (int num = 1; num <= n*n; num++) {
	            magicSquare[row][col] = num;
	            row--;
	            col++;
	            
	            if (num % n == 0) {
	                row += 2;
	                col--;
	            }
	            else {
	                if (col == n)
	                    col -= n;
	                else if (row < 0)
	                    row += n;
	            }
	        }

	        // 마방진 출력
	        for (int i = 0; i < n; i++) {
	            for (int j = 0; j < n; j++) {
	                System.out.print(magicSquare[i][j] + "\t");
	            }
	            System.out.println();
	        }
	    }//main1
	
}//class
