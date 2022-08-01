<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="member.MemberDTO" %>
<%
String userid = (String)session.getAttribute("userid");
if(userid == null){
	String message = "로그인이 필요합니다.";
	message = URLEncoder.encode(message,"utf-8");
	response.sendRedirect("login.jsp?message="+message);
}
%>