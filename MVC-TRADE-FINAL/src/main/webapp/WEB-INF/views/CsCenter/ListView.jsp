<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>

h1{
	color:skyblue;
	text-align:center;
}
table{
	width:50%;
	border-collapse:collapse;
	font-size:12px;
	line-height:24px;
	

}
table td,th{
border: black solid 1px;
padding:5px;

}
th{
background:skyblue;
width:120px;
}
.top{
margin-top:80px;

}

.menu{
float:left;
position:absolute;
bottom:150px;

}
li{
list-style:none;
}
#wrap {
	width: 100%;
	margin: 0 auto 0 auto;
}

#header {
	text-align: center;
	width: 100%;
	height: 150px;
	background-color: #F5F5F5;
	padding: 60px 0px;
}




</style>

<body>
       <ul class="menu">
       <li><input type="button" style="width:110pt; height:110pt;" value="1대1문의하기" class="la"> </li>
		 <li><input type="button" style="width:110pt; height:110pt;"value="나의질문과답변" class="lb"></li>	
		 <li><input type="button"style="width:110pt; height:110pt;"value="FAQ" class="lc"></li>
		 <li><input type="button"style="width:110pt; height:110pt;"value="신고하기" class="ld"></li>
        </ul>
<div id="wrap">
		<div id="header">
			<jsp:include page="Header.jsp"/>
		</div>
	
<div class="top" align="center">

 <h1>1대1문의내역</h1>
<br>
<br>
	<a href="Q_BoardDelete?q_Register=${Qna.q_Register}">삭제</a>
	<a href="boardUpdateFrm?q_Register=${Qna.q_Register }">수정</a>
	<br>
	<table align="center">	
	<tr>
		<th  style="text-align:center"> 번호 </th><td>${Qna.q_Register}</td> 
		<th  style="text-align:center"> 작성자 </th><td>${Qna.q_mid}</td> 
		<th  style="text-align:center">작성일</th><td>${Qna.q_Date}</td>
		
		
	 </tr>
	
	<tr>
		<th style="text-align:center">제목</th><td colspan="5">${Qna.q_Title}</td>
	</tr>
	
	<tr>
		<th  style="text-align:center">내용</th>
		<td colspan="5" height="200px">${Qna.q_Content}</td>
	</tr>
	<tr>
		<th style="text-align:center">문의답변</th>
		<td colspan="5" height="200px">${Qna.r_Content }</td>
	</tr>
	
	
	
	
	</table>
	<br>
	<input type="button" value="뒤로가기" onclick="window.location ='QnaList'" >
	
	
	
</div>	
	   
   
</body>
</html>