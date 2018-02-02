<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>signup Page</title>
</head>
<body>
	<br><br>
	<div class="container my-2">
		<div class="card mx-auto" style="width: 40rem;">	
			<div class="card-header">
				<h4 class="text-center">회원 가입</h4>	
			</div>
			<div class="card-body">
					<form action="../layout/signupPage" method="post" name="signup">
						<div class="form-group">
							<label for="id">아이디</label>
							<input type="email" class="form-control" name="id" placeholder="email을 입력하세요">
							<div class="valid-feedback">사용할 수 있는 아이디 입니다.</div>
							<div class="invalid-feedback">사용할 수 없는 아이디 입니다.</div>
						</div>
						<div class="form-group">
							<label for="pw">비밀번호</label>
							<input type="password" class="form-control" name="pw" placeholder="Password" required>
						</div>
						<div class="form-group">
							<label for="pw_check">비밀번호 확인</label>
							<input type="password" class="form-control" name="pw_check" placeholder="Password 다시 입력하세요">
							<div class="valid-feedback">사용할 수 있는 비밀번호 입니다.</div>
							<div class="invalid-feedback">비밀번호가 일치하지 않습니다</div>
						</div>
						<div class="form-row mb-2">
							<label for="signUp_name" class="col-sm-2 my-auto">이 름</label>
							<input type="text" class="form-control col-sm-10" name="name" placeholder="이름/별명을 입력하세요" required>
						</div>
						<div class="form-row mb-2">
							<label for="signUp_gender" class="col-sm-2 my-auto">성 별</label>
							<div class="btn-group btn-group-toggle" data-toggle="buttons" id="signUp_gender">
								<label class="btn btn-outline-info active">
									<input type="radio" name="gender" id="male" autocomplete="off" value="M" checked> 남 성
								</label>
								<label class="btn btn-outline-info">
									<input type="radio" name="gender" id="female" autocomplete="off" value="F"> 여 성
								</label>
							</div>
						</div>
						<div class="form-row mb-2">
							<div class="form-check-inline col-sm-8">
								<input class="form-check-input" type="checkbox" value="" id="isterms" required>
								<label class="form-check-label" for="isterms">서비스 약관에 동의합니다</label>
							</div>
							<div class="col-sm">
								<div class="row justify-content-end">
									<span class="mr-3 my-auto"><a href=""><strong class="text-dark font-weight-bold">약관 보기</strong></a></span>
								</div>
							</div>
						</div>
						<div class="form-row mb-2">
							<button type="submit" class="btn d-inline btn-primary mx-auto col-sm-5" >가입하기</button>
							<button type="reset" class="btn d-inline btn-danger mx-auto col-sm-5" >취소하기</button>
						</div>
					</form>
				</div>
				<div class="card-footer">
					<div class="row justify-content-md-center">
						<label class="col-sm-3 my-auto px-0">이미 가입하셨다면?</label>
						<a role="button" class="btn btn-outline-warning nav-link my-1" href='${contextpath}/layout/loginPage'>로그인</a>
					</div>
				</div>
			</div>
	</div>
	<br><br><br>
<script>
var signupForm=document.forms.signup;
	$(document).ready(function(){
		signupForm.onsubmit=function(){
			var submit = true;
			if(!$(signupForm.id).is(".is-valid")){
				$(signupForm.id).addClass("is-invalid");
				submit=false;
			}
			if(!$(signupForm.pw_check).is(".is-valid")){
				$(signupForm.pw_check).addClass("is-invalid");
				submit=false;
			}
			return submit;
		}
		signupForm.onreset=function(){
			$(this).find("input").removeClass("is-valid is-invalid");
		}
		/* id check ajax 통신 */
		$(signupForm.id).blur(function(){
			var id =$(signupForm.id).val()+"/";
			console.log(id);
			if(id){
				$.ajax({
					url:"checkId/"+id,
					dataType: "json",
					type: "get",
					success: function(data,status,req){
						if(data.checkId){
							$(signupForm.id).removeClass("is-valid").addClass("is-invalid");
						}else{
							$(signupForm.id).removeClass("is-invalid").addClass("is-valid");
						}
					},	
				});
			}else{
				$(this).removeClass("is-valid is-invalid");
			}
		});
		
		$(signupForm.pw_check).blur(function(){
			if($(signupForm.pw).val()==$(signupForm.pw_check).val()){
				$(signupForm.pw_check).addClass("is-valid").removeClass("is-invalid");
			}else{
				$(signupForm.pw_check).addClass("is-invalid").removeClass("is-valid");
			}
		});
		
	});
</script>
</body>
</html>