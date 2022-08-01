<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입 페이지</title>
<link rel="stylesheet" href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<script src="https://kit.fontawesome.com/fdfee59c02.js" crossorigin="anonymous"></script>
<style type="text/css">
#page{background: white;}
#header{background: white;}
.ui-header .ui-title{
font-size: 1.2em;
margin: 10px;
}
#login_con table td{
padding: 0px 10px;}
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
justify-content: center;
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
	$("#btnSave").click(function(){
		insert();
	});
});
function insert(){
	var param = "userid="+$("#userid").val()+"&passwd="+$("#passwd").val()
	+"&name="+$("#name").val()+"&email="+$("#email").val()+"&hp="+$("#hp").val()
	+"&zipcode="+$("#zipcode").val()+"&address1="+$("#address1").val()+"&address2="+$("#address2").val();
	
	$.ajax({
		type : "post",
		url : "/web02/myapp/join.do",
		data : param,
		success : function(result){
			alert(result);
			location.href="bookmark.jsp";
		}
	});
}

</script>
</head>
<body>

<%
String context = request.getContextPath();
%>
  <!--뒤로가기  -->
  <div data-role="page" id="page">
  <!-- 헤더  -->
   <div data-role="header" data-position="fixed" id="header">
  <a href="login.jsp" rel="external" data-role="none" style="font-size: 20px; padding: 10px;">
  <i class="fa-solid fa-arrow-left"></i></a> 
  <h1>회원가입</h1>
  </div>
   <!-- 본문영역 -->
  <div data-role="content" id="content">
   <div id="class" style="cursor: pointer;" onclick="location.href='index.html';"><p>클라쓰🏄</p></div>
   
   <div id="login_con">
      <table>
       <tr>
        <td><label>아이디</label></td>
        <td><input id="userid"  required></td>
       </tr>
       <tr>
        <td><label>비밀번호</label></td>
        <td><input type="password" id="passwd" required></td>
       </tr>
        <tr>
        <td><label>이름</label></td>
        <td><input id="name" required></td>
       </tr>
        <tr>
        <td><label>이메일</label></td>
        <td><input id="email"></td>
       </tr>
        <tr>
        <td><label>핸드폰</label></td>
        <td><input id="hp"></td>
       </tr>
        <tr>
        <td><label>우편번호</label></td>
        <td><input id="zipcode"></td>
       </tr>
        <tr>
        <td><label>기본주소</label></td>
        <td><input id="address1"></td>
       </tr>
        <tr>
        <td><label>상세주소</label></td>
        <td><input id="address2"></td>
       </tr>
       <tr>
        <td colspan="2"><button style="color:white; background:navy;" id="btnSave">회원가입</button></td>
       </tr>
      </table>
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