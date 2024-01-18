<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test03</title>
</head>
<body>
	<%
		int weight = Integer.parseInt(request.getParameter("weight"));
		int height = Integer.parseInt(request.getParameter("height"));
		double bmi = weight / ((height / 100.0) * (height / 100.0));
		String state = "미정";
		if(bmi <= 20){
			state ="저체중";
		} else if(bmi >= 21 && bmi <= 25){
			state = "정상";
		} else if(bmi >= 26 && bmi <= 30){
			state = "과체중";
		} else {
			state = "비만";
		}
	%>
	<h2>BMI 측정 결과</h2>
	<div>당신은 <%= state %>입니다.</div>
	<div>BMI 수치 : <%= bmi %></div>
	
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
	
	
</body>
</html>