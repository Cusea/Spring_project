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
								<span class="col-sm-3">
									<a href="" class="text-dark" data-toggle="modal" data-target="#user_idsearch">id 찾기</a>
								</span>
								<span class="col-sm-5 pl-0">
									<a href="" class="text-dark" data-toggle="modal" data-target="#user_pwsearch">password 찾기</a>
								</span>
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
	<!-- #user_idsearch -->
	<div class="modal fade" id="user_idsearch" tabindex="-1" role="dialog" aria-labelledby="user_idsearch" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">아이디 찾기</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="${contextpath}/layout/searchId" method="post" id="searchidform">
						<div class="gorm-group">
							<label for="user_id">유저 id(이메일)</label>
							<input type="email" class="form-control" id="id" name="id">
						</div>
						<br>
						<div class="row justify-content-end mr-2 mb-2">
							<button type="submit" class="btn btn-primary">찾기</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	
	
	<!-- "#user_pwsearch -->
	<div class="modal fade" id="user_pwsearch" tabindex="-1" role="dialog" aria-labelledby="user_pwsearch" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">패스워드 찾기</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="">
						<div class="gorm-group">
							<label for="user_id">유저 id(이메일)</label>
							<input type="email" class="form-control" id="pw_id" name="id">
						</div>
						<div class="gorm-group">
							<label for="user_id">유저 이름(닉네임)</label>
							<input type="email" class="form-control" id="pw_name" name="name">
						</div>
						<br>
						<div class="row justify-content-end mr-2 mb-2">
							<button type="submit" class="btn btn-primary">찾기</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	
	<script>
		$("#searchidform").submit(function(data){
			console.log(data);
			return false;
		});
	</script>
</body>
</html>