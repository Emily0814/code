package com.test.mybatis.persistence;

import static org.junit.Assert.*;

import java.sql.Connection;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.zaxxer.hikari.HikariDataSource;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class DBCPTest {

	@Autowired
	private DataSource dataSource; //jUnit은 의존주입이 안됨
	
	@Autowired
	private HikariDataSource hikariDataSource;
	
	@Test
	public void testConnection() {
		
		assertNotNull(dataSource);
	
		try {
			
			Connection conn = dataSource.getConnection();
			
			assertEquals(false, conn.isClosed());	//의도적으로 끊는다고 문제가 발생하지는 않으나 이제는 커넥션 종료는 우리가 관리하지 않음 > 갑자기 강사님이 close해도 된다고 하심
			
			conn.close(); //DBCP로 관리되는 Connection은 close() 호출해도 실제 close()가 되지 않고 커넥션풀로 반납되어 돌아간다.
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	@Test
	public void testHikariConnection() {
		
		assertNotNull(hikariDataSource);
		
		try {
			
			Connection conn = hikariDataSource.getConnection();
			
			assertEquals(false, conn.isClosed());
			
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
}
