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
		<div class="card border-dark mx-auto" style="width: 40rem;">
			<div class="card-header">
				<h4 class="text-center">로그인</h4>
			</div>	
			<div class="card-body">
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
						<button type="submit" class="btn d-inline btn-primary mx-auto col-sm-5">로그인</button>
						<a role="button" class="btn btn-outline-secondary d-inline mx-auto col-sm-5" href='${contextpath}/'>취소</a>
					</div>
				</form>
			</div>		
			<div class="card-footer">
				<a role="button" class="btn btn-success nav-link mr-2" href='${contextpath}/layout/signupPage'>회원가입</a>
			</div>		
		</div>
	</div>
	<br><br><br>
	<script>
		
	</script>
</body>
</html>