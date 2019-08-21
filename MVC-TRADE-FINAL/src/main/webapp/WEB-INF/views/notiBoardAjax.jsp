<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#notiBoardAjax {
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
</style>
</head>
<body>
	<div id="notiBoardAjax">
		<table>
			<tr bgcolor="pink" height="50">
				내용내용어쩌구저쩌구어쩌구저쩌구
				<div id="buttons">
					<input type="button" id="text_alter"
						style="width: 50pt; height: 20pt" value="수정"> <input
						type="button" id="text_delete" style="width: 50pt; height: 20pt"
						value="삭제">
			</tr>
			</div>
		</table>
	</div>
</body>
</html>