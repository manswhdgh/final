<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.table{
		margin-top:100px;
		margin-left:100px;
		border-collapse:collapse;
	
	}
	
	.cttd1{
		border:solid 1px black;
		width:230px;
		height:100px;
		text-align:center;
		
	}
	
	.cttd2{
		border:solid 1px black;
		width:700px;
		height:100px;
		text-align:left;
		
	}
	.attd1{
		border:solid 1px black;
		width:230px;
		height:70px;
		text-align:center;
	}
	.attd2{
		border:solid 1px black;
		width:700px;
		height:70px;
	
	}
	.infotd1{
		text-align:center;
		border:solid 1px black;
	}
	.gstyle{
		width:150px;
		height:40px;
		font-style:"맑은고딕";
		font-size:15px;
	}
	.gp{
		font-style:"맑은고딕";
		font-size:20px;
	}
	.number{
		width:200px;
		height:30px;
		font-size:15px;
	}
	.auctionname{
		width:500px;
		height:30px;
	}
	.auctioncontent{
		widht:500px;
		height:30px;
	}
	.btndiv{
		width:100px;
		height:100px;
		margin-left:500px;
		margin-top:30px;
	}
	.button{
		width:100px;
		height:50px;
	}

</style>
</head>
<body>
	<table class="table">
		<tr>
			<td colspan="2" class="cttd1">카테고리</td>
			<td  class="cttd2">
			&nbsp;
			<span class="gp">게임<select  class="gstyle">
				<option>::선택::</option>
				<option selected="selected">게임1</option>
				<option>게임2</option>
				<option>게임3</option>
				</select>
			</span>
			&nbsp;		
			<span class="gp">서버<select class="gstyle">
				<option>::선택::</option>
				<option selected="selected">서버1</option>
				<option>서버2</option>
				<option>서버3</option>
				</select>
			</span>	
			&nbsp;
			<span class="gp">물품유형<select class="gstyle">
				<option>::선택::</option>
				<option selected="selected">무기</option>
				<option>방어구</option>
				<option>게임머니</option>
				</select>
			</span>	
				
		
		</td>
			
		</tr>
		<tr>
			<td colspan="2" class="attd1">경매 물품 종류 </td>
			<td class="attd2">
			&nbsp;
			<span class="gp">아이템<input type="radio" name="itemgroup" value="item"></span>
			&nbsp;
			<span class="gp">게임머니<input type="radio" name="itemgroup" value="gamemoney"></span>
			</td>
		</tr>
		<tr>
			<td colspan="2" class="attd1">구매수량</td>
			<td class="attd2">
			&nbsp;
			<input class="number" type="number"><span class="gp">(게임머니,아이템 수량을 적으세요)</span>
			</td>
		</tr>
		<tr>
			<td colspan="2" class="attd1">시작 금액</td>
			<td class="attd2">
			&nbsp;
			<input class="number" type="number"><span class="gp">원 (10원 이상,10원단위로 등록가능)</span>
			</td>
		</tr>
		<tr>
			<td colspan="2" class="attd1">하한입찰 최소금액</td>
			<td class="attd2">
			&nbsp;
			<input class="number" type="number"><span class="gp">원 (0원 이상,10원단위로 등록가능)</span>
			</td>
		</tr>	
		<tr>
			<td colspan="2" class="attd1">캐릭터명</td>
			<td class="attd2">
			&nbsp;
			<input class="number" type="text" name="character_name"><span class="gp"> 물품을 전달 받으실 본인의 캐릭터명</span>
			</td>
		</tr>
		<tr>
			<td colspan="2" class="attd1">경매제목</td>
			<td class="attd2">
			&nbsp;
			<input class="auctionname" type="text" name="auction_name"><span class="gp"></span>
			</td>
			</tr>		
		<tr>
			<td colspan="2" class="attd1">상세설명</td>
			<td class="attd2">
			&nbsp;
			<textarea  rows="5" cols="60"></textarea>
			</td>
		</tr>		
		<tr>
			<td rowspan="3" class="infotd1">내거래정보</td>
			<td class="infotd1">이름</td>
			<td class="infotd1"></td>
		</tr>
		<tr>
			<td class="infotd1">연락처</td>
			<td class="infotd1"></td>	
		</tr>
		<tr>
			<td class="infotd1">인증내역</td>
			<td class="infotd1"></td>
		</tr>		
	</table>
	<div class="btndiv">
		<button class="button" type="button">등록</button>
	</div>
	

</body>
</html>