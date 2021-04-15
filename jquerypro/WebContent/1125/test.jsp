<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    // 여기서 만들어지는 데이터가 다 json 타입이어야해
	//클라이언트 쪽에서 요청시 또는 전송시, 데이터를 받아서 처리(crud)한다.
	String userName = request.getParameter("name");
	String userId = request.getParameter("id");
	String userTel = request.getParameter("tel");
	//데이터를 받았고 crud 처리하고싶은데 할게 없으니깐 그냥스킵

	
	
	//처리결과를 이용해서 응답데이터를 생성한다.
	
	//응답데이터의 형식은 *****json*******이다.
	

%>

{
	"name" : "<%= userName %>",
	"id" : "<%= userId %>",
	"tel" : "<%= userTel %>" 
} 

