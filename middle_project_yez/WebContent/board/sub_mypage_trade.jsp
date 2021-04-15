<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/sub_mypage.css">
</head>
<body>
	<div id="container">
		<!-- header 시작 -->
		<div class="header">
		
			<!-- navbar 시작 -->
			<div id="navbar">
				<div class="inner">
					<div class="logo">
						<h1><a href="">gifti-ILJO</a></h1>
					</div>
					<div class="search">
						<input type='text' class="search_area" id='search' name='search'>
					</div>
					<div class="right_menu">
						<p><a href="#">상품</a></p>
						<p><a href="#">고객센터</a></p>
					</div>			
				</div>
			</div>	
			<!-- navbar 끝 -->
			
			<!-- loginbar 시작 -->
			<div id="loginbar">
				<ul>
					<li class ="loginbar"><a href="#">홍길동님</a></li>
					<li class ="loginbar"><a href="#">마이페이지</a></li>
					<li class ="loginbar"><a href="#">상품등록</a></li>
					<li class ="loginbar"><a href="#">포인트충전</a></li>
					<li class ="loginbar"><a href="#">로그아웃</a></li>
				</ul>
			</div>
			<!-- loginbar 끝 -->
			
		</div>
		<!-- header 끝 -->
		
		<!-- loginbar 시작 -->
		<div id="loginbar">
			<ul>
				<li class ="loginbar"><a href="#">홍길동님</a></li>
				<li class ="loginbar"><a href="#">마이페이지</a></li>
				<li class ="loginbar"><a href="#">상품등록</a></li>
				<li class ="loginbar"><a href="#">포인트충전</a></li>
				<li class ="loginbar"><a href="#">로그아웃</a></li>
			</ul>
		</div>
		<!-- loginbar 끝 -->
			
			
		<div id="wrapper">
			<div class="sub_menu_nav">
				<ul>
					<li class="active"><a href="#">거래내역조회</a></li>
					<li><a href="#">포인트정보</a></li>
 					<li><a href="#">내정보수정</a></li>
				</ul>
			</div>
			
			<div class="sub_menu_wrapper">
				<div class="sub_title">
					<h3>포인트현황</h3>
					<hr>
					<div class="my_points">
						<table border="1">
							<tr>
								<th>총 충전 포인트</th>
								<th>총 사용 포인트</th>
								<th>사용 가능 포인트</th>
							</tr>
							<tr>
								<td>0 포인트</td>
								<td>0 포인트</td>
								<td>0 포인트</td>
							</tr>
						</table>
					</div>
					<div class="top_up_points">
						<h3>포인트충전 / 사용내역</h3>
						<div class="inquiry_period">
							<p>조회기간</p>
							<input type="button" class="btn" name="btn" value="1주일">
						</div>
					</div>
				</div>
				<div class="sub_content">	
			</div>
				
			</div>
		</div>
	
	
		<!-- footer 시작 -->
		<div id="footer">
			<p>Copyright ©gifti-INJO Rights Reserved.</p>
		</div>
		<!-- footer 끝 -->
			
	</div>
</body>
</html>