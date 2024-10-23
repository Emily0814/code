<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>인증</title>
	<link rel="stylesheet" href="http://bit.ly/3WJ5ilK">
	<style>
		
	</style>
</head>
<body>
	<!-- login.jsp -->
	<%@ include file="/WEB-INF/views/inc/header.jsp" %>
	<div>
		<h2>로그인</h2>
	
		<form method="POST" action="/auth/auth/loginok.do">
		<table class="vertical content">
			<tr>
				<th>아이디</th>
				<td><input type="text" name="id" required class="short"></td>
			</tr>		
			<tr>
				<th>암호</th>
				<td><input type="password" name="pw" required class="short"></td>
			</tr>		
		</table>
		<div>
			<button class="in">로그인</button>
		</div>
		</form>
	
		<hr>
		
		<!-- 우리가 개발할 때 로그인을 자주하기 때문에 기본값으로 넣어줌 -->
		<form method="POST" action="/auth/auth/loginok.do"> 
			<input type="text" name="id" value="hong">
			<input type="password" name="pw" value="1111">
			<input type="submit" name="홍길동">
		</form>	
		<form method="POST" action="/auth/auth/loginok.do">
			<input type="text" name="id" value="dog">
			<input type="password" name="pw" value="1111">
			<input type="submit" name="강아지">
		</form>	
		<form method="POST" action="/auth/auth/loginok.do">
			<input type="text" name="id" value="cat">
			<input type="password" name="pw" value="1111">
			<input type="submit" name="고양이">
		</form>	
	
	
	</div>
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
	
	</script>
</body>
</html>