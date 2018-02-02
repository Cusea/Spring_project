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
					<a class="nav-link h4 mb-0" href='${contextpath}/KBJ/tipmain.do'>여행 Tip</a>
				</li>
			</ul>
			<c:choose>
				<c:when test="${empty login}">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active">
						<a role="button" class="btn btn-warning nav-link mr-2 mb-2" href='${contextpath}/layout/loginPage'>로그인</a>
					</li>
					<li class="nav-item active">
						<a role="button" class="btn btn-primary nav-link mr-2" href='${contextpath}/layout/signupPage'>회원가입</a>
					</li>
				</ul>
			</c:when>
			<c:otherwise>
				<ul class="navbar-nav">
				<c:if test="${login.admin eq 0}">
					<li class="nav-item active align-center admin">
						<a class="admin btn btn-success nav-link mr-2 mt-2" role="button" href='${contextpath}/admin/main' aria-pressed="true">
							관리자 page로
						</a>
					</li>
				</c:if>
					<li class="nav-item active align-center admin">
						<a class="admin btn btn-danger nav-link mr-2 mt-2" role="button" href='${contextpath}/layout/logout' aria-pressed="true">
							로그아웃
						</a>
					</li>
					<li class="nav-item active">
						<a class="btn nav-link" role="button" href='${contextpath}/LSH/01cl.do' id="profile">
							<img src='${contextpath}${login.imageAdd}' class="rounded-circle btn btn-light user_icon">
						</a>
					</li>
				</ul>
			</c:otherwise>
			</c:choose>
		</div>
	</nav>
</header>