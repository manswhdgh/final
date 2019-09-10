<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.table{
		border-collapse:collapse;
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
		width:180px;
		height:100px;
		border:solid 1px black;
		text-align:center;
	
	}
	.sectd2{
		width:1000px;
		height:100px;
		border:solid 1px black;
		text-align:center;
	
	}
	.lasttd1{
		width:110px;
		height:40px;
		border:solid 1px black;
		text-align:center;
	
	}
	.lasttd2{
		width:100px;
		height:40px;
		border:solid 1px black;
		text-align:center;
	}
	.lasttd3{
		width:970px;
		hegiht:40px;
		border:solid 1px black;
		text-align:center;
	
	}
	.div1{
		width:60%;
		height:40px;
			
		margin-top:40px;
		margin-left:20%;
	}
	.div2{
		width:60%;
		height:250px;
		
		margin-top:70px;
		margin-left:20%;
	
	}
	.div3{
		width:300px;
		height:100px;
		
		margin-left:45%;
	}
	.div4{
		width:60%;
		height:120px;
		margin-top:70px;
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
	.numberbox{
		width:200px;
		height:20px;
		font-size:15px;
	}
	.button{
		width:200px;
		height:100px;
		font-style:"맑은고딕";
		font-size:20px;
		
	}
</style>
</head>
<body>
	<div class="div1">
	 	<p class="p1">팝니다</p>
	 <hr>
	 </div>
	<div class="div2">
 	<p class="p2">물품정보</p>
		<table class="table">
			<tr>
				<td class="firtd1">카테고리</td>
				<td colspan="3" class="firtd3"></td>
			</tr>
			<tr>
				<td class="firtd1">판매제목</td>
				<td class="firtd3"></td>
				<td class="firtd1">물품내용</td>
				<td class="firtd3"></td>
			</tr>
			<tr>
				<td class="firtd1">판매번호</td>
				<td class="firtd3"></td>
				<td class="firtd1">판매일자</td>
				<td class="firtd3"></td>
			</tr>
			<tr>
				<td class="firtd1">거래수량</td>
				<td class="firtd3"><input class="numberbox" type="number"></td>
				<td class="firtd1">금액</td>
				<td class="firtd3">원</td>
			</tr>
		</table>
 	</div>
 	<div class="div3">
 		<button class="button">구매하기</button>
 	</div>
 	<div class="div4">
 		<table>
 			<tr>
 				<td class="sectd1">상세설명</td>
 				<td class="sectd2"></td>
 			</tr>	
 		</table>
 	</div>
 	<div class="div5">
		<p class="p2">판매자 정보</p>
		<table class="table">
			<tr>
				<td rowspan="3" class="lasttd1">판매자</td>
				<td class="lasttd2">이름</td>
				<td class="lasttd3"></td>
			</tr>
			<tr>
				<td class="lasttd2">등급</td>
				<td class="lasttd3"></td>
			</tr>
			<tr>
				<td class="lasttd2">인증상태</td>
				<td class="lasttd3"></td>		
			</tr>
		</table>
	</div>
</body>
</html>