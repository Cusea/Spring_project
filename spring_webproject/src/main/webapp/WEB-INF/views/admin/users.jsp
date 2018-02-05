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
					<a class="nav-link active" href="${contextpath}/admin/users/1">유저 관리</a>
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
			<h3 class="mt-3">유저 목록</h3>
			<div class="table-responsive-md">
				<table class="table text-center">
					<thead class="thead-light">
						<tr>
							<th scope="col">num</th>
							<th scope="col">이메일</th>
							<th scope="col">가입시간</th>
							<th scope="col">권한</th>
							<th scope="col">수정</th>
							<th scope="col">알림</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${userList}" var="userVo">
						<tr>
							<td>${userVo.num}</td>
							<td>${userVo.id}</td>
							<td>${userVo.signupTime}</td>
							<td>${userVo.admin}</td>
							<td>
								<a role="button" class="btn btn-outline-warning py-0" data-toggle="modal" data-target="#user_Update">
									수정
								</a>
							</td>
							<td>
								<a role="button" class="btn btn-outline-warning py-0" data-toggle="modal" data-target="#user_message">
									메시지 쓰기
								</a>
							</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
				<c:import url="/resources/template/pagination.jsp"></c:import>
			</div>
			<br><br>
			<h3 class="mt-3">보낸 메시지 목록</h3>
			<div class="table-responsive-md">
				<table class="table">
					<thead class="thead-light">
						<tr>
							<th scope="col">no.</th>
							<th scope="col">유저 id</th>
							<th scope="col">내용</th>
							<th scope="col">확인여부</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>s@gmail.com</td>
							<td>닉네임이 임시로 바꼈습니다 닉네임 변경은 설정에서...</td>
							<td class="ischeck">확인</td>
						</tr>
					</tbody>
				</table>
			</div>
			<!-- #user_Update modal -->
			<div class="modal fade" id="user_Update" tabindex="-1" role="dialog" aria-labelledby="user_Update" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title">유저 닉네임, 권한 수정</h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<form action="">
								<div class="gorm-group">
									<label for="user_name">유저 이름(닉네임)</label>
									<input type="text" class="form-control" id="user_name">
								</div>
								<div class="gorm-group mb-4">
									<label for="user_admin">유저 권한</label>
									<select class="form-control " id="user_admin">
										<option>0</option>
										<option>1</option>
										<option>2</option>
									</select>
								</div>
								<div class="row justify-content-end mr-2 mb-2">
									<button type="submit" class="btn btn-primary">Save</button>
								</div>
							</form>
						</div>
					</div>	
				</div>
			</div>
			<!-- #user_message modal-->
			<div class="modal fade" id="user_message" tabindex="-1" role="dialog" aria-labelledby="user_Update" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title">유저한테 message 보내기</h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<form>
								<div class="form-group">
									<label for="user_id_email" class="col-form-label">user id:</label>
									<input type="text" class="form-control" id="user_id_email">
								</div>
								<div class="form-group">
									<label for="message-text" class="col-form-label">Message:</label>
									<textarea class="form-control" id="message-text"></textarea>
								</div>
								<div class="row justify-content-end mr-2 mb-2">
									<button type="submit" class="btn btn-primary">send</button>
								</div>
							</form>
						</div>
					</div>	
				</div>
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