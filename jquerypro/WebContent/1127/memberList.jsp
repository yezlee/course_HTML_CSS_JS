<%@page import="kr.or.ddit.member.vo.MemberVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//controller에서 저장된 결과를 가져온다.
List<MemberVO> list = (List<MemberVO>)request.getAttribute("listValue"); //List<MemberVO> 이걸로 형변환 해줘야해

%>

[
<%
//자바 최소한의 문장만 써야함. 비즈니스로직은 컨트롤러에 다 쓰고. 최소한만 쓰기위해서 포문을 쓰는거야
//	for(MemberVO vo : list){} 향상된 포문으로 쓰면 요렇게. 근데 지금 i가필요해서 이거 쓰면안돼. 그리고 성능?도 올드포문이 더 좋아
// out.print는 스크립트립? 암튼 이건내장되어있는 객체야.  

		
		
	for(int i=0; i<list.size(); i++){
		MemberVO vo = list.get(i);
		if(i>0) out.print(",");
		
%>		
		
		{
		"name" : "<%=vo.getMem_name() %>",
		"id" : "<%=vo.getMem_id() %>",
		"tel" : "<%=vo.getMem_hp() %>",
		"email" : "<%=vo.getMem_mail() %>"
		}
		
<%		
	}
%>	

]


