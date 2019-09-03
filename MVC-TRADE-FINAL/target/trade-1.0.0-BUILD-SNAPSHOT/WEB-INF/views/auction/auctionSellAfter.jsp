<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<style>
	.table{
		border-collapse:collapse;
	}	
	.div1{
		width:60%;
		height:40px;
			
		margin-top:40px;
		margin-left:20%;
	}
	.div2{
		width:60%;
		height:230px;
		
		margin-top:70px;
		margin-left:20%;
	
	}
	.div3{
		width:60%;
		height:190px;
		
		margin-top:40px;
		margin-left:20%;
	
	}
	.div4{
		width:60%;
		height:190px;
		
		margin-top:40px;
		margin-left:20%;
	
	}
	.div5{
		width:60%;
		height:190px;
		
		margin-top:40px;
		margin-left:20%;
	
	}
	.p1{
		font-style:"맑은고딕";
		font-size:30px
	}
	.p2{
		font-style:"맑은고딕";
		font-size:20px;
	}
	.p3{
		font-style:"맑은고딕";
		font-size:25px;
	}
	.firtd1{
		width:180px;
		height:40px;
		border:solid 1px black;
		text-align:center;
	}
	.firtd2{
		width:1000px;
		height:40px;
		border:solid 1px black;
		text-align:center;
	}
	.firtd3{
		width:480px;
		height:40px;
		border:solid 1px black;
		text-align:center;
	}
	.sectd1{
		width:110px;
		height:40px;
		border:solid 1px black;
		text-align:center;
	}
	.sectd2{
		width:100px;
		height:40px;
		border:solid 1px black;
		text-align:center;
	}
	.sectd3{
		width:970px;
		hegiht:40px;
		border:solid 1px black;
		text-align:center;
	}
	.lasttd2{
		width:200px;
		height:60px;
		
		text-align:left;
	}
	.lasttd3{
		width:300px;
		height:60px;
		
		text-align:left;
	}
	.button{
		width:100px;
		height:50px;
	}
</style>
<body>
	<div class="div1">
	<p class="p1">경매거래 확인</p>
	<hr>
	</div>
	<div class="div2">
		<p class="p2">물품정보</p>
		<table class="table">
			<tr>
				<td class="firtd1">카테고리</td>
				<td colspan="3"class="firtd3"></td>
			</tr>
			<tr>	
				<td class="firtd1">경매제목</td>
				<td class="firtd3"></td>
				<td class="firtd1">물품내용</td>
				<td class="firtd3"></td>
			</tr>
			<tr>
				<td class="firtd1">경매번호</td>
				<td class="firtd3"></td>		
				<td class="firtd1">경매일자</td>
				<td class="firtd3"></td>
			</tr>
			<tr>
				<td class="firtd1">거래수량</td>
				<td class="firtd3"></td>
				<td class="firtd1">구매자 캐릭터명</td>
				<td class="firtd3"></td>	
			</tr>	
		</table>
	</div>
	<div class="div3">
		<p class="p2">낙찰자 정보</p>
		<table class="table">
			<tr>
				<td rowspan="3" class="sectd1">구매자</td>
				<td class="sectd2">이름</td>
				<td class="sectd3"></td>
			</tr>
			<tr>
				<td class="sectd2">등급</td>
				<td class="sectd3"></td>
			</tr>
			<tr>
				<td class="sectd2">인증상태</td>
				<td class="sectd3"></td>		
			</tr>
		</table>
	</div>
	<div class="div4">
		<p class="p2">내 거래 정보</p>
		<table class="table">
			<tr>
				<td rowspan="2" class="sectd1">나의정보</td>
				<td class="sectd2">이름</td>
				<td class="sectd3"></td>
			</tr>
			<tr>
				<td class="sectd2">연락처</td>
				<td class="sectd3"></td>
			</tr>
		</table>
	</div>
	<div class="div5">
		<p class="p2">결제정보</p>
		<hr>
		<table>
			<tr>
				<td class="lasttd1"><p class="p3">받으실금액:</p></td>
				<td class="lasttd2"><p class="p3">원</p></td>
				<td class="lasttd3"><button class="button" type="button">인계확인</button>&nbsp;&nbsp;<button class="button" type="button">판매취소</button></td>
		</table>
		
	
	</div>	


</body>
</html>