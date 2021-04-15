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
	//post타입이라서 해주는거
	request.setCharacterEncoding("UTF-8"); 
	
	//이름
	String userName = request.getParameter("name");
	
	//내용
	String content = request.getParameter("area");		
	content = content.replaceAll("\r\n", "<br>");/*입력시 엔터(\r\n) 출력을(키가 먹히게 하기) 위해서 <br>태그로 변환한다.*/
//	content = content.replaceAll("\r", "").replaceAll("\n", "<br>"); 만약에 위에서 한게 잘 안먹히면 이렇게 두번 해줘야함
	
	//과일
	String sel[] = request.getParameterValues("fruit");
	
	String res = "";
	for(int i = 0; i < sel.length; i++){
		res += sel[i] + ", ";
	}
	
	//마지막 컴마 제거
	int idx = res.lastIndexOf(",");
	res = res.substring(0, idx);
	//최종적으로 res에는 마지막 콤마가 빠진게 나오는거지	
	
%>
	이름: <%= userName %><br>
	내용: <br> 
	<%= content %>
	<br>
	좋아하는 과일 : <%= res %>	
	 
</body>
</html>