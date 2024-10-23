<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title></title>
	<script src="https://kit.fontawesome.com/fac7e60736.js" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="http://bit.ly/3WJ5ilK">
	<style>
	td{
		padding: 7px 7px 7px 10px;
	}
	</style>
</head>
<body>
	<!-- ex11_form.jsp -->
	<h1>버튼 만들기</h1>
	
	<form method="POST" action="ex11_ok.jsp">
	<table class="vertical">
		<tr>
			<th>너비(px)</th>
			<td><input type="number" min="20" max="300" step="10" name="width" value="120"  style="width: 100px"></td>
		</tr>
		<tr>
			<th>높이(px)</th>
			<td><input type="number" min="10" max="200" step="10" name="height" value="30" style="width: 100px"></td>
		</tr>
		<tr>
			<th>텍스트</th>
			<td><input type="text" name="txt" value="Button" style="width: 100px"></td>
		</tr>
		<tr>
			<th>배경색</th>
			<td><input type="color" name="bgcolor" value="#ffd700"></td>
		</tr>
		<tr>
			<th>글자색</th>
			<td><input type="color" name="fontcolor" value="#ffd700"></td>
		</tr>
		<tr>
			<th>글자 크기(px)</th>
			<td><input type="number" name="fontsize" value="16" style="width: 47px"></td>
		</tr>
		<tr>
			<th>버튼 개수(ea)</th>
			<td><input type="number" min="1" max="30"  name="count" value="1"></td>
		</tr>
		<tr>
			<th>버튼 간격</th>
			<td>
			<div>
			좌우 간격 : <input type="range" min="0" max="50" value="0" name="leftright" >
			</div>
			<div>
			상하 간격 : <input type="range"  min="0" max="50" value="0" name="topbottom">
			</div>
			</td>
		</tr>
		<tr>
			<th>아이콘</th>
			<td>
				<input type="radio" checked> 없음
				<input type="radio"> <i class="fa-solid fa-house"></i>
				<input type="radio"> <i class="fa-solid fa-image"></i>
				<input type="radio"> <i class="fa-solid fa-location-dot"></i>
				<input type="radio"> <i class="fa-brands fa-github"></i>
				<input type="radio"> <i class="fa-solid fa-paperclip"></i>
			</td>
		</tr>
		<tr>
			<th>테두리</th>
			<td>
				<select name="se1">
					<option value="a1">감추기</option>
					<option value="a2">보이기</option>
				</select>
			</td>
		</tr>
	</table>
	<div>
		<input type="submit" value="만들기" name="btn">
	</div>
	</form>
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
	
	</script>
</body>
</html>