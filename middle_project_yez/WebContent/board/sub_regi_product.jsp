<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script>
$(function() {
$('#charge_kakao').on('click',function () {
	
	
	// getter
    var IMP = window.IMP;
    IMP.init('imp89298381');
    var money = $('input[name="cp_item"]:checked').val();
    console.log(money);
    buyerName = "홍길동";
    buyerId = "test"; 
    IMP.request_pay({
        pg: 'kakao',
        merchant_uid: 'merchant_' + new Date().getTime(),

        name: '주문명 : 주문명 설정',
        amount: money,
        buyer_email: 'iamport@siot.do',
        buyer_name: '구매자이름',
        buyer_tel: '010-2993-7927',
        buyer_addr: '인천광역시 부평구',
        buyer_postcode: '123-456'
    }, function (rsp) {
        console.log(rsp);
        if (rsp.success) {
            var msg = '결제가 완료되었습니다.';
            msg += '고유ID : ' + rsp.imp_uid;
            msg += '상점 거래ID : ' + rsp.merchant_uid;
            msg += '결제 금액 : ' + rsp.paid_amount;
            msg += '카드 승인번호 : ' + rsp.apply_num;
            $.ajax({
                type: "POST", 
                url: "/CFMS/chargePoint.do", //충전 금액값을 보낼 url 설정
                data: {
                	"id" : buyerId,
                	"name" : buyerName,
                    "money" : money
                },
                success : function (res) {
					alert(res.sw);
				},
				error : function (xhr) {
					alert("실패 : " + xhr.status)
				},
				dataType : "json"
            });
        } else {
            var msg = '결제에 실패하였습니다.';
            msg += '에러내용 : ' + rsp.error_msg;
        }
        alert(msg);
        //document.location.href="/user/mypage/home"; //alert창 확인 후 이동할 url 설정
    }); 
});
});
</script>

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
						<input type='text' class="search_area" id='search' name='search'>
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
	
		<div id="wrapper">
			<div class="sub_title">
				<h3>포인트충전</h3>
				<hr>
			</div>
			<div class="sub_content">
				<img src="../images/kakaopay.png" alt="Kakao Pay" style ="width : 100px;">
				<p>결제요청 메시지 전송을 위해 아래 정보를 입력해주세요.</p>
				 <div class="card-body bg-white mt-0 shadow">
	                <p style="font-weight: bold">카카오페이 현재 사용가능</p>
	                <label class="box-radio-input">
	                	<input type="radio" name="cp_item" value="5000">
	                	<span>5,000원</span>
	                </label>
	                <label class="box-radio-input">
		                <input type="radio" name="cp_item" value="10000">
		                <span>10,000원</span>
	                </label>
		                <label class="box-radio-input">
		                <input type="radio" name="cp_item" value="15000">
	                <span>15,000원</span>
	                </label>
		                <label class="box-radio-input">
		                <input type="radio" name="cp_item" value="20000">
	                <span>20,000원</span>
	                </label>
		                <label class="box-radio-input">
		                <input type="radio" name="cp_item" value="25000">
	                <span>25,000원</span>
	                </label>
		                <label class="box-radio-input">
		                <input type="radio" name="cp_item" value="30000">
	                <span>30,000원</span>
	                </label>
		                <label class="box-radio-input">
		                <input type="radio" name="cp_item" value="35000">
	                <span>35,000원</span>
	                </label>
		                <label class="box-radio-input">
		                <input type="radio" name="cp_item" value="40000">
	                <span>40,000원</span>
	                </label>
		                <label class="box-radio-input">
		                <input type="radio" name="cp_item" value="50000">
	                <span>50,000원</span>
	                </label>
	                <p style="color: #ac2925; margin-top: 30px">카카오페이의 최소 충전금액은 5,000원이며 <br/>최대 충전금액은 50,000원 입니다.</p>
	                <button type="button" class="btn btn-lg btn-block  btn-custom" id="charge_kakao">충 전 하 기</button>
 				</div>	
			</div>
		</div>
	</div>
</body>
</html>