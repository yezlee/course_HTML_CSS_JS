<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/sub_mypagehs.css">
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
		</div> 
		<!-- header 끝 -->
		
		<!-- wrapper 시작 -->
		<div id="wrapper">
			<div class="main">
    			<input class="tab" id="tab1" type="radio" name="tabs" checked> 
    			<label class="lb" for="tab1">거래내역조회</label>

    			<input class="tab" id="tab2" type="radio" name="tabs">
    			<label class="lb" for="tab2">포인트정보</label>
    			
    			<input class="tab" id="tab3" type="radio" name="tabs">
    			<label class="lb" for="tab3">내정보수정</label>
				
				<!-- 섹션1 시작 -->
   				<section id="content1">
       				<h1>거래내역조회</h1>
       			<div class="deal">
       					<p class="pr">상품명/브랜드명<input id="tt" type="text"></p><br>
       					<p class="pr">조회기간
       					<input class="term" type="submit" value="1주일">
       					<input class="term" type="submit" value="1개월">
       					<input class="term" type="submit" value="3개월">
       					<input type="date"> ~
       					<input type="date" >
       					<input id="search" type="submit" value="조회">
       					</p>
       			</div> <!-- deal 끝 -->
				<div>
					<p class="ct">주문일시</p>
					<p class="ct">상품명</p>
					<p class="ct">주문번호</p>
					<p class="ct">결제금액</p>
					<p class="ct">진행상태</p>
					<hr>
					<br>
					<hr>
				</div>
    			</section>
				<!-- 섹션1 끝 -->
				
				<!-- 섹션2 시작 -->
    			<section id="content2">
        		<h1>포인트현황</h1>
        		<hr>
        		<p class="po">총 충전 포인트</p>
        		<p class="po">총 사용 포인트</p>
        		<p class="po">사용 가능 포인트</p>
        		
        		<hr>
        		<br>
        		<h1>포인트 / 사용내역</h1>
        		<div class="deal">
        				<p class="pr">조회기간</p>
       					<input class="term" type="submit" value="1주일">
       					<input class="term" type="submit" value="1개월">
       					<input class="term" type="submit" value="3개월">
       					<input type="date"> ~
       					<input type="date" >
       					<input id="search" type="submit" value="조회">
       			</div> <!-- deal 끝 -->
       					<p class="po1">일시</p>
       					<p class="po1">구분</p>
       					<p class="po1">금액</p>
       					<hr>
    			</section>
				<!-- 섹션2 끝 -->
    			
    			<!-- 섹션3 시작 -->
    			<section id="content3">
        		<h2>회원정보변경</h2>
        		<hr>
        		<label class="label">이름</label> <input type="text"><hr>
        		<label class="label">아이디</label> <input type="text"><hr>
        		<label class="label">비밀번호 변경</label> <input type="password"><hr>
        		<label class="label">핸드폰번호 변경</label> <input type="tel"><hr>
        		<div id="underdiv">
        		탈퇴를 원하시면 회원탈퇴 버튼을 눌러주세요
        		<input id="exit"type="submit" value="탈퇴하기">
        		</div>
    			</section>
    			<!-- 섹션3 끝 -->
			</div>	<!-- main 끝 -->
			
			
		</div>
		<!-- wrapper 끝 -->	
		 </div>	
</body>
</html>