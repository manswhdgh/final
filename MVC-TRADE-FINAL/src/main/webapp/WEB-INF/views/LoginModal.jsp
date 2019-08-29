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

<!-- <script>
	$(document).ready(function() {
		$("#login").click(function(e) {//login 버튼을 클릭했을 때 
			var m_Id = $("#m_Id1").val();
			var m_Pw = $("#m_Pw1").val();
			e.preventDefault();
			fn_login();
		});
	});
</script>
<script>
	function gfn_isNull(str) {
		if (str == null)
			return true;
		if (str == "NaN")
			return true;
		if (new String(str).valueOf() == "undefined")
			return true;
		var chkStr = new String(str);
		if (chkStr.valueOf() == "undefined")
			return true;
		if (chkStr == null)
			return true;
		if (chkStr.toString().length == 0)
			return true;
		return false;
	}

	function ComSubmit(opt_formId) {
		this.formId = gfn_isNull(opt_formId) == true ? "commonForm"
				: opt_formId;
		this.url = "";
		if (this.formId == "commonForm") {
			$("#commonForm")[0].reset();
		}
		this.setUrl = function setUrl(url) {
			this.url = url;
		};
		this.addParam = function addParam(key, value) {
			$("#" + this.formId)
					.append(
							$("<input type='hidden' name='"+key+"' id='"+key+"' value='"+value+"' >"));
		};
		this.submit = function submit() {
			var frm = $("#" + this.formId)[0];
			frm.action = this.url;
			frm.method = "post";
			frm.submit();
		};
	}
</script>
<script>
	function fn_login() {
		if ($("#m_Id1").val().length < 1) {
			alert("아이디를 입력해주세요.");
		} else if ($("#m_Pw1").val().length < 1) {
			alert("비밀번호를 입력해주세요.");
		} else {
			var comSubmit = new ComSubmit("loginFrm");
			comSubmit.setUrl("/trade/access");
			comSubmit.submit();
		}
	}
</script> -->
</html>