<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/sub_product.css">
</head>
<body>
	<div id="container">
		<div class="header">
			<div id="navbar">
				<div class="inner">
					<div class="logo">
						<h1><a href="">gifti-ILJO</a></h1>
					</div>
					<div class="search">
						<input type="text" class="search_area" id="search" name="search">
					</div>
					<div class="right_menu">
						<p><a href="#">상품</a></p>
						<p><a href="#">고객센터</a></p>
					</div>			
				</div>
			</div>	
<!-- // header -->
<!-- login bar -->
			<div id="loginbar">
				<ul>
					<li class ="loginbar"><a href="#">홍길동님</a></li>
					<li class ="loginbar"><a href="#">마이페이지</a></li>
					<li class ="loginbar"><a href="#">상품등록</a></li>
					<li class ="loginbar"><a href="#">포인트충전</a></li>
					<li class ="loginbar"><a href="#">로그아웃</a></li>
				</ul>
			</div>
		</div> <!-- header 끝 -->
		<div id="wrapper">
			<div class="sub_menu_wrapper">
				<div class="sub_title">
					<h1>커피/음료 > 스타벅스</h1>
					<hr>
				</div> <!-- sub_title끝 -->
			</div> <!-- sub_menu_wrapper -->
			
			<div class="middle_product">
				<div class="middle_product1">
					<img src="../images/coffee.jpg" alt="아메리카노">
				</div> <!-- middle_product 끝 -->
					<div class="middle_product_con">
						<p>스타벅스</p>
						<h2>카페아메리카노 Tall</h2>
						<strike class="strike">4100원</strike>
						<p class="sale">16% 3,400원</p>
						<input type="submit" value="기프티콘구매하기">
						<br><br>
					</div> <!-- middle_product_con 끝 -->
						<div class="middle_product_ex">
							<h3>상품설명</h3>
							<p>스타벅스 아메리카노 쿠폰입니다. 유효기간은 12월 31일까지입니다.</p>
						</div><!-- middle_product_ex 끝 -->
			</div> <!-- middle_product 끝 -->
						<hr>
			<div class="under_sales">
					<h2>판매자정보</h2>
				<div class="under_sales1">
					<p><img src="../images/usericon.png" alt="유저" width="50px;" height="50px" class="under_images">판매자 : 펭수</p>
					<p>판매 건수 <input type="text" class="sales" value="건수"></p>
					<p>신고 건수 <input type="text" class="sales" value="건수"></p>
						<div class="under_input">
						<input type="submit" value="신고하기" class="sos">
						</div>
				</div> <!-- footer_sales1 끝 -->
			</div> <!-- footer_sales 끝 -->
		</div> <!-- wrapper 끝 -->
		 
		<a href=""></a>
		
		
		<!-- footer -->
		<div id="footer">
			<p>Copyright ©gifti-INJO Rights Reserved.</p>
		</div>
	</div>
</body>
</html>