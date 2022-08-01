<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="session_check.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>bookmark</title>
<link rel="stylesheet" href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<script src="https://kit.fontawesome.com/fdfee59c02.js" crossorigin="anonymous"></script>
<style type="text/css">
#header{background: white;}
.ui-header .ui-title{
font-size: 1.2em;
margin: 10px;
}
#table1{
margin: 0px 10px;
}
#table1 img{
width:50px; height:50px;
border-radius: 30px;
}
#table2{
width: 100%;
margin: 10px;}

.category{
width:200px; height:70px;
border-radius: 20px;
background-position:center center;
background-size: 100%;
background-repeat:no-repeat;
padding: 10px;
margin: 5px;
color: white;
font-size: 17px;
}

#footer{
background: white;
text-align: center;
display: flex;
justify-content: space-around;
font-size: 12px;
padding : 10px;
}
#page1{
background: white;
display: flex;
align-items: center;
flex-direction: column;
}
.content{
background: white;
margin:0px;
padding: 10px;
display: flex;
align-items: left;
max-width: 1000px;
flex-direction: column;
}

#darkmod{
font-size: 12px;
}
#panelmenu{
display: inline;
}
#footer i{font-size: 20px;}
a:link{text-decoration:none;color: #666666;}
a:visited{text-decoration:none;color: #666666;}
a:hover{text-decoration:none;color: #666666;}
#footer a:link{text-decoration:none;color: #666666;}
#footer a:visited{text-decoration:none;color: #666666;}
#footer a:hover{text-decoration:none;color: #666666;}

</style>
<script type="text/javascript">
function nightmod(){//다크모드
	var nightmod = document.getElementById("nightmod");
	for(var i=0; i<nightmod.length; i++){
	if(nightmod.value=="night"){
		document.getElementById("page1").style.backgroundColor = "black";
		document.getElementById("header").style.backgroundColor = "black";
		document.getElementsByClassName("content")[0].style.backgroundColor = "black";
		document.getElementById("footer").style.backgroundColor = "black";
		document.getElementById("page1").style.color = "white";
		document.getElementById("header").style.color = "white";
	}else{
		document.getElementById("page1").style.backgroundColor = "white";
		document.getElementById("header").style.backgroundColor = "white";
		document.getElementsByClassName("content")[0].style.backgroundColor = "white";
		document.getElementById("footer").style.backgroundColor = "white";
		document.getElementById("page1").style.color = "black";
		document.getElementById("header").style.color = "black";
	}
  }
}
<% String context=request.getContextPath();
String message_revise = (String)request.getParameter("message_revise");
String login_message = (String)request.getParameter("login_message");
String join_message = (String)request.getParameter("join_message");
if(message_revise != null){  
%>
alert("<%= message_revise %>");
<%}else if(join_message != null){ %>
alert("<%= join_message %>");
<%}else if(login_message != null){ %>
alert("<%= login_message %>");
<%}%>

function view(userid){
	document.form1.userid.value = userid; 
	document.form1.submit();
}
$(function(){
	
	$("#logout").click(function(){
		location.href="<%= context%>/myapp/logout.do";
	});
});
</script>
</head>
<body>
<!--아이디 정보 -->
<form name="form1" method="post" action="/web02/myapp/view.do">
 <input type="hidden" name="userid">
</form>
<!-- 본문영역  -->
<div data-role="page" id="page1">
<!-- 메뉴패널 -->
 <div data-role="panel" id="panel_menu" data-display="overlay" data-theme="a">
   <p class="ul-li-aside"><a href="#" data-rel="close"><i class="fa-solid fa-xmark"></i></a></p>
  <table id="table1">
   <tr>
    <td rowspan="2"><img src="https://www.nicepng.com/png/detail/105-1053345_comment-from-dj-buck-perfil-anonimo.png" width="50px" height="50px" ></td>
    <td style="color:#666666;font-size:15px;font-weight:bold;"><%= session.getAttribute("userid") %></td> 
    <td><a href="#" id="logout" data-role="none"style="font-size:12px;">로그아웃</a></td></tr>
   <tr><td style="color:#afafaf; font-size:10px;"> 친구초대시<br>만원 쿠폰팩 지급!</td></tr>
  </table>
   <p><table id="table2" >
   <colgroup><col style="width:25%"><col style="width:25%">
   <col style="width:25%"><col style="width:25%"></colgroup>
   <tr style="font-size:13px;color:#666666;">
    <td>에너지</td><td>쿠폰</td><td>쿠폰</td><td>쿠폰</td>
    </tr>
    <tr style="font-size:20px;color:#666666;font-weight:bold;">
    <td>0</td><td>0</td><td>0</td><td>0</td>
    </tr>
  </table><br>
  <ul data-role="listview" id="menulist">
   <li data-role="listdivider" style="font-size: 13px; color:#afafaf; ">내 활동</li>
    <li><a href="#" onclick="view('<%= session.getAttribute("userid") %>')">내정보</a></li>
    <li><a href="#">친구초대</a></li>
    <li data-role="listdivider" style="font-size: 13px; color:#afafaf; ">고객센터</li>
    <li><a href="#">공지사항</a></li>
    <li><a href="#">FAQ</a></li>
    <li><a href="#">고객센터 문의</a></li>
    <li data-role="listdivider"style="font-size: 13px; color:#afafaf; ">설정</li>
    <li><a href="#">설정</a></li>
    <li><a href="#">약관 및 정책</a></li>
    <li><a href="#">오픈소스 라이선스</a></li>
  </ul>
 </div>

   <!-- 헤더  -->
   <div data-role="header" data-position="fixed" id="header">
   <h1>북마크</h1>
  <a href="#panel_menu"  id="panelmenu" data-role="none" style="font-size: 20px; padding: 10px;">
  <i class="fa-solid fa-bars"></i></a>
  <a href="#" data-role="none"style="margin: 10px;"><select id="nightmod" data-role="slider" onchange="nightmod()">
  <option value="day" selected>주간</option>
  <option value="night">야간</option>
  </select></a>
  </div>
   <!--content1 -->
  <div data-role="content" class="content">
  <p>
   <ul data-role="listview" id="bookmark" data-inset="true" data-filter="true" data-filter-placeholder="검색키워드를 입력하세요" >
     <li><a href="#" rel="external"><img src="image/needlepelt.png">
      <p class="ui-li-aside">07.07 📌</p>
      <h4>니들펠트 클래스</h4>
      <p style="color:#a8a8a8; font-size:12px;">마포/서대문/은평</p>
      <p>간단하게 스트레스 풀 수있는</p>
      <p>특별한 니들펠트 원데이클래스</p>
      <p>⭐⭐⭐⭐⭐ 후기 103</p>
     </a></li>
     <li><a href="#"><img src="image/investment.png">
      <p class="ui-li-aside">07.08 📌</p>
      <h4>해외투자 완전정복</h4>
      <p style="color:#a8a8a8; font-size:12px;">온라인</p>
      <p>[1부]22년 하반기 세계증시핵심요약</p>
      <p>[2부]해외투자 포트폴리오 만들기</p>
      <p>⭐⭐⭐⭐⭐ 후기 406</p>
     </a></li>
     <li><a href="#"><img src="image/madlen.png">
      <p class="ui-li-aside">07.10 📌</p>
      <h4>마들렌 클래스</h4>
      <p style="color:#a8a8a8; font-size:12px;">잠실</p>
      <p>갓 구운 휘낭시에와 마들렌을 직접?!</p>
      <p>정원 4명으로 프라이빗한 베이킹</p>
      <p>⭐⭐⭐⭐⭐ 후기 201</p>
     </a></li>
     <li><a href="#"><img src="image/whisky.png">
      <p class="ui-li-aside">07.13 📌</p>
      <h4>쉬운 위스키(입문용)</h4>
      <p style="color:#a8a8a8; font-size:12px;">군자/아차산</p>
      <p>위스키 쌩초짜를 위한</p>
      <p>가장 기초적인 수업진행.</p>
      <p>⭐⭐⭐⭐⭐ 후기 10</p>
     </a></li>
   </ul>
   </div>
<!--footer바  -->
  <div id="footer" data-role="footer" data-position="fixed">
   <span><a href="index.html" rel="external"><i class="fa-solid fa-house"></i><br>홈</a></span>
   <span><a href="category.html" rel="external"><i class="fa-solid fa-bars"></i><br>카테고리</a></span>
   <span><a href="feed.html" rel="external"><i class="fa-solid fa-border-all"></i><br>피드</a></span>
   <span><a href="bookmark.jsp" rel="external"><i class="fa-solid fa-bookmark"></i><br>북마크</a></span>
   <span><a href="login.jsp" rel="external"><i class="fa-solid fa-user"></i><br>로그인</a></span>
  </div>
 </div>
</body>
</html>