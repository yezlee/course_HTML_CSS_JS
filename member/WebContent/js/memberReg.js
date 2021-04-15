/**
 * 정규식 체크 해주는 js!!!!
 * 
 */
//function idCheck(){
//	
//	//memberjoin.html에 있던 소스 여기로 갖다붙임
//	idValue = $('#id').val().trim();
//	
//	//공백 체크
//	if(idValue.length < 1) {
//		alert("아이디를 입력하세요.");
//		return false;
//	}
//	
//	//아이디 길이 체크
//	if(idValue.length <4 || idValue.length >12){
//		alert("아이디길이는 4-12사이 ");
//		return false;		
//	}
//	
//	//아이디 정규식 체크 - 소문자로 시작하고 대문자와 숫자로 조합가능
//	idReg = /^[a-z][a-zA-Z0-9]{3,11}$/;  // 3,7 이럼 총 4-12로 이루어진길이 
//	if(!(idReg.test(idValue))){
//		alert("아이디 형식 오류");
//		return false;
//	}
//	
//	
//	// 위에 다~~~ 걸쳐서 내려와서 다 괜찮고 맞으면 그때 true 리턴해 주는거
//	return true;
//}
//function regCheck(){
//	// 이름 정규식 - 공백, 길이, 정규식 체크해야함
//	nameValue =$('#name').val().trim();
//	
//	if(nameValue.length < 1) {
//		$('#name').css('border', '3px solid #bd0000');
//		$('#spanName').html("이름을 입력하세요.").css('color', '#bd0000').css('font-size','12px');
//		
////		alert("이름을 입력하세요.");
////	    please enter a valid name to continue
//		return false;
//	}
//	if(nameValue.length < 2 || nameValue.length > 5){
//		alert("이름 2자리에서 5자리 사이로 입력");
//		return false;		
//	}
//	nameReg = /^[가-힣]{2,4}$/;
//	if(!(nameReg.test(nameValue))){ //true이면 어차피 아래로 가니까 false냐고 조건걸어
//		alert("이름 형식 오류입니다.")
//		return false; //false면 함수를 종료한다.
//	}
//	
//	
//	
//	// 비밀번호  - 공백, 길이, 정규식 체크해야함
//	passValue =$('#pwd').val().trim();
//	
//	if(passValue.length < 1) {
//		alert("비밀번호 입력하세요.");
//		return false;
//	}
//	if(passValue.length < 8 || passValue.length > 12){
//		alert("비밀번호 8자리에서 12자리 사이로 입력");
//		return false;		
//	}
//	passReg = /^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&]).{8,12}/;
//	if(!(passReg.test(passValue))){
//		alert("비밀번호 형식 오류입니다. 영어소문자, 대문자, 숫자, 특수문자가 들어가야합니다.")
//		return false;
//	}
//	
//	
//	
//	// 전화번호  - 공백, 정규식 체크해야함
//	hpValue =$('#hp').val().trim();
//	
//	if(hpValue.length < 1) {
//		alert("전화번호를 입력하세요.");
//		return false;
//	}
//	hpReg = /\d{3}-\d{4}-\d{4}/;
//	if(!(hpReg.test(hpValue))){
//		alert("전화번호 형식 오류입니다.")
//		return false;
//	}
//	
//	
//	// 이메일 - 공백, 정규식 체크해야함
//	emailValue =$('#email').val().trim();
//	
//	if(emailValue.length < 1) {
//		alert("전화번호를 입력하세요.");
//		return false;
//	}
//	mailReg = /^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z]+){1,2}$/
//		if(!(mailReg.test(emailValue))){
//			alert("이메일 형식 오류입니다.")
//			return false;
//		}
//	
//	
//	//생년월일 - 10살이상(2010년생이상)부터 가입가능
//	
//	
//	
//	
//	// 위에 다~~~ 걸쳐서 내려와서 다 괜찮고 맞으면 그때 true 리턴해 주는거
//	return true;
//	
//}
function checkVal(val, type) {

	//	// 이름 정규식 - 공백, 길이, 정규식 체크해야함
	//	nameValue =$('#name').val().trim();
	//	
	//	if(nameValue.length < 1) {
	//		$('#name').css('border', '3px solid #bd0000');
	//		$('#spanName').html("이름을 입력하세요.").css('color', '#bd0000').css('font-size','12px');
	//		
	////		alert("이름을 입력하세요.");
	////	    please enter a valid name to continue
	//		return false;
	//	}
	//	if(nameValue.length < 2 || nameValue.length > 5){
	//		alert("이름 2자리에서 5자리 사이로 입력");
	//		return false;		
	//	}
	//	nameReg = /^[가-힣]{2,4}$/;
	//	if(!(nameReg.test(nameValue))){ //true이면 어차피 아래로 가니까 false냐고 조건걸어
	//		alert("이름 형식 오류입니다.")
	//		return false; //false면 함수를 종료한다.
	//	}
	//	

	if (type == 'name') {

		if (val.length < 1) {

			document.getElementById('spanName').innerHTML = "이름을 입력하세요.";
			$('#spanName').css('color', '#bd0000').css('font-size', '12px');
			return;
		}

		if (val.length < 2 || val.length > 5) {

			document.getElementById('spanName').innerHTML = "이름 길이 2~5사이로 입력하세요.";
			$('#spanName').css('color', '#bd0000').css('font-size', '12px');
			return;
		}

		regName = /^[가-힣]{2,5}$/;

		if (!(regName.test(val))) {

			document.getElementById('spanName').innerHTML = "이름 형식오류입니다. 한글 입력 바랍니다";
			$('#spanName').css('color', '#bd0000').css('font-size', '12px');
			return;

		} else {
			document.getElementById('spanName').innerHTML = "사용가능";
			$('#spanName').css('color', '#0c6d00').css('font-size', '12px');
		}

		
		//-------------------------------비밀번호------------------------------

	} else if (type == 'pwd') {

		if (val.length < 1) {

			document.getElementById('spanPwd').innerHTML = "비밀번호를 입력하세요.";
			$('#spanPwd').css('color', '#bd0000').css('font-size', '12px');
			return;
		}

		//정규식에 자릿수까지 다들어가있어서 이거 한방이면 될듯  저 정규식이 되는지 모르겠지만 일단 이것만있음되겄따 ㅇㅋ
		regPwd = /^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&]).{8,12}/;
		if (!(regPwd.test(val))) {
			document.getElementById('spanPwd').innerHTML = "영문대소문자 숫자 특수문자가 하나이상씩 포함되어야하며 8~12로해";
			$('#spanPwd').css('color', '#bd0000').css('font-size', '12px');
			return;
		} else {
			document.getElementById('spanPwd').innerHTML = "사용가능";
			$('#spanPwd').css('color', '#0c6d00').css('font-size', '12px');
		}

		
