<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>WebProject</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href='<c:url value="/resources/bootstrap-4.0.0/css/bootstrap.min.css" />' rel="stylesheet">
<link href='<c:url value="/resources/font-awesome-4.7.0/css/font-awesome.min.css" />' rel="stylesheet">
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
<script src='<c:url value="/resources/js/jquery-3.2.1.min.js" />' ></script>
<script src='<c:url value="/resources/js/popper.min.js" />' ></script>
<script src='<c:url value="/resources/bootstrap-4.0.0/js/bootstrap.min.js" />' ></script>
<link href='<c:url value="/CSS/template.css" />' rel="stylesheet">
<link href='<c:url value="/CSS/jds.css" />' rel="stylesheet">
<link href='<c:url value="/CSS/kbj.css" />' rel="stylesheet">
<link href='<c:url value="/CSS/kdh.css" />' rel="stylesheet">
<link href='<c:url value="/CSS/lsh.css" />' rel="stylesheet">
<link href='<c:url value="/CSS/yks.css" />' rel="stylesheet">
<link href='<c:url value="/CSS/lhs.css" />' rel="stylesheet">
</head>
<body>
<header>
	<nav class="navbar sticky-top navbar-expand-lg navbar-dark bg-dark">
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<h1><a class="navbar-brand" href='${contextpath}/'><span class="h2">일본 여행</span></a></h1>

		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active">
					<a class="nav-link h4 mb-0" href='${contextpath}/'>여행 정보</a>
				</li>
				<li class="nav-item active">
					<a class="nav-link h4 mb-0" href='${contextpath}/Schedule/make1.do'>일정 만들기</a>
				</li>
				<li class="nav-item active">
					<a class="nav-link h4 mb-0" href='${contextpath}/QnA/QnA.do'>커뮤니티</a>
				</li>
				<li class="nav-item active">
					<a class="nav-link h4 mb-0" href='${contextpath}/KBJ/TipofTravel.do'>여행 Tip</a>
				</li>
			</ul>
			
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active">
					<a role="button" class="btn btn-warning nav-link mr-2 mb-2" href='${contextpath}/layout/loginPage'>로그인</a>
				</li>
				<li class="nav-item active">
					<a role="button" class="btn btn-primary nav-link mr-2" data-toggle="modal" data-target="#signUp">회원가입</a>
				</li>
			</ul>
			
			<ul class="navbar-nav">
				<li class="nav-item active align-center admin">
					<a class="admin btn btn-success nav-link mr-2 mt-2" role="button" href='${contextpath}/admin/main' aria-pressed="true">
						관리자 page로
					</a>
				</li>
				<li class="nav-item active">
					<a class="btn nav-link" role="button" href='${contextpath}/LSH/01cl.do' id="profile">
						<img src='${contextpath}/img/user.png' class="rounded-circle btn btn-light user_icon">
					</a>
				</li>
			</ul>
			
		</div>
	</nav>
	
	<!-- signUp modal -->
	<div class="modal fade" id="signUp" tabindex="-1" role="dialog" aria-labelledby="signUp" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">회원 가입</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="">
						<div class="form-row mb-2">
							<div class="col-sm-9">
								<input type="email" class="form-control" id="signUp_id" aria-describedby="signUp_id" placeholder="email을 입력하세요" required>
							</div>
							<button type="button" class="btn btn-secondary col-sm-3">중복확인</button>
						</div>
						<div class="form-group">
							<label for="signUp_pw">비밀번호</label>
							<input type="password" class="form-control" id="signUp_pw" placeholder="Password" required>
						</div>
						<div class="form-group">
							<label for="signUp_pw_check">비밀번호 확인</label>
							<input type="password" class="form-control" id="signUp_pw_check" placeholder="Password 다시 입력하세요" required>
						</div>
						<div class="form-row mb-2">
							<label for="signUp_name" class="col-sm-2 my-auto">이 름</label>
							<input type="text" class="form-control col-sm-10" id="signUp_name" placeholder="이름/별명을 입력하세요" required>
						</div>
						<div class="form-row mb-2">
							<label for="signUp_gender" class="col-sm-2 my-auto">성 별</label>
							<div class="btn-group btn-group-toggle" data-toggle="buttons">
								<label class="btn btn-outline-info active">
									<input type="radio" name="male" id="signUp_male" autocomplete="off" checked> 남 성
								</label>
								<label class="btn btn-outline-info">
									<input type="radio" name="female" id="signUp_female" autocomplete="off"> 여 성
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
	</div>
</header>