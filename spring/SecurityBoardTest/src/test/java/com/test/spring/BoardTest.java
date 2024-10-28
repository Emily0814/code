package com.test.spring;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.test.spring.dao.BoardDAO;
import com.test.spring.dto.BoardDTO;
import com.test.spring.mapper.BoardMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class BoardTest {
	
//	@Autowired
//	private BoardMapper mapper;
	
	@Autowired
	private BoardDAO dao;
	
//	@Test
//	@Ignore
//	public void testMapper() {
//		
//		String name = mapper.getName("dog");
//		System.out.println(name);
//		
//	}
	
	@Test
	public void testAdd() {
		
		assertNotNull(dao);
		
//		BoardDTO dto = new BoardDTO();
//		
//		dto.setMemberid("dog");
//		dto.setSubject("단위 테스트");
//		dto.setContent("내용");
//		
//		int result = dao.add(dto);
//		
//		assertEquals(1, result);
		
	}
	
	
	
}









