<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script src="../js/jquery-3.5.1.min.js"></script>
<script>
	$(function() {
		$('#dongbtn').on('click', function(){
			dongValue = $('#dong').val().trim();
			
			if(dongValue.length<1){
				alert("동 입력하시오")
				return false;
			}			
			
			$.ajax({
//				url : "/jquerypro/DongCheck",  html은 무조건 이렇게 써야하는데
				url : "<%= request.getContextPath() %>/DongCheck", //jsp는 이렇게해도 가능
				type : 'post', //get해도 service로 가고, post로 해도 service로 간다. 근데 post로 할땐 한글 깨져. 그래서 service메소드안에서 utf-8설정 해야함
				data : {"dong" : dongValue },
				success : function(res){
					code = "<table>";
					code += "<tr><td>우편번호</td>"
					code += "<td>주소</td>"
					code += "<td>번지</td></tr>"
					
					$.each(res, function(i,v){
						code += "<tr class='ziptr'><td>" + v.zipcode + "</td>"
						code += "<td>" + v.addr + "</td>"
						code += "<td>" + v.bunji +"</td></tr>"
					})
					code += "</table>";
					$('#result').html(code);
				},
				error : function(xhr){
					alert("상태 : " + xhr.status);
				},
				dataType : 'json'
				
			})
		})
		
		//선택
		$('#result').on('click', '.ziptr', function(){
			zip = $('td:eq(0)', this).text();
			addr = $('td:eq(1)', this).text();
			
			$('#zip', opener.document).val(zip);
			$('#addr', opener.document).val(addr);
			
			window.close();
		})
		//처음부터있었던 요소가 아니고, 이건 나중에 생긴 추가된 요소. 이건 다른방식으로 이벤트를 줘야해. 즉. 부모영역으로. ziptr보다 쭉쭉 올라가서 원래부터!!! 있었던 요소.on click해야함
		//즉 '#result'가 와야해. 근데 그거 대신 document와도돼. 왜냐면 제일먼저있었던게 다큐먼트니까
		//여기서 $(this)는 '.ziptr'
		//$('div p') 이렇게하면 div안에 있는 p태그잖아. 이걸 this로 쓸때는 $('td:eq(0)', this) 이렇게 써야돼. td가 this의 자식이지만 this는 ''안에 넣을수 없어서 이렇게 쓰는거
		//$('#zip', opener.document).val(zip); 얘도 마찬가지로 opener.document얘가 부모임
		
	})
</script>
<style>
	.ziptr:hover{
		background : lightblue;	
	}
</style>
</head>
<body>
	<div class= "box">
		<form action="">
			<h2>우편번호 검색</h2>
			찾고자 하는 동을 입력하세요.<br>
			<input type="text" id="dong">
			<input type="button" value="검색" id="dongbtn"><br><br>
			<div id="result"></div> 
		</form>
	</div>
</body>
</html>