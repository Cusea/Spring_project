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
		<div class="card border-dark" >	
			<div class="card-header">
				<h4 class="text-center">회원 가입</h4>	
			</div>
			<div class="card-body text-dark">
					<form action="../layout/signupPage" method="post" id="signup">
						<div class="form-row mb-2">
							<div class="col-sm-9">
								<input type="email" class="form-control" name="id" placeholder="email을 입력하세요" required>
							</div>
							<button type="button" class="btn btn-secondary col-sm-3">중복확인</button>
						</div>
						<div class="form-group">
							<label for="signUp_pw">비밀번호</label>
							<input type="password" class="form-control" name="pw" placeholder="Password" required>
						</div>
						<div class="form-group">
							<label for="signUp_pw_check">비밀번호 확인</label>
							<input type="password" class="form-control" name="pw_check" placeholder="Password 다시 입력하세요" required>
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
							<button type="submit" class="btn btn-block btn-primary" >가입하기</button>
						</div>
					</form>
					<hr>
					<div class="">
						<button class="btn btn-danger btn-block">구글</button>
						<div id="naverIdLogin">네이버</div>
						
						<button class="btn btn-warning btn-block">카카오</button>
					</div>
					<hr>
					<div class="row justify-content-md-center">
						<label class="col-sm-4 my-auto px-0">이미 가입하셨다면?</label>
						<button type="button" class="btn btn-light col-sm-2 px-0" data-toggle="modal" data-target="#login" data-dismiss="modal">
							<strong class="text-danger">로그인</strong>
						</button>
					</div>
				</div>
			</div>
	</div>
	<br><br><br>

</body>
</html>