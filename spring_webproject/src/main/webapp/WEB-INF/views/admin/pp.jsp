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
					<a class="nav-link" href="${contextpath}/admin/spotupdate">여행정보 update 관리</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="${contextpath}/admin/pp/1">문의하기 관리</a>
				</li>
				
			</ul>
			
		</div>
		<main role="main" class="col-sm-8 ml-sm-auto col-md-9 pt-3">
			<h1>문의하기 관리</h1>
			<div class="table-responsive-md">
				<table class="table">
					<thead class="thead-light">
						<tr>
							<th scope="col">no.</th>
							<th scope="col">이메일</th>
							<th scope="col">등록시간</th>
							<th scope="col">답변여부</th>
						</tr>
					</thead>
					<tbody id="tbody_list">
						<c:forEach items="${cuList}" var="conVo">
						<tr>
							<td>${conVo.num}</td>
							<td>${conVo.email}</td>
							<td>${conVo.intime}</td>
							<td>
							<c:choose>
								<c:when test="${conVo.isanswer eq 1}">
									<button type="button" class="btn btn-success py-0" disabled>
				        				답변완료
				        			</button>
								</c:when>
			        			<c:when test="${conVo.isanswer eq 0}">
			        			<button type="button" class="btn btn-outline-danger py-0" 
			        				data-num='${conVo.num}'
			        				data-email='${conVo.email}'
			        				data-text = '${conVo.text}'
			        				data-toggle="modal" data-target="#contactUsAnswer">
				        			답변 미완료
				        		</button>
				        		</c:when>
							</c:choose>
			        		</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
				<c:import url="/resources/template/pagination.jsp"></c:import>
			</div>
			
			<!-- #contactUsAnswer modal -->
			<div class="modal fade" id="contactUsAnswer" tabindex="-1" role="dialog" aria-labelledby="user_Update" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title">문의하기 답변</h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<form action="${contextpath}/admin/pp/update" method="post">
								<div class="form-group">
									<label for="contactUs_email" class="col-form-label">이메일 주소</label>
									<input type="text" class="form-control" id="email" value="" name="email" disabled>
								</div>
								<div class="form-group">
									<label for="contactUs" class="col-form-label">문의 내용</label>
									<input type="text" class="form-control" id="text" value="" name="text" disabled>
								</div>
								<div class="form-group">
									<label for="contactUs_text" class="col-form-label">answer:</label>
									<textarea class="form-control" id="answer" rows="10" name="answer"></textarea>
								</div>
								<div class="row justify-content-end mr-2 mb-2">
									<input type="hidden" class="form-control" id="num" value="" name="num">
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
	$(function(){
		$(".board_col").click(function(){
			
			$("#iBoard").attr({
				"src":"${contextpath}"+this.id
			});
		});
	});
	
	$("#contactUsAnswer").on('show.bs.modal', function (event) {
		var button = $(event.relatedTarget);
		var num = button.data('num');
		var email = button.data('email');
		var text = button.data('text');
		console.log(num, email, text);
		var modal = $(this);
		$('#num').val(num);
		$('#email').val(email);
		$('#text').val(text);
	});
	
</script>