<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	int pr = Integer.parseInt(request.getParameter("price")); //get파라미터는 원래 스트링임. 형변환 해줘야해 - price라서 int로 받고 싶은데 스트링이라 안돼.
	int su = Integer.parseInt(request.getParameter("qty"));
	
	int res = pr * su;
	
	%>
		
	수량 : <%= su %> <br>
	가격 : <%= pr %> <br>	
	금액 : <%= res %> 	
</body>
</html>