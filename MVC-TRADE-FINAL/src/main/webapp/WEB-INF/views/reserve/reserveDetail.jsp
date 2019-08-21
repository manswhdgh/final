<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	
	
	
	.firtable{
		border-collapse:collapse;
		margin-left:20%;
		margin-top:100px;
	}
	.sectable{
		border-collapse:collapse;
		margin-top:70px;
		margin-left:20%;
	}
	.title{
		width:1000px;
		height:40px;
		text-align:center;
		border:solid 1px black;
	}
	.firtd1{
		border:solid 1px black;
		text-align:center;
		width:300px;
		height:35px;
	}
	.firtd2{
		border:solid 1px black;
		text-align:center;	
	}
	.div{
		width:100px;
		height:60px;
		margin-top:50px;
		margin-left:44%;
	}
	.button{
		width:100px;
		height:50px;
		
	}
	.sell1{
		widht:200px;
		border:solid 1px black;
		text-align:center;
	
	}
	
	.sell2{
		width:100px;
		height:35px;
		border:solid 1px black;
		text-align:center;
	}	
	.sell3{
		width:600px;
		height:35px;
		border:solid 1px black;
		text-align:center;
	}
</style>
</head>
<body>
	<table class="firtable">
		<tr>
			<td colspan="2" class="title">글제목</td>
		</tr>
		<tr>
			<td class="firtd1">현재입찰자</td>
			<td class="firtd2"></td>
		</tr>
		<tr>
			<td class="firtd1">현재입찰가</td>
			<td class="firtd2"></td>
		</tr>
		<tr>
			<td class="firtd1">입찰시간</td>
			<td class="firtd2"></td>
		</tr>
		<tr>
			<td class="firtd1">경매품</td>
			<td class="firtd2"></td>
		</tr>
	</table>
	
	<div class="div">
		<button class="button" type=button>입찰하기</button>
	</div>
	<table class="sectable">
		<tr>
			<td class="sell1"rowspan="3">구매자정보</td>		
			<td class="sell2">이름</td>
			<td class="sell3"></td>
		</tr>
		<tr>	
			<td class="sell2">등급</td>
			<td class="sell3"></td>
		</tr>	
		<tr>
			<td class="sell2">인증내역</td>
			<td class="sell3"></td>
		</tr>	
	</table>

</body>
</html>