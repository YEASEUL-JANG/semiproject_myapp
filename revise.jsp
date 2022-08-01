<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="session_check.jsp" %>
<%@ page import="member.MemberDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>내 정보</title>
<link rel="stylesheet" href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<script src="https://kit.fontawesome.com/fdfee59c02.js" crossorigin="anonymous"></script>
<style type="text/css">
#page{background: white;}
#header{background: white;padding: 10px;}
.ui-header .ui-title{
display: inline;
}
#login_con table td{
padding: 10px 5px;}
#back{
text-align: left;
font-size: 25px;
display: inline;
}
#content{
text-align: center;
background: white;
}
#class{
height: 150px; 
vertical-align: middle; 
color:navy;font-size: 50px; font-weight:900;
}
#login_con{
max-width: 1000px;
margin: 20px auto;
text-align: left;
font-weight: bold;
display: flex;
justify-content: space-around;
}
#footer{
text-align: center;
background: white;
color: #666666;
}
a:link{text-decoration: none; color:#666666;}
a:visited{text-decoration: none; color:#666666;}
a:hover{text-decoration: underline; color:#666666;}
</style>
<script type="text/javascript">
$(function(){
	<% 
	String message_revise = (String)request.getParameter("message_revise");
	MemberDTO dto = (MemberDTO)request.getAttribute("dto");%>
	
	$("#btnUpdate").click(function(){
		document.form1.action = "/web02/myapp/update.do";
		document.form1.submit();
		<% if(message_revise != null){  %>
		alert("<%= message_revise %>");
		<%}%>
	});
	$("#btnDelete").click(function(){
		if(confirm("탈퇴하시겠습니까?")){
		document.form1.action = "/web02/myapp/delete.do";
		document.form1.submit();
	}
	});
});


</script>
</head>
<body>
  <!--뒤로가기  -->
  <div data-role="page" id="page">
  <div data-role="header" data-position="fixed" id="header">
   <div id="back"><a data-rel="back"><i class="fa-solid fa-arrow-left"></i></a></div>
   <h1>내 정보</h1>
   </div>
   <!-- 본문영역 -->
 <div data-role="content" id="content">
 <div id="login_con">
 <form name="form1" method="post">
<table>
 <tr>
 <td>아이디</td>
 <td><%= dto.getUserid() %></td>
 </tr>
 <tr>
 <td>비밀번호</td>
 <td><input type="password" name="passwd" value="<%= dto.getPasswd() %>"></td>
 </tr>
 <tr>
 <td>가입일자</td>
 <td><%= dto.getJoin_date() %></td>
 </tr>
 <tr>
 <td>이름</td>
 <td><input name="name" value="<%= dto.getName() %>"></td>
 </tr>
  <tr>
 <td>이메일</td>
 <td><input name="email" value="<%= dto.getEmail() %>"></td>
 </tr>
 <tr>
 <td>번호</td>
 <td><input name="hp" value="<%= dto.getHp() %>"></td>
 </tr>
 <tr>
 <td>우편번호</td>
 <td><input name="zipcode" value="<%= dto.getZipcode() %>"></td>
 </tr>
 <tr>
 <td>기본주소</td>
 <td><input name="address1" value="<%= dto.getAddress1() %>"></td>
 </tr>
 <tr>
 <td>상세주소</td>
 <td><input name="address2" value="<%= dto.getAddress2() %>"></td>
 </tr>
 <tr>
 <td colspan ="2" align="center">
 <!-- primary키 기준으로 실행되기 때매 값을 같이 보낸다.(hidden) -->
 <input type="hidden" name="userid" value="<%= dto.getUserid() %>"></td>
 </tr>
 <tr>
 <td><button type="button" id="btnUpdate" style="color:white; background:navy;">수정</button></td>
 <td><button type="button" id="btnDelete" style="color:white; background:navy;">회원 탈퇴</button></td>
 </tr>
</table>
</form>
   </div>
  </div>
  <!-- footer -->
  <div data-role="footer" data-position="fixed" id="footer">
   <br><br>
   <p><a href="#">이용약관 </a>| <a href="#">개인정보처리방침</a></p>
   <p>ⓒ Class Corp. <a href="#">회원정보 고객센터</a></p>
  </div>
  </div>
</body>
</html>