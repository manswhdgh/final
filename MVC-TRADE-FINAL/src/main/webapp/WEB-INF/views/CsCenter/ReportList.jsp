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
</head>
<style>
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
	margin-top: 90px;
}

td {
	height: 50px;
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
		<h1>신고게시판</h1>
		<table class="list">
			<tr>
				<td colspan="5" style="border: white; text-align: right"><a
					href="">신고하자</a></td>
			</tr>
			<tr>
				<th width=40px  style="text-align:center">번호</th>
				<th  style="text-align:center">제목</th>
				<th width=100px  style="text-align:center">글쓴이</th>
				<th width=90px  style="text-align:center" >날짜</th>
		   </tr>
		 <c:forEach var="report" items="${Rblist}">
			<tr>
				<td align="center">${report.rep_Num}</td>
				<td><a href="ReportView?rep_Num=${report.rep_Num}">${report.rep_Title}</a></td>
				<td align="center">${report.rep_mId }</td>
				<td><fmt:formatDate value="${report.rep_Date}" pattern="yyyy.MM.dd"/></td>
			</tr>
		</c:forEach>

		</table>
	</div>
	<br>
	<br>
	 <div align="center">${Repaging}</div>
	
	<br>
	<br>
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
</html>