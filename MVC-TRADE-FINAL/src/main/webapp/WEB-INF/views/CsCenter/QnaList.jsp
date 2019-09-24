<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<style type="text/css">
h1 {
	color: skyblue;
}

table {
	border-collapse: collapse;
	font-size: 12px;
	line-height: 24px;
	width: 50%;
}

table td, th {
	border: black solid 1px;
	padding: 5px;
	
}

th {
	background: skyblue;
	
}

a {
	text-decoration: none;
	color: black;
}

.QnaList {
margin-bottom:200%;
}

td {
	height: 50px;
}

.line {
	
}
.menu{
    float: left;
	position: absolute;
	margin-top:80px;
}
li{
	list-style: none;
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
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src = "resources/js/jquery.serializeObject.js"></script>
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
 
	<div class="QnaList" align="center">
	<br>
	<br>
		<h1>1대1문의 게시판 리스트</h1>
		<table class="list">
			<tr>
				<td colspan="5" style="border: white; text-align: right">
				<input type="button" value="1대1문의하기" onclick="window.location ='QnAFrm'"></td>
			</tr>

			<tr>
				<th width=40px style="text-align:center">번호</th>
				<th  style="text-align:center">제목</th>
				<th width=100px  style="text-align:center">글쓴이</th>
				<th width=90px  style="text-align:center">날짜</th>
			</tr>
 		<c:forEach var="qna" items="${blist}">
 			<tr>
				<td align="center">${qna.q_Register}</td>
				<td><a href="ListView?q_Register=${qna.q_Register} ">${qna.q_Title}</a>
				</td>
					
				<td align="center">${qna.q_mid}</td>
				<td><fmt:formatDate value="${qna.q_Date}" pattern="yyyy.MM.dd"/></td>
			</tr>
		
 			</c:forEach>
 		</table>
 		<br>
 			<div align="center">${Qpaging}</div>
 	


	</div>
	<div class="form-group row justify-content-center">

		<div class="w100" style="padding-right: 10px">

			<select class="form-control form-control-sm" name="searchType"
				id="searchType">

				<option value="title">내용</option>

				<option value="Content">글쓴이</option>

				<option value="reg_id">작성자</option>

			</select>

		</div>

		<div class="w300" style="padding-right: 10px">

			<input type="text" class="form-control form-control-sm"
				name="keyword" id="keyword">

		</div>

		<div>

			<button class="btn btn-sm btn-primary" name="btnSearch"
				id="btnSearch">검색</button>

		</div>
</body>
<script>



</script>
</html>