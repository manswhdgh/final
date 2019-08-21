<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#admTradeListStatusAjax {
	position: relative;
	top: 100px;
	left: 200px;
	width: 50%;
	
}

#admTrade_acc{
	position: relative;
	top: -100px;
	left: 300px;
}
</style>
</head>
<body>
<div id="admTradeListStatusAjax">
		
		<table>
			<tr bgcolor="pink" height="30">
				<th width="100">구매등록</th>
				<th width="200">구매자 물품결제</th>
				<th width="200">구매자 확정</th>
				<th width="200">거래승인 대기</th>
				<th width="200">거래승인 완료</th>
			</tr>
			</table>
			<p>등록일 2019-04-04</p>
			<br><p> 판매자 ID : 우물의능금 &nbsp&nbsp&nbsp&nbsp <p>구매자ID : 아버지출근</p>
			<br><p> 게임명: 디아블로</p>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<p>거래물품: 어머니의 과도+13
			<br><p> 거래금액 : 1,200,000원 (일반거래)</p><input type="button" id="admTrade_acc"
						style="width:80pt; height:80pt"value="메세지">
						</div>
</body>
</html>