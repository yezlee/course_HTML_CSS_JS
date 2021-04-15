/**
 * 정규식 체크 해주는 js!!!!
 * 
 */
function idCheck(){
	
	//memberjoin.html에 있던 소스 여기로 갖다붙임
	idValue = $('#id').val().trim();
	
	//공백 체크
	if(idValue.length < 1) {
		alert("아이디를 입력하세요.");
		return false;
	}
	
	//아이디 길이 체크
	if(idValue.length <4 || idValue.length >12){
		alert("아이디길이는 4-12사이 ");
		return false;
		
	}
	
	//아이디 정규식 체크 - 소문자로 시작하고 대문자와 숫자로 조합가능
	idReg = /^[a-z][a-zA-Z0-9]{3,11}$/;  // 3,7 이럼 총 4-12로 이루어진길이 
	if(!(idReg.test(idValue))){
		alert("아이디 형식 오류");
		return false;
	}
	
	
	// 위에 다~~~ 걸쳐서 내려와서 다 괜찮고 맞으면 그때 true 리턴해 주는거
	return true;
}

function regCheck(){
	// 이름 정규식 - 공백, 길이, 정규식 체크해야함
	
	// 비밀번호  - 공백, 길이, 정규식 체크해야함
	
	// 전화번호  - 공백, 정규식 체크해야함
	
	// 이메일 - 공백, 정규식 체크해야함
	
	
	
	
	// 위에 다~~~ 걸쳐서 내려와서 다 괜찮고 맞으면 그때 true 리턴해 주는거
	return true;
	
}