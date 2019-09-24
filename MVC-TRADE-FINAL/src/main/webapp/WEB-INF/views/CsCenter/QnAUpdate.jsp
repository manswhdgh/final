<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>1대1문의하기</title>
<style>

table {
	border-collapse: collapse;
	font-size: 15px;
	margin-bottom: 50px;
}

table td, th {
	border: black solid 1px;
	padding: 5px;
	border-collapse: collapse;
	
}

th {
	background: skyblue;
}

h1 {
	color: skyblue;
	text-align: center;
}

.menu {
	margin-top: 200px;
	line-height: 20px;
	text-align: center;
	width: 150px;
}

.top {
	text-align: center;
	margin-top: 20px;
}

.menu {
	float: left;
	position: absolute;
	margin-top: 100px;
	margin-left:30px;
}

li {
	list-style: none;
}

.a {
	text-align: center;
}

.c {
	top: 200px;
}

/* .la {
	background: #C5C0FF;
	font-style: italic;
}

.lb {
	background: #C5C0FF;
	font-style: italic;
}

.lc {
	background: #C5C0FF;
	font-style: italic;
}

.ld {
	background: #C5C0FF;
	font-style: italic;
} */
.qfrm{
margin-top:90px;

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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
      <div id="wrap">
		<div id="header">
			<jsp:include page="Header.jsp"/>
		</div>
<ul class="menu">
		<li><input type="button" style="width: 110pt; height: 110pt;"
			value="1대1문의하기" class="la"></li>
		<li><input type="button" style="width: 110pt; height: 110pt;"
			value="나의질문과답변" class="lb"></li>
		<li><input type="button" style="width: 110pt; height: 110pt;"
			value="FAQ" class="lc"></li>
		<li><input type="button" style="width: 110pt; height: 110pt;"
			value="신고하기" class="ld"></li>
	</ul>

			
	
	
	<div class="qfrm" align="center">
	    <h1>1대1문의 수정</h1>
		<br>
	<form action="boardUpdate" method="post">
	
		<table align="center">
			<tr>
				<th height="20px"  style="text-align:center">제목</th>
				<td><input type="text" size="120" style="border: none"
					id="q_Title" name="q_Title" value="${Qna.q_Title}"></td>
			</tr>
			<tr>
				<th style="text-align:center">문의내용</th>
				<td><textarea cols="120" rows="20" style="border: none"
						id="q_Content" name="q_Content">${Qna.q_Content}</textarea>
					<input type="hidden" name="q_Register" value="${Qna.q_Register}">	
				</td>
			</tr>
			<tr>
				<th  style="text-align:center">첨부파일(수정불가)</th>
				<td>
					<input multiple="multiple" type="file" id="q_File" name="q_File" disabled>
				</td>
			</tr>
		</table>
		<br>
		<div class="a">
			<input type="submit" value="수정">
			 <input type="button" value="취소하기" onclick="window.location ='CsMain'">
		</div>
	</form>
</div>
</body>


</html>



