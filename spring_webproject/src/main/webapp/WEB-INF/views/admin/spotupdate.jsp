<%@ page pageEncoding="UTF-8"%>

<div class="container-fluid">
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
					<a class="nav-link active" href="${contextpath}/admin/spotupdate">여행정보 update 관리</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="${contextpath}/admin/pp/1">문의하기 관리</a>
				</li>
			</ul>
		</div>
		<main role="main" class="col-sm-8 ml-sm-auto col-md-9 pt-3">
			<div class="border border-secondary border-top-0 border-left-0 border-right-0 py-2 pl-3">
				<h1>여행 정보 update</h1>
			</div>
			<div class="container-fluid">
				<form action="" >
					<div class="form-group row my-2">
						<label for="place_name" class="col-sm-2 col-form-label">이름(한글)</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="name_ko">
						</div>
					</div>
					<div class="form-group row my-2">
						<label for="place_name" class="col-sm-2 col-form-label">이름(영문)</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="name_en">
						</div>
					</div>
					<div class="form-group row my-2">
						<label for="place_summary" class="col-sm-2 col-form-label" >정보</label>
						<div class="col-sm-10">
							<textarea class="form-control" name="summary" id = "summary" rows="4" ></textarea>
						</div>
					</div>
					<div class="form-group row my-2">
						<label for="place_imgList" class="col-sm-2 col-form-label">사진</label>
						<div class="col-sm-10">
							<input type="file" class="form-controll-file" name="imageAddList">
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
							<textarea class="form-control" name="wayToGo" rows="5"></textarea>
						</div>
					</div>
					<div class="form-group row my-2">
						<label for="place_tel" class="col-sm-2 col-form-label">전화번호</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="tel">
						</div>
					</div>
					<div class="form-group row my-2">
						<label for="place_open_time" class="col-sm-2 col-form-label">영업시간</label>
						<div class="col-sm-10">
							<textarea class="form-control" name="open_time" rows="3"></textarea>
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