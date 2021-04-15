<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	div{
		padding : 10px 0 0 10px;
	}
	p{
		color : #333;
		font-size: 15px;
   		margin: 5px;
	}
	span{
		font-weight: bold;
	}
</style>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String userName = request.getParameter("name");
	String userAddr = request.getParameter("addr");
	String userEmail = request.getParameter("email");		
	String userGender = request.getParameter("gender");
%>

<div>
	<p><span>이름 :</span> <%= userName %></p>
	<p><span>주소 :</span> <%= userAddr %></p>
	<p><span>이메일 :</span> <%= userEmail %></p>
	<p><span>성별 :</span> <%= userGender %></p>	
</div>	
</body>
</html>