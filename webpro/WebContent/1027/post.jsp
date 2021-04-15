<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> JSP : Java Server Page</h1>
	HTML태그와 java소스를 동시에 기술할 수 있다.<br>
	java소스를 기술 할 때는 &lt;% %&gt; 요 사이에 기술한다.<br>
	클라이언트에서 전송하는 데이터를 받아서 처리한다. <br>
	request라는 내장객체를 이용해서 데이터를 받는다. <br>
	처리 후에 결과를 출력할 때는 out내장객체를 이용한다.<br>
	또는 &lt;%= %&gt; 요 사이에 자바로 처리된 결과를 출력한다.<br>
	<% /* 여기서 자바를 기술할 수 있다!*/
	
		//한글 인코딩
		request.setCharacterEncoding("UTF-8");
		
		String userName = request.getParameter("name");
		String userId = request.getParameter("id");
		String userPass = request.getParameter("pass");
		out.print("<span>" + userId + "</span>님 환영합니다.<br>");
	%>
	<!-- 위는 자바 안에서 아래는 자바 밖에서 -->
	<p><%= userName %>님 즐거운 하루 되세요.</p>  
</body>
</html>