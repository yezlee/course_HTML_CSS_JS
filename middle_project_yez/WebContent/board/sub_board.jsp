<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/sub_mypage.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 <script src="../js/jquery.serializejson.min.js"></script>
 <style>
 
 </style>
<script>
$(function(){

	$.ajax({
		  url : '/CFMS/CFMSBoardlist.do',
		  type : 'get',
		  dataType : 'json',
		  success : function(res){
			
			  code = '<div class="panel-group" id="accordion">';
			  $.each(res, function(i,v){
				 code +=' <div class="panel panel-default">';
				 code +=' <div class="panel-heading">';
				 code +='   <h4 class="panel-title">';
				 code +='      <a data-toggle="collapse" data-parent="#accordion" href="#collapse' + v.seq + '">' + v.title + '</a>';
				 code +='     </h4>';
				 code +='    </div>';
				 code +='    <div id="collapse'+ v.seq + '" class="panel-collapse collapse">';
				 code +='		        <div class="panel-body">';
				 code +='		          <p  class="p1">';
				 code +='			                      작성자 : <span class="nspan"> ' + v.writer + ' </span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
				 code +='			                      메일     : <span class="mspan"> ' + v.mail + ' </span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   ';   
				 code +='			                      조회수 : <span class="hspan">' + v.hit + ' </span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
				 code +='			                     작성날짜 : <span class="wspan">' + v.wdate + ' </span> &nbsp;&nbsp;&nbsp;';        
				 code +='			          </p>';
				 code +='			          <p class="p2">';
				 code +='			             <button type="button" idx="'+ v.seq + '" name="modify" class="action">수정</button>';
				 code +='			             <button type="button" idx="' + v.seq + '" name="delete" class="action">삭제</button>';
				 code +='			          </p>';
				 code +='			          <hr>';
               code +='			          <p><span class="cspan">';
               code +=			            v.cont ;
               code +='			          </span></p>';
               code +='			          <p>';
               code +='			            <textarea class="area" cols="60"></textarea>';
               code +='			            <button type="button" idx="'+ v.seq + '" class="action repb" name="reply">댓글등록</button>';
               code +='			          </p>';
              code +='			        </div>';
              code +='			      </div>';
              code +='			    </div>';
				  
			  })
			  code +='</div>';
			  
			  $('#notice .sub_content').html(code);
		  },
		  error : function(xhr){
			  alert("상태 : " + xhr.status)
		  }
	  })
	
	
})

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
		
		
		<!-- wrapper 시작 -->
		<div id="wrapper">
			<div class="sub_menu_nav">
				<ul>
					<li class="active"><a href="#notice">공지사항</a></li>
					<li><a href="#faq">FAQ</a></li>
				</ul>
			</div>
			
			<!-- 공지사항 시작  -->
			<div class="sub_menu_wrapper" id="notice" style="display:block;">
				<div class="sub_title">
					<h3>공지사항</h3>
					<div class="notice_board">
						<p style="font-size:20px; margin : 5px;">분류 제목 등록일</p>
					</div>
						<hr>
				</div>
				<div class="sub_content">	
				</div>
				
			</div>
			<!-- 공지사항 끝  -->
			
			<!-- FAQ 시작  -->
			<div class="sub_menu_wrapper" id="faq"  style="display:none;">
				<div class="sub_title">
					<h3>FAQ</h3>
					<hr>
					<div class="notice_board">	
					</div>
						<hr>
				</div>
				<div class="sub_content">	
				</div>
				
			</div>
			<!-- FAQ 끝  -->
			
						
		</div>
		<!-- wrapper 끝 -->	
		
		
		<!-- footer 시작 -->
		<div id="footer">
			<p>Copyright ©gifti-INJO Rights Reserved.</p>
		</div>
		<!-- footer 끝 -->
		
	</div>
</body>
</html>