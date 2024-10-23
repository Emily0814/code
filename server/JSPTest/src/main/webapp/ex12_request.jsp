<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title></title>
	<link rel="stylesheet" href="http://bit.ly/3WJ5ilK">
	<style>
	
	</style>
</head>
<body>
	<!-- ex12_request.jsp -->
	<h1>요청 시 발생 정보들</h1>
	
	<p>요청 URL: <%= request.getRequestURI() %></p>
	<p>요청 서버 도메인: <%= request.getServerName() %></p>
	<p>요청 서버 포트: <%= request.getServerPort() %></p>
	<p>쿼리 문자열: <%= request.getQueryString() %></p>
	<p>요청 메소드 방식: <%= request.getMethod() %></p>
	
	<p>컨텍스트 경로: <%= request.getContextPath() %></p>
	
	<div>
		<a href="ex11_form.jsp">11번 문제</a>
		<a href="/jsp/ex11_form.jsp">11번 문제</a> <!-- Servers > modules > Path edit 하면 이 경로가 틀림 -->
		<a href="<%= request.getContextPath() %>/ex11_form.jsp">11번 문제</a>
	</div>
	
	<p>클라이언트 주소: <%= request.getRemoteAddr() %></p>
	<p>클라이언트: <%= request.getHeader("user-agent") %></p>
	
	<!-- Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 -->
	
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
	
	</script>
</body>
</html>