//		if(passValue.length < 1) {
//			alert("비밀번호 입력하세요.");
//			return false;
//		}
//		if(passValue.length < 8 || passValue.length > 12){
//			alert("비밀번호 8자리에서 12자리 사이로 입력");
//			return false;		
//		}
//		passReg = /^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&]).{8,12}/;
//		if(!(passReg.test(passValue))){
//			alert("비밀번호 형식 오류입니다. 영어소문자, 대문자, 숫자, 특수문자가 들어가야합니다.")
//			return false;
//		}
		
		
		
		
		
		//------------------------------생년월일------------------------------

	} else if (type == 'bir') {

		var date = new Date();
		var year = date.getFullYear();
		var month = (date.getMonth() + 1);
		var day = date.getDate();
		if (month < 10)
			month = '0' + month;
		if (day < 10)
			day = '0' + day;
		var monthDay = month + day;
		val = val.replace('-', '').replace('-', '');
		var birthday = val.substr(0, 4);
		var birthdaymd = val.substr(4, 4);
		var age = monthDay < birthdaymd ? year - birthday - 1 : year - birthday;

		if (age >= 10) {
			document.getElementById('birspan').innerHTML = "가입가능";
			$('#birspan').css('color', '#0c6d00').css('font-size', '12px');
			return;
		} else {
			document.getElementById('birspan').innerHTML = "10살이상만 가입 가능합니다.";
			$('#birspan').css('color', '#bd0000').css('font-size', '12px');
			return;
		}

		
		
		//------------------------------핸드폰번호------------------------------

	} else if (type == 'hp') {

		//		var regExp = /\d{3}-\d{4}-\d{4}/; 
		var regExp = /(01[016789])-([1-9]{1}[0-9]{2,3})-([0-9]{4})$/;

		if (regExp.test(val)) {
			document.getElementById('telspan').innerHTML = "사용가능";
			$('#telspan').css('color', '#0c6d00').css('font-size', '12px');
			return;
		} else {
			document.getElementById('telspan').innerHTML = "전화번호 형식이 잘못되었습니다.";
			$('#telspan').css('color', '#bd0000').css('font-size', '12px');
			return;
		}

		
		//------------------------------이메일------------------------------		

	} else if (type == 'email') {
		var regExp = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;

		if (regExp.test(val)) {
			document.getElementById('emailspan').innerHTML = "사용가능";
			$('#emailspan').css('color', '#0c6d00').css('font-size', '12px');
			return;
		} else {
			document.getElementById('emailspan').innerHTML = "이메일 형식이 잘못되었습니다.";
			$('#emailspan').css('color', '#bd0000').css('font-size', '12px');
			return;
		}

		
		//------------------------------우편번호------------------------------		

	} else if (type == 'zip') {
		var regExp = /^\d{3}-\d{3}/;

		if (regExp.test(val)) {
			document.getElementById('zipspan').innerHTML = "사용가능";
			$('#zipspan').css('color', '#0c6d00').css('font-size', '12px');
			return;
		} else {
			document.getElementById('zipspan').innerHTML = "우편번호 형식이 잘못되었습니다.";
			$('#zipspan').css('color', '#bd0000').css('font-size', '12px');
			return;
		}
		
		
		
		//------------------------------주소1------------------------------		
		
	}
//else if (type == 'addr') {
//		if (val != '' && val != null) {
//			document.getElementById('addr1span').innerHTML = "주소 입력완료";
//			$('#addr1span').css('color', '#bd0000').css('font-size', '12px');
//			return;
//		} else {
//			document.getElementById('addr1span').innerHTML = "주소를 입력해주세요";
//			$('#addr1span').css('color', '#bd0000').css('font-size', '12px');
//			return;
//		}
//		
//		
//		
//		//------------------------------주소2------------------------------		
//
//	} else if (type == 'addr2') {
//		if (val != '' && val != null) {
//			document.getElementById('addr2span').innerHTML = "상세주소 입력완료";
//			$('#addr2span').css('color', '#bd0000').css('font-size', '12px');
//			return;
//		} else {
//			document.getElementById('addr2span').innerHTML = "상세주소를 입력해주세요";
//			$('#addr2span').css('color', '#bd0000').css('font-size', '12px');
//			return;
//		}
//	}

}
