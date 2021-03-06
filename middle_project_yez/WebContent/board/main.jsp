<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>

<html>
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/main_login.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<script>
	var modal = document.getElementById('id01');

	window.onclick = function(event) {
		if (event.target == modal) {
			modal.style.display = "none";
		}
	}
</script>
<title>Insert title here</title>
</head>
<body>
	<div id="container">
		<div id="content_wrap">
		
			<!-- header 시작 -->
			<div class="header">
			
				<!-- navbar 시작 -->
				<div id="navbar">
					<div class="inner">
						<div class="search">
							<input type='text' class="search_area" id='search' name='search' placeholder="원하시는 상품을 검색해보세요.">
						</div>
						<div class="logo">
							<h1><a href="">gifti-ILJO</a></h1>
						</div>
						<div class="right_menu">
							<p><a href="#">상품</a></p>
							<p><a href="#">고객센터</a></p>
						</div>			
					</div>
				</div>	
				<!-- navbar 끝 -->
				
				<!-- loginbar before 시작 -->
				<div class="loginbar_wrap before">
					<ul>
						<li class ="loginbar"><a data-toggle="modal" href="#id01">로그인</a></li>
						<li class ="loginbar"><a href="#" class="bar">회원가입</a></li>
					</ul>
				</div>
				<!-- loginbar before 끝 -->
				
				<!-- loginbar after 시작 -->
				<div class="loginbar_wrap after" style="display:none;">
					<ul>
						<li class ="loginbar"><a href="#">홍길동님</a></li>
						<li class ="loginbar"><a href="#" class="bar">마이페이지</a></li>
						<li class ="loginbar"><a href="#" class="bar">상품등록</a></li>
						<li class ="loginbar"><a href="#" class="bar">포인트충전</a></li>
						<li class ="loginbar"><a href="#" class="bar">로그아웃</a></li>
					</ul>
				</div>
				<!-- loginbar after 끝 -->
				
			</div>
			<!-- header 끝 -->
			
			
			<!-- body 시작 -->
			<div class="body">
			
				<!-- main_slide 시작 -->
				<div class="main_slide">
					<a href=""><img src="../images/123.jpg" alt=""></a>
				</div>
				<!-- main_slide 끝 -->
				
				<!-- all_products 시작 -->
				<div class="all_products">
				
					<div class="all_category">
						<h3>카테고리</h3>
							<ul>
								<li class="category">
									<input onchange="category()" type="checkbox" name="Category[]" value="베이커리/도넛" id="A1">
									<label for="A1">베이커리/도넛</label>
								</li>
								<li class="category">
									<input onchange="category()" type="checkbox" name="Category[]" value="베이커리/도넛" id="A2">
									<label for="A2">커피/음료</label>
								</li>
								<li class="category">
									<input onchange="category()" type="checkbox" name="Category[]" value="베이커리/도넛" id="A3">
									<label for="A3">편의점</label>
								</li>
								<li class="category">
									<input onchange="category()" type="checkbox" name="Category[]" value="베이커리/도넛" id="A4">
									<label for="A4">피자/치킨</label>
								</li>
								<li class="category">
									<input onchange="category()" type="checkbox" name="Category[]" value="베이커리/도넛" id="A5">
									<label for="A5">패스트푸드</label>
								</li>
							</ul>
					</div>
					<div class="all_brand">
					<h3>브랜드</h3>
						<ul>
							<li class="brand">
								<input onchange="category()" type="checkbox" name="Category[]" value="베이커리/도넛" id="B1">
								<label for="B1">파리바게트</label>
							</li>
							<li class="brand">
								<input onchange="category()" type="checkbox" name="Category[]" value="베이커리/도넛" id="B2">
								<label for="B2">던킨</label>
							</li>
							<li class="brand">
								<input onchange="category()" type="checkbox" name="Category[]" value="베이커리/도넛" id="B3">
								<label for="B3">스타벅스</label>
							</li>
							<li class="brand">
								<input onchange="category()" type="checkbox" name="Category[]" value="베이커리/도넛" id="B4">
								<label for="B4">메가커피</label>
							</li>
							<li class="brand">
								<input onchange="category()" type="checkbox" name="Category[]" value="베이커리/도넛" id="B5">
								<label for="B5">GS25</label>
							</li>
							<li class="brand">
								<input onchange="category()" type="checkbox" name="Category[]" value="베이커리/도넛" id="B6">
								<label for="B6">이마트24</label>
							</li>
							<li class="brand">
								<input onchange="category()" type="checkbox" name="Category[]" value="베이커리/도넛" id="B7">
								<label for="B7">도미노피자</label>
							</li>
							<li class="brand">
								<input onchange="category()" type="checkbox" name="Category[]" value="베이커리/도넛" id="B8">
								<label for="B8">BBQ</label>
							</li>
							<li class="brand">
								<input onchange="category()" type="checkbox" name="Category[]" value="베이커리/도넛" id="B9">
								<label for="B9">맥도날드</label>
							</li>
							<li class="brand">
								<input onchange="category()" type="checkbox" name="Category[]" value="베이커리/도넛" id="B10">
								<label for="B10">서브웨이</label>
							</li>
						</ul>
					</div>
					<div class="all_price">
					<h3>가격</h3>
						<ul>
							<li class="price">
								<input onchange="category()" type="checkbox" name="Category[]" value="베이커리/도넛" id="C1">
								<label for="C1">3천원이하</label>
							</li>
							<li class="price">
								<input onchange="category()" type="checkbox" name="Category[]" value="베이커리/도넛" id="C2">
								<label for="C2">3천-5천원</label>
							</li>
							<li class="price">
								<input onchange="category()" type="checkbox" name="Category[]" value="베이커리/도넛" id="C3">
								<label for="C3">5천-1만원</label>
							</li>
							<li class="price">
								<input onchange="category()" type="checkbox" name="Category[]" value="베이커리/도넛" id="C4">
								<label for="C4">1만-3만원</label>
							</li>
							<li class="price">
								<input onchange="category()" type="checkbox" name="Category[]" value="베이커리/도넛" id="C5">
								<label for="C5">3만원이상</label>
							</li>
						</ul>
					</div>
				</div>
				<!-- all_products 끝 -->
				
			</div>
			<!-- body 끝 -->
			
		</div>
		<!-- content_wrap 끝 -->
		
		
		<!-- footer 시작 -->
		<div id="footer">
			<p>Copyright ©gifti-ILJO Rights Reserved.</p>
		</div>
		<!-- footer 끝 -->
	</div>
	<!-- container 끝 -->
	

	<!-- start modal	 -->
	<div id="id01" class="modal">
		<form class="modal-content animate" action="<%=request.getContextPath()%>%>/SessionLoginServlet.do" method="post">
			<div class="imgcontainer">
				<span onclick="document.getElementById('id01').style.display='none'"
					class="close" title="Close Modal">&times;</span> <img
					src="../images/logo.jpg" alt="Avatar" class="avatar">
			</div>

			<div class="container">
				<label for="uname"><b>아이디</b></label> <input type="text"
					placeholder="아이디 입력" name="uname" required> <label
					for="psw"><b>비밀번호</b></label> <input type="password"
					placeholder="비밀번호 입력" name="psw" required>

				<button type="submit">로그인</button>
				<label> <input type="checkbox" checked="checked"
					name="remember"> 아이디기억하기
				</label>
			</div>

			<div class="container" style="background-color: #f1f1f1">
				<button type="button"
					onclick="document.getElementById('id01').style.display='none'"
					class="cancelbtn">취소</button>
				<a href="#">아이디찾기 </a>&nbsp;<a href="#">비밀번호찾기</a>
			</div>
		</form>
	</div>
	<!-- end modal -->
</body>
</html>