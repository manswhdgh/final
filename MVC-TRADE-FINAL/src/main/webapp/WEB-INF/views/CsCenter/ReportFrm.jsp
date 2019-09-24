<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신고하기 등록</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
<style>
.ReportBox {
margin-top:50px;
	
}

table {
	border-collapse: collapse;
	font-size: 15px;
	height: 50px;
}

table td, th {
	border: black solid 1px;
	padding: 5px;
}

th {
	background: skyblue;
}

/* .b {
	margin-top: 50px;
} */

.list {
	list-style-type: none;
	text-align: bottom;
}

h1 {
	color: skyblue;
}

.top {
	text-align: center;
	margin-bottom: 50px;
}

.menu {
	float: left;
	position: absolute;
	margin-top: 90px;
}

li {
	list-style: none;
}
.frm{
	width:200px;
	align:center;
	text-align:center;
}
.form-group{
 width:500px;
margin : 0 auto;

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
.top{
margin-top:70px;
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
	
 <form action="ReportWrite" enctype="multipart/form-data" method="post">
	<div class="top">
		<h1>고객센터 신고하기</h1>
		<br>
	
	<table class="b" align="center">
		<tr>
			<th>상담분류선택</th>
			<td><input type="checkbox" id="a" name="a">일반거래사기</td>
			<td><input type="checkbox" id="b" name="b">경매거래사기</td>
			<td><input type="checkbox" id="c" name="c">기타</td>
		</tr>
	</table>
	</div>
	<div class="ReportBox" align="center">
		
		<table>

			<tr>
				<th style="text-align:center">제목</th>
				<td><input type="text" size="120" style="border: none" name="Rep_Title" id="Rep_Title"></td>
			</tr>
			<tr>
				<th style="text-align:center">문의내용</th>
				<td><textarea cols="120" rows="15" style="border: none" name="Rep_Content" id="Rep_Content"></textarea></td>
			</tr>
			<tr>
				<th style="text-align:center">첨부파일</th>
				<td><input type="file"  multiple="multiple" id="Rep_File" name="Rep_File" onchange="fileChk(this)">
					<input type="hidden" value="0" id="fileCheck" name="fileCheck">
				</td>
			
			</tr>
		</table>

		<br> 
		<input type="submit" value="신고하기">   
	    <input type="button" value="취소하기" onclick="window.location ='CsMain'">
	</div>
	</form>
	

</body>
<script>
function fileChk(elem){
	console.log(elem);
	console.log(elem.value);
	if(elem.value == ""){ //첨부한 파일이 없다면
		console.log("empty");
		$('#fileCheck').val(0);
	}else{
		console.log("not empty");
		$('#fileCheck').val(1);
	}
} 






</script>







</html>