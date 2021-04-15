<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/sub_product.css">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script>
/* 	 proboard = {};
$(function() {
	$('#result').on('click',function () {
		
	
		
		var form = $('#uploadFile')[0];

	    // Create an FormData object 
        var data = new FormData(form);

	   // disabled the submit button
        $("#result").prop("disabled", true);
		 
		/* proboard.title = $("#title").val();
		proboard.category = $("#category").val();
		proboard.brand = $("#brand").val();
		proboard.pname = $("#pname").val();
		proboard.rprice = $("#rprice").val();
		proboard.sprice = $("#sprice").val();
		proboard.cont = $("#cont").val(); */
		
		//var form = jQuery("#file2")[0];
      /*  /*  var formData = new FormData();
        formData.append("profileImgFile", $('#file2').prop('files')[0])  
       // formData.append("file", jQuery("#file2")[0].files[0]);
	
		
		$.ajax({
			url : "/CFMS/productRegistration.do",
			type : "post",
			data : data,
			contentType: false,

			processData: false,
			
			success : function (res) {
				alert("상태 : " + res.sw)
			},
			error : function(xhr) {
				alert("상태 : " + xhr.status)
			},
			dataType : "json"
			



		})
	});
});  */

</script>
</head>
<body>
	<div id="container">
		<div class="header">
		
			<!-- nav bar 시작 -->
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
			<!-- nav bar 끝 -->
			
			<!-- login bar 시작 -->
			<div id="loginbar">
				<ul>
					<li class ="loginbar"><a href="#">홍길동님</a></li>
					<li class ="loginbar"><a href="#">마이페이지</a></li>
					<li class ="loginbar"><a href="#">상품등록</a></li>
					<li class ="loginbar"><a href="#">포인트충전</a></li>
					<li class ="loginbar"><a href="#">로그아웃</a></li>
				</ul>
			</div>
			<!-- login bar 끝 -->
			
		</div>
		<!-- header 끝 -->
		<!-- 상품등록 시작 -->
		<div id="wrapper">
			<h1>상품등록</h1>
			<hr>
			<div id="">
			
				<form id="uploadFile" method="post" enctype="multipart/form-data" action="/CFMS/productRegistration.do">
				<label>제목을 입력하세요</label>
				<input id="title" name="title">
				<br><hr><br>
				<label>카테고리</label>
				<select id="category" name="category">
					<option value="" selected="selected">카테고리를 선택하세요</option>
				    <option value="베이커리/도넛">베이커리/도넛</option>
				    <option value="커피/음료" >커피/음료</option>
				    <option value="편의점">편의점</option>
				    <option value="피자/치킨">피자/치킨</option>
				    <option value="패스트푸드">패스트푸드</option>
				</select><br><hr><br>
				
				<label>브랜드</label>
				<select id="brand" name="brand">
					<option value="" selected="selected">브랜드를 선택하세요</option>
				    <option value="파리바게트">파리바게트</option>
				    <option value="스타벅스">스타벅스</option>
				    <option value="메가커피">메가커피</option>
				    <option value="GS25">GS25</option>
				    <option value="이마트24">이마트24</option>
				</select><br><hr><br>
				
				<label>상품명</label>
				<input type="text" id="pname" name="pname">
				<br><hr><br>
				<label>소비자가격</label>
				<input type="text" id="rprice" name="rprice">
				<br><hr><br>
				<label>판매가격</label>
				<input type="text" id="sprice" name="sprice">
				<br><hr><br>
				<label>내용</label>
				<textarea rows="10" cols="50" id="cont" name="cont"></textarea>
				<br><hr><br>
				

				<label>등록사진</label>
				<input type="file" name = file1>
				<br><hr><br>
				<label>기프티콘사진</label>
				<input type="file" name = file2>
				
				<br><hr><br>
				
				<!-- <button type="button"></button> -->
				<%-- <a href="<%=request.getContextPath()%>/uploadedFilesServlet.do">전송하기</a> --%>
				<%-- <button type="button" onclick="location.href='<%=request.getContextPath()%>/productRegistration.do'">상품등록</button> --%>
				<button type="submit" id="result">상품등록</button>
				</form>
			</div>
		</div>
	</div>
	

</body>
</html>