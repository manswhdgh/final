<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
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
		height:290px;
		
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
	height:400px;
	
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
		width:70px;
		height:40px;
		border:solid 1px black;
		text-align:center;
	}
	.sectd3{
		width:1000px;
		hegiht:40px;
		border:solid 1px black;
		text-align:center;
	}
	.thrtd1{
		width:200px;
		height:100px;
		
	}
	.thrtd2{
		width:300px;
		height:100px;
		
	}
	.p3{
		font-style:"맑은고딕";
		font-size:25px;
	}
	.button1{
		width:100px;
		height:70px;
		margin-left:40px;
	
	}
	.btdiv{
		width:100px;
		height:100px;
		
		margin-left:580px;
	}

</style>
</head>
<body>
	<div class="div1">
		<p class="p1">판매정보 확인</p>
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
				<td class="firtd1">글제목</td>
				<td class="firtd3"></td>
				<td class="firtd1">물품내용</td>
				<td class="firtd3"></td>
			</tr>
			<tr>
				<td class="firtd1">거래번호</td>
				<td class="firtd3"></td>		
				<td class="firtd1">등록일자</td>
				<td class="firtd3"></td>
			</tr>
			<tr>
				<td class="firtd1">단위금액</td>
				<td class="firtd3"></td>
				<td class="firtd1">판매수량</td>
				<td class="firtd3"></td>	
			</tr>	
			<tr>
				<td class="firtd1">예상받으실금액</td>
				<td colspan="3"class="firtd3"></td>		
		</table>
	</div>
	<div class="div3">
		<p class="p2">내 거래정보</p>
		<table class="table">
			<tr>
				<td rowspan="3" class="sectd1">판매자</td>
				<td class="sectd2">이름</td>
				<td class="sectd3"></td>
			</tr>
			<tr>
				<td class="sectd2">캐릭터명</td>
				<td class="sectd3"><input type="text" name="character">(물품 전달할 케릭터 이름을 입력해주세요)</td>
			</tr>
			<tr>
				<td class="sectd2">연락처</td>
				<td class="sectd3"></td>		
			</tr>
		</table>
	</div>
	<div class="div4">
		<p class="p2">결제정보</p>
		<hr>
			<table>
				<tr>
					<td class="thrtd1"></td>
					<td class="thrtd1"></td>
					<td class="thrtd2"><span class="p3">총 받으실 금액:</span></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td>내 마일리지:0원
						
					</td>
				</tr>	
			</table>
			<div class="btdiv">
				<button class="button1">판매하기</button>
			</div>
	</div>

</body>
</html>