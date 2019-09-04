<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<div class="container">
		<!-- 모달 팝업 -->
		<div class="modal fade" id="LoginModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">×</span><span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">로그인</h4>
					</div>
					<div class="modal-body">
						<form role="form" id="loginFrm" name="loginFrm" action="./access" method="post">
							<div class="form-group">
								<label for="m_Id" class="control-label">아이디</label> <input
									type="text" class="form-control" id="m_Id1" name="m_Id">
							</div>
							<div class="form-group">
								<label for="m_Pw" class="control-label">비밀번호</label> <input
									type="password" class="form-control" id="m_Pw1" name="m_Pw">
							</div>
							<div class="modal-footer">
							<Button class="btn btn-primary">로그인</Button>
						</div>
						</form>
					</div>	
				</div>
			</div>
		</div>
	</div>
</body>
</html>