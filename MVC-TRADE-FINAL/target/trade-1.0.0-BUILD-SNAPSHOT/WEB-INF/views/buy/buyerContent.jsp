<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
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
		font-style:"�������";
		font-size:15px;
	}
	.gp{
		font-style:"�������";
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
			<td colspan="2" class="cttd1">ī�װ�</td>
			<td  class="cttd2">
			&nbsp;
			<span class="gp">����<select  class="gstyle">
				<option>::����::</option>
				<option selected="selected">����1</option>
				<option>����2</option>
				<option>����3</option>
				</select>
			</span>
			&nbsp;		
			<span class="gp">����<select class="gstyle">
				<option>::����::</option>
				<option selected="selected">����1</option>
				<option>����2</option>
				<option>����3</option>
				</select>
			</span>	
			&nbsp;
			<span class="gp">��ǰ����<select class="gstyle">
				<option>::����::</option>
				<option selected="selected">����</option>
				<option>��</option>
				<option>���ӸӴ�</option>
				</select>
			</span>	
			</td>
		</tr>
		<tr>
			<td colspan="2" class="attd1">�������� </td>
			<td class="attd2">
			&nbsp;
			<span class="gp">�Ϲ�<input type="radio" name="itemgroup" value="item"></span>
			&nbsp;
			<span class="gp">��ȯ<input type="radio" name="itemgroup" value="gamemoney"></span>
			</td>
		</tr>
		<tr>
			<td colspan="2" class="attd1">���ż���</td>
			<td class="attd2">
			&nbsp;
			<input class="number" type="number"><span class="gp">(���ӸӴ�,������ ������ ��������)</span>
			</td>
		</tr>
		<tr>
			<td colspan="2" class="attd1">���űݾ�</td>
			<td class="attd2">
			&nbsp;
			<input class="number" type="number"><span class="gp">�� (0�� �̻�,10�������� ��ϰ���)</span>
			</td>
		</tr>
		<tr>
			<td colspan="2" class="attd1">ĳ���͸�</td>
			<td class="attd2">
			&nbsp;
			<input class="number" type="text" name="character_name"><span class="gp"> ��ǰ�� ������ ������ ĳ���͸�</span>
			</td>
		</tr>
		<tr>
			<td colspan="2" class="attd1">��ǰ����</td>
			<td class="attd2">
			&nbsp;
			<input class="auctionname" type="text" name="auction_name"><span class="gp"></span>
			</td>
			</tr>		
		<tr>
			<td colspan="2" class="attd1">�󼼼���</td>
			<td class="attd2">
			&nbsp;
			<textarea  rows="5" cols="60"></textarea>
			</td>
		</tr>		
		<tr>
			<td rowspan="3" class="infotd1">���ŷ�����</td>
			<td class="infotd1">�̸�</td>
			<td class="infotd1"></td>
		</tr>
		<tr>
			<td class="infotd1">����ó</td>
			<td class="infotd1"></td>	
		</tr>
		<tr>
			<td class="infotd1">��������</td>
			<td class="infotd1"></td>
		</tr>		
	</table>
	<div class="btndiv">
		<button class="button" type="button">���</button>
	</div>

</body>
</html>