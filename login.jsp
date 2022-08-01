<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Log in</title>
<link rel="stylesheet" href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<script src="https://kit.fontawesome.com/fdfee59c02.js" crossorigin="anonymous"></script>
<style type="text/css">
#page{background: white;}
#header{background: white;}
#back{
padding: 15px;
text-align: left;
font-size: 25px;
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
max-width: 500px;
margin: 20px auto;
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
function check(){
	let userid = document.input.userid;
	let passwd = document.input.passwd;
	if(userid.value == ""){
		alert("아이디를 입력하세요."); 
		userid.focus(); 
		return; 
		}else if(passwd.value == ""){
			alert("비밀번호를 입력하세요."); 
			passwd.focus(); 
			return; 
		}
	document.input.submit();
}
<%
String context = request.getContextPath();
String message = request.getParameter("message");
String message_delete = request.getParameter("message_delete");
if(message != null){  
%>
alert("<%= message %>");
<%}else if(message_delete != null){ %>
alert("<%= message_delete %>");
<%}%>
</script>
</head>
<body>

  <!--뒤로가기  -->
  <div data-role="page" id="page">
  <div data-role="header" data-position="fixed" id="header">
   <div id="back"><a data-rel="back"><i class="fa-solid fa-arrow-left"></i></a></div>
   </div>
   <!-- 본문영역 -->
  <div data-role="content" id="content">
   <div id="class" style="cursor: pointer;" onclick="location.href='index.html';"><p>클라쓰🏄</p></div>
   
   <form method="post" name="input" action="<%= context %>/myapp/login.do">
   <div id="login_con">
   <input name="userid" id="userid" placeholder="아이디" required><br>
   <input type="password" id="passwd" name="passwd" placeholder="비밀번호"><br>
   <button style="color:white; background:navy;" onclick="check()">로그인</button><br>
   <a href="#">아이디 찾기</a> | <a href="#">비밀번호 찾기</a> | <a href="join.jsp" rel="external">회원가입</a></div>
   </div>
   </form>
  
  <!-- footer -->
  <div data-role="footer" data-position="fixed" id="footer">
   <br><br>
   <p><a href="#">이용약관 </a>| <a href="#">개인정보처리방침</a></p>
   <p>ⓒ Class Corp. <a href="#">회원정보 고객센터</a></p>
  </div>
  </div>
</body>
</html>