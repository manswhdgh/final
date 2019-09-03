<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#admPromoAjax {
	position: relative;
	top: 100px;
	left: 200px;
	width: 50%

}
</style>
</head>
<body>

<div id="admPromoAjax">
		신청인 ID : <span
				style="disply: block; width: 100px; background: pink">아무개</span>
		<br>
		등급 :<span 
				style="disply: block; width: 100px; background: pink">실버</span>
계좌번호 : <span
				style="disply: block; width: 100px; background: pink">하나 111-1111-1111</span>				
	<br>
	신용도 : <span
				style="disply: block; width: 100px; background: pink">양호</span>
	<br>
	<input type="button" id="admPromo_acce"
						style="width:50pt; height:50pt" value="승인">
						<input type="button" id="admPromo_fals"
						style="width:50pt; height:50pt" value="거절">
	<input type="button" id="admPromo_msg"
						style="width:80pt; height:80pt"value="메세지">
	
	
	</div>

</body>
</html>