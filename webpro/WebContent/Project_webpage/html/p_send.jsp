<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	body{
		width : 100%;
	}
	.regi{
		width : 30%;
		margin : auto;
		padding-top: 40px;
	}
	
	h1{
	    margin: 20px;
	    text-align : center;
	}
	table{
		border : 1px solid #333;		
		border-collapse : collapse;
	}
	td{
		width : 150px;
		height : 40px;
		padding : 5px;
		text-align : center;
		word-break: keep-all;
	}
	#cont{
		width : 250px; /*word-break: keep-all; 이거 해주면 넓이 정해줄 필요없음*/
	}

</style>
</head>
<body>
	<div class = "regi">
		<h1>회원가입</h1>
		<%
			//post는 한글 인코딩 해줘야함!!!!!!!!!!
			request.setCharacterEncoding("UTF-8");
		
			//이 안에선 자바 코드 기술 - 전송 시 입력한 값들을 가져온다.
			//가져올땐 request. ~ 으로 가져온다
			String userId = request.getParameter("id"); //("id") 이게 html form 태그에서 <name ="id"> 이거임!!!
			String userName = request.getParameter("name"); 
			String userPhonenum = request.getParameter("phonenum"); 
			String userEmail = request.getParameter("email"); 
			String website = request.getParameter("website");
			String gend = request.getParameter("gender"); //얘는 여러개가 필요없으니까 배열 안써줘도돼
			
		%>
		<table border = "1"> <!-- border = "1" 이거 없고 스타일에서 보더주면 바깥쪽 테두리만 생김. 이거하면 안쪽 테두리도 생김 -->
			<tr>
				<td>아이디</td>
				<td id = "cont"><%= userId %></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><%= userName %></td>			
			</tr>
			<tr>
				<td>핸드폰번호</td>
				<td><%= userPhonenum %></td>			
			</tr>
			<tr>
				<td>이메일</td>
				<td><%= userEmail %></td>			
			</tr>
			<tr>
				<td>홈페이지</td>
				<td><a href ="#"><%= website %></a></td>			
			</tr>
			<tr>
				<td>성별</td>
				<td><%= gend %></td>			
			</tr>
	
		</table>
	</div>
</body>
</html>