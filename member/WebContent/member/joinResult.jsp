<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//여기밖에다가 json적는거야 "sw" : "가입성공"  이것들

	String id = (String)request.getAttribute("resId"); //컨트롤러에서 "resId"(키값)과 이름이 같아야해
	if(id!=null){
%>

	{ "sw" : "가입성공" }
		
<%	}else{	%>
	
	{ "sw" : "가입실패" }

<%		
	}
%>