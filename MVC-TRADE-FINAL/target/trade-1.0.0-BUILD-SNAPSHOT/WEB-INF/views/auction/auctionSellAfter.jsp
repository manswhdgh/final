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
		font-style:"�������";
		font-size:30px
	}
	.p2{
		font-style:"�������";
		font-size:20px;
	}
	.p3{
		font-style:"�������";
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
	<p class="p1">��Űŷ� Ȯ��</p>
	<hr>
	</div>
	<div class="div2">
		<p class="p2">��ǰ����</p>
		<table class="table">
			<tr>
				<td class="firtd1">ī�װ�</td>
				<td colspan="3"class="firtd3"></td>
			</tr>
			<tr>	
				<td class="firtd1">�������</td>
				<td class="firtd3"></td>
				<td class="firtd1">��ǰ����</td>
				<td class="firtd3"></td>
			</tr>
			<tr>
				<td class="firtd1">��Ź�ȣ</td>
				<td class="firtd3"></td>		
				<td class="firtd1">�������</td>
				<td class="firtd3"></td>
			</tr>
			<tr>
				<td class="firtd1">�ŷ�����</td>
				<td class="firtd3"></td>
				<td class="firtd1">������ ĳ���͸�</td>
				<td class="firtd3"></td>	
			</tr>	
		</table>
	</div>
	<div class="div3">
		<p class="p2">������ ����</p>
		<table class="table">
			<tr>
				<td rowspan="3" class="sectd1">������</td>
				<td class="sectd2">�̸�</td>
				<td class="sectd3"></td>
			</tr>
			<tr>
				<td class="sectd2">���</td>
				<td class="sectd3"></td>
			</tr>
			<tr>
				<td class="sectd2">��������</td>
				<td class="sectd3"></td>		
			</tr>
		</table>
	</div>
	<div class="div4">
		<p class="p2">�� �ŷ� ����</p>
		<table class="table">
			<tr>
				<td rowspan="2" class="sectd1">��������</td>
				<td class="sectd2">�̸�</td>
				<td class="sectd3"></td>
			</tr>
			<tr>
				<td class="sectd2">����ó</td>
				<td class="sectd3"></td>
			</tr>
		</table>
	</div>
	<div class="div5">
		<p class="p2">��������</p>
		<hr>
		<table>
			<tr>
				<td class="lasttd1"><p class="p3">�����Ǳݾ�:</p></td>
				<td class="lasttd2"><p class="p3">��</p></td>
				<td class="lasttd3"><button class="button" type="button">�ΰ�Ȯ��</button>&nbsp;&nbsp;<button class="button" type="button">�Ǹ����</button></td>
		</table>
		
	
	</div>	


</body>
</html>