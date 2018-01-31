<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login Page</title>
</head>
<body>
	<br><br>
	<div class="container my-2">
		<div class="card border-dark" >
			<div class="card-header">
				<h4 class="text-center">로그인</h4>
			</div>	
			<div class="card-body text-dark">
				<form action="../layout/loginPage" method="post">
					<div class="form-group">
						<label for="id">이메일</label>
						<input type="email" class="form-control" name="id" placeholder="email을 입력하세요" value="${LoginDTO.id}" required>
					</div>
					<div class="form-group">
						<label for="pw">비밀번호</label>
						<input type="password" class="form-control" name="pw" placeholder="Password" value="${LoginDTO.pw}" required>
					</div>
					<div class="form-row mb-2">
						<div class="form-check-inline col-sm-4">
							<input class="form-check-input" type="checkbox" value="${LoginDTO.userCookie}" id="userCookie">
							<label class="form-check-label" for="isAutoLogin">자동 로그인</label>
						</div>
						<div class="col-sm">
							<div class="row justify-content-end">
								<span class="col-sm-3"><a href="" class="text-dark">id 찾기</a></span>
								<span class="col-sm-5 pl-0"><a href="" class="text-dark">password 찾기</a></span>
							</div>
						</div>
					</div>
					<div class="form-row">
						<button type="submit" class="btn btn-block btn-primary">로그인</button>
					</div>
				</form>
				<hr>
				<div class="">
					<button class="btn btn-danger btn-block">구글</button>
					<div id="naverIdLogin">
						<a id="naverIdLogin_loginButton" href='${contextpath}/layout/naver' role="button">
							<img src="https://static.nid.naver.com/oauth/big_g.PNG?version=js-2.0.0" height="60">
						</a>
					</div>
					<button class="btn btn-warning btn-block">카카오</button>
				</div>
			</div>		
			<div class="card-footer">
				<button type="button" class="btn btn-block" data-toggle="modal" data-target="#signUp" data-dismiss="modal"><strong>회원가입</strong></button>
			</div>		
		</div>
	</div>
	<br><br><br>
	<script>
		
	</script>
</body>
</html>