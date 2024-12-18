package com.test.java.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.test.java.dao.AddressDao;

/**
 * TestController
 * 메인 컨트롤러입니다.
 */
@Controller
public class TestController {

	/**
	 * DB 처리를 위한 의존객체입니다.
	 */
	@Autowired
	private AddressDao dao;
	
	/**
	 * 서비스 식별을 위한 모델 데이터
	 */
	public String model;
	
	/**
	 * 컨트롤러 제어를 위한 키
	 */
	private int key;
	
	/**
	 * 기본 페이지 요청 메서드
	 * @return 뷰 페이지
	 */
	@RequestMapping("/index.do")
	public String index() {
		
		return "index";
	}
	
	/**
	 * 게시물 작성 수를 계산하는 메서드
	 * @param category 검색 대상 카테고리
	 * @return 게시물 수
	 */
	public int getCount(String category) {
		
		return 10;
	}
	
	
}
