<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#inquiryAjax {
	position: relative;
	top: 100px;
	left: 200px;
	width: 50%;
	background-color: pink;
}
#buttons {

	position: relative;
	top: 40px;
	left: 210px;
}

#textarea {
position: relative;
	top: 40px;
	left:10px;
}
</style>
</head>
<body>
	<div id="inquiryAjax">
		<table>
			<tr bgcolor="pink" height="80">
				내용내용어쩌구저쩌구어쩌구저쩌구
				<br>
				<textarea id="textarea" Style="width: 200pt; height: 40pt"></textarea>
				<div id="buttons">
					<input type="button" id="text_alter"
						style="width: 50pt; height: 20pt" value="확인"> <input
						type="button" id="text_delete" style="width: 50pt; height: 20pt"
						value="취소">
			</tr>
			</div>
		</table>
	</div>
</body>
</html>