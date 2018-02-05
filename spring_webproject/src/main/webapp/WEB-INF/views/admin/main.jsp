<%@ page pageEncoding="UTF-8"%>
<div class="container-fluid">
	<br><br>
	<div class="row">
		<div class="col-sm-4 col-md-3 d-none d-sm-block bg-light sidebar ">
			<ul class="nav nav-pills flex-column">
				<li class="nav-item">
					<a class="nav-link" href="${contextpath}/admin/boards" aria-expanded="false" aria-controls="collapseBoard">
						게시판 관리
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="${contextpath}/admin/users/1">유저 관리</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="${contextpath}/admin/spotupdate">여행정보 update 관리</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="${contextpath}/admin/pp/1">문의하기 관리</a>
				</li>
				
			</ul>
			
		</div>
		<main role="main" class="col-sm-8 ml-sm-auto col-md-9 pt-3">
			<h1>관리자 페이지<br><small>(google analytics를 사용해 보려고 했으나 구현 실패)</small></h1>
			<br>
			<div class="my-2">
				<img src="${contextpath}/img/hosang/admin_main.PNG" class="img-fluid" alt="Responsive image">
			</div>
		</main>
	</div>
	<br><br><br>
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