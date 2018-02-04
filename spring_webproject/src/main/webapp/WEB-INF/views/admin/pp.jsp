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
					<a class="nav-link" href="${contextpath}/admin/users">유저 관리</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="${contextpath}/admin/spotupdate">여행정보 update 관리</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" data-toggle="collapse" href="#collapseBoardPP" aria-expanded="false" aria-controls="collapseBoard">
						고객센터 관리
					</a>
					<div class="collapse" id="collapseBoardPP" >
						<ul class="nav nav-pills flex-column nav-tabs" id="pp-tab" role="tablist">
							<li class="nav-item">
								<a class="nav-link" id="faqUpdate-tab" data-toggle="tab" href="#faqUpdate" role="tab" aria-controls="faqUpdate" aria-selected="false">
									FAQ 수정
								</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" id="contactUsList-tab" data-toggle="tab" href="#contactUsList" role="tab" aria-controls="contactUsList" aria-selected="false">
									문의하기 글 목록
								</a>
							</li>
						</ul>
					</div>
				</li>
				
			</ul>
			
		</div>
		<main role="main" class="col-sm-8 ml-sm-auto col-md-9 pt-3">
			<div class="tab-content" id="myTabContent">
				<div class="tab-pane fade show active" id="faqUpdate" role="tabpanel" aria-labelledby="faqUpdate-tab">
					<h1>faq 수정 페이지</h1>
					<div class="table-responsive-md">
						<table class="table">
							<thead class="thead-light">
								<tr>
									<th scope="col">no.</th>
									<th scope="col">faq 제목</th>
									<th scope="col">수정</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td>db에서 가져오는 faq 제목</td>
									<td>
										<a role="button" class="btn btn-outline-warning py-0" data-toggle="modal" data-target="#faq_Update">
											수정
										</a>
									</td>	
								</tr>
							</tbody>
						</table>
					</div>
					<div class="row justify-content-end mr-2 mb-2">
						<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#faqAdd">
							faq 추가
						</button>
					</div>	
				</div>
				
				<div class="tab-pane fade" id="contactUsList" role="tabpanel" aria-labelledby="contactUsList-tab">
					<h1>문의하기 글 목록</h1>
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
							<tbody id="tbody_list"></tbody>
						</table>
					</div>
				</div>
			</div>
			
			<!-- #faqAdd modal-->
			<div class="modal fade" id="faqAdd" tabindex="-1" role="dialog" aria-labelledby="user_Update" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title">faq 추가</h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<form>
								<div class="form-group">
									<label for="faq_title" class="col-form-label">faq 제목:</label>
									<input type="text" class="form-control" id="faq_title">
								</div>
								<div class="form-group">
									<label for="faq-text" class="col-form-label">text:</label>
									<textarea class="form-control" id="faq-text" rows="10"></textarea>
								</div>
								<div class="row justify-content-end mr-2 mb-2">
									<button type="submit" class="btn btn-primary">send</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<!-- #faq_Update modal -->
			<div class="modal fade" id="faq_Update" tabindex="-1" role="dialog" aria-labelledby="user_Update" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title">faq 추가</h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<form>
								<div class="form-group">
									<label for="faq_title" class="col-form-label">faq 제목:</label>
									<input type="text" class="form-control" id="add_faq_title" value="db에서 가져오기">
								</div>
								<div class="form-group">
									<label for="faq-text" class="col-form-label">text:</label>
									<textarea class="form-control" id="add_faq-text" rows="10">db에서 가져오기</textarea>
								</div>
								<div class="row justify-content-end mr-2 mb-2">
									<button type="submit" class="btn btn-primary">send</button>
								</div>
							</form>
						</div>
					</div>
				</div>
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
							<form>
								<div class="form-group">
									<label for="contactUs_email" class="col-form-label">이메일 주소</label>
									<input type="text" class="form-control" id="contactUs_email" value="db에서 가져오기" disabled>
								</div>
								<div class="form-group">
									<label for="contactUs" class="col-form-label">문의 내용</label>
									<input type="text" class="form-control" id="contactUs_text" value="db에서 가져오기" disabled>
								</div>
								<div class="form-group">
									<label for="contactUs_text" class="col-form-label">text:</label>
									<textarea class="form-control" id="contactUs_answer" rows="10"></textarea>
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
	$(function(){
		$(".board_col").click(function(){
			
			$("#iBoard").attr({
				"src":"${contextpath}"+this.id
			});
		});
	});
	
	$("#contactUsList-tab").click(function(){
		$.ajax({
		    url : "<c:url value='/admin/contactUsList'/>",
		    dataType: "json",
		    type : "POST",
		    success: function(data) {
		        var cuList = data;
		        var trHTML ="";
		        $(cuList).each(function(i, cu){
		        	console.log(cu);
		        	trHTML += '<tr>'
		        	trHTML += '<td>'+cu.num+'</td>'
		        	trHTML += '<td>'+cu.email+'</td>'
		        	trHTML += '<td>'+cu.intime+'</td>'
		        	trHTML += '<td>'
		        	if(cu.isanswer==1){
		        		trHTML +=	'<button type="button" class="btn btn-success py-0" data-toggle="modal" data-target="#faq_Update" disabled>'
		        		trHTML +=	'답변완료'
		        		trHTML +=	'</button>'
		        	}else{
		        		trHTML +=	'<button type="button" class="btn btn-outline-danger py-0" data-toggle="modal" data-target="#contactUsAnswer">'
		        		trHTML +=	'답변 미완료'
		        		trHTML +=	'</button>'
		        	}
		        	trHTML += '</td></tr>'
		        });
		        $("#tbody_list").append(trHTML);
		    },
		    error:function(request,status,error){
		        alert("code:"+request.status+"\n"+"error:"+error);
		    }
		}); 
	});
</script>