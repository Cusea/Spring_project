<%@ page pageEncoding="UTF-8"%>

<div class="container-fluid">
	<div class="row">
		<div class="col-sm-4 col-md-3 d-none d-sm-block bg-light sidebar ">
			<ul class="nav nav-pills flex-column">
				<li class="nav-item">
					<a class="nav-link active" data-toggle="collapse" href="#collapseBoard" aria-expanded="false" aria-controls="collapseBoard">
						게시판 관리
					</a>
					<div class="collapse" id="collapseBoard" >
						<ul class="nav nav-pills flex-column">
							<li class="nav-item">
								<a class="nav-link board_col" id="/Travel/Japan.jsp">여행정보 게시판</a>
							</li>
							<li class="nav-item">
								<a class="nav-link board_col" id="/Schedule/make1.jsp">여행일정 게시판</a>
							</li>
							<li class="nav-item">
								<a class="nav-link board_col" id="/QnA/QnA.jsp">커뮤니티 게시판</a>
							</li>
						</ul>
					</div>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="${contextpath}/Admin/users.jsp">유저 관리</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="${contextpath}/Admin/spotupdate.jsp">여행정보 update 관리</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="${contextpath}/Admin/pp.jsp">고객센터 관리</a>
				</li>
				
			</ul>
			
		</div>
		<main role="main" class="col-sm-8 ml-sm-auto col-md-9 pt-3">
			<h1>게시판 관리</h1>
			<iframe id ="iBoard" src="${contextpath}/Travel/Japan.jsp" height="1000px" width="100%"></iframe>
		</main>
	</div>
</div>
<script>
	$(function(){
		$(".board_col").click(function(){
			$("#iBoard").attr({
				"src":"${contextpath}"+this.id
			});
		});
	});
</script>