<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	h1{
		color : darkgreen;}
	p{
		font-size : 1.2em;
		color : darkred;
		font-weight : bold;
	}
		
</style>
<script>
	function gogo(){
		history.forward(-1);
	}

</script>
</head>
<body>
	<h1>JSP : Java Server Page</h1>
	클라이언트에서 페이지 요청시 
	데이터를 받아서 서버내에서 실행하는 서버프로그램이다.<br>
	&lt;button type = "button" onclick ="location.href='test.jsp'">공지사항목록&lt;/button> <br>
	location.href를 통해서
	<%
		String s_code = request.getParameter("code");
		String s_name = request.getParameter("name"); 
		if(s_code != null && s_code.equals("1")){ 
		//이거 순서 중요!!!! 널이 아닐때 이렇게 하라는거지  s_code.equals("1") && s_code != null 순서가 이렇게 되면 안된다!!!!!!
		//
			out.print("<p>이름  : " + s_name + "</p>" );
		}else if(s_code != null && s_code.equals("2")){
			out.print("<p>이름  : " + s_name + "</p>" );
		}
	%>
<br><br>
<a href = "#" onclick = "gogo()">BACK</a>
</body>
</html>