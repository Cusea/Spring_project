<%@ page pageEncoding="UTF-8"%>

<div class="container-fluid">
	<div class="row">
		<div class="col-sm-4 col-md-3 d-none d-sm-block bg-light sidebar ">
			<ul class="nav nav-pills flex-column">
				<li class="nav-item">
					<a class="nav-link" href="${contextpath}/Admin/boards.jsp" aria-expanded="false" aria-controls="collapseBoard">
						게시판 관리
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="${contextpath}/Admin/users.jsp">유저 관리</a>
				</li>
				<li class="nav-item">
					<a class="nav-link active" href="${contextpath}/Admin/spotupdate.jsp">여행정보 update 관리</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="${contextpath}/Admin/pp.jsp">고객센터 관리</a>
				</li>
			</ul>
		</div>
		<main role="main" class="col-sm-8 ml-sm-auto col-md-9 pt-3">
			<div class="border border-secondary border-top-0 border-left-0 border-right-0 py-2 pl-3">
				<h1>여행 정보 update</h1>
			</div>
			<div class="container-fluid">
				<form action="">
					<div class="form-group row my-2">
						<label for="place_name" class="col-sm-2 col-form-label">이름</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="place_name">
						</div>
					</div>
					<div class="form-group row my-2">
						<label for="place_summary" class="col-sm-2 col-form-label">정보</label>
						<div class="col-sm-10">
							<textarea class="form-control" id="place_summary" rows="4"></textarea>
						</div>
					</div>
					<div class="form-group row my-2">
						<label for="place_imgList" class="col-sm-2 col-form-label">사진</label>
						<div class="col-sm-10">
							<input type="file" class="form-controll-file" id="place_imgList">
						</div>
					</div>
					<div class="form-group row my-2">
						<label for="place_cate" class="col-sm-2 col-form-label">카테고리 설정</label>
						<div class="col-sm-10">
							
						</div>
					</div>
					<div class="form-group row my-2">
						<label for="place_wayToGo" class="col-sm-2 col-form-label">가는 방법</label>
						<div class="col-sm-10">
							<textarea class="form-control" id="place_wayToGo" rows="5"></textarea>
						</div>
					</div>
					<div class="form-group row my-2">
						<label for="place_tel" class="col-sm-2 col-form-label">전화번호</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="place_tel">
						</div>
					</div>
					<div class="form-group row my-2">
						<label for="place_open_time" class="col-sm-2 col-form-label">영업시간</label>
						<div class="col-sm-10">
							<textarea class="form-control" id="place_open_time" rows="3"></textarea>
						</div>
					</div>
					<hr>
					<div class="form-group row my-2 justify-content-end">
						<div class="mr-2 mb-2">
							<button type="button" class="btn btn-danger" onclick="">삭제</button>
							<!-- function 만들어서 onclick으로 설정 -->
							<button type="submit" class="btn btn-primary">저장</button>
						</div>
					</div>
				</form>
			</div>
		</main>
	</div>
</div>
<script>
	$(".board_col").click(function(){
		$("#iBoard").attr({
			"src":"${contextpath}"+this.id
		});
	});
</script>