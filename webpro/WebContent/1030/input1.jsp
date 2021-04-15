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
	
	String userEmail = request.getParameter("email");
	
	String content = request.getParameter("area");
	content = content.replaceAll("\r\n", "<br>");
%>
<div>
	<p><span>이름 :</span> <%= userName %></p>
	<p><span>이메일 :</span> <%= userEmail %></p>
	<p><span>내용 :</span> <br><%= content %></p>
</div>	
	

</body>
</html>