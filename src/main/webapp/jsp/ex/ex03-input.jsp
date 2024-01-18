<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<form method="post" action="/jsp/ex/ex03.jsp">
		<label>닉네임 : </label><input type="text" name="nickname">
		
		<!-- 셀렉트 박스 -->
		<h3>좋아하는 과일 선택</h3>
		<select name="fruit">
			<option value="banana">바나나</option>
			<option value="peach">복숭아</option>
			<option value="strawberry">딸기</option>
		</select>
		
		<!-- 라디오버튼 -->
		
		<!-- 체크박스 -->
	
		<button type="submit">입력</button>
		
	</form>
	
</body>
</html>