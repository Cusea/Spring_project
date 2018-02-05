<%@ page pageEncoding="UTF-8"%>
<!-- 서비스 센터 헤더 -->
<div class="sc_back_img" style='background-image:url(${contextpath}/img/hosang/fuji.jpg);'>
	<div class="text-center" style="color:white; text-shadow: 2px 2px 2px black">
		<div class="" style="padding-top:100px;">
			<h1 class="display-4 font-weight-bold">일본 여행 정보</h1>
		</div>
		<div class="pt-2">
			<h2 class="font-weight-bold">나만의 여행 플래너</h2>
		</div>
	</div>
</div>
<!-- 서비스 센터 바디 -->
<div class="container-fluid pt-1 mt-3">
	<div class="row mb-3">
		<!-- 서비스 센터 사이드 버튼 -->
		<div class="col-sm-3 row justify-content-end sc_btn">
			<div class="col-8 list-group text-center " id="list-tab">
				<a class="list-group-item list-group-item-action" id="list-intro-list" href='${contextpath}/ServiceCenter/intro' aria-controls="">
					프로젝트 소개
				</a>
				<a class="list-group-item list-group-item-action" id="list-faq-list" href='${contextpath}/ServiceCenter/faq' aria-controls="">
					FAQ
				</a>
				<a class="list-group-item list-group-item-action active" id="list-contactUs-list" href='${contextpath}/ServiceCenter/ContactUs' aria-controls="">
					문의하기
				</a>
				<a class="list-group-item list-group-item-action" id="list-terms-list"  href='${contextpath}/ServiceCenter/terms' aria-controls="">
					이용약관
				</a>
				<a class="list-group-item list-group-item-action" id="list-pp-list" href='${contextpath}/ServiceCenter/pp' aria-controls="">
					개인정보 처리방침	<!-- pp는 Privacy policy -->
				</a>
			</div>
		</div>
		
		<!-- 서비스 센터 사이드 버튼 클릭시 출력 화면-->
		<div class="col-sm-9 offset-sm-3" >
			<div class="tab-content" id="nav-tabContent">
				
				<!-- 문의하기 시작 -->
				<div class="tab-pane fade  show active" id="list-contactUs" role="tabpanel" aria-labelledby="list-contactUs-list" style="height: 600px;">
					<div class="border border-secondary border-top-0 border-left-0 border-right-0 py-2 pl-3">
						<h3 class="font-weight-bold mb-3">문의하기</h3>
						<h5 class="text-secondary">서비스 이용에 관한 문의사항이나 개선 아이디어를 제안해 주세요</h5>
					</div>
					<div class="container-fluid mt-4">
						<form action="${contextpath}/ServiceCenter/SendContactUs" method="post" id="contactUsForm" name="contactUsForm">
							<div class="form-group">
								<label for="emailInput">이메일</label>
								<input type="email" class="form-control" name="email" placeholder="이메일을 입력하세요" value="${sessionScope.login.id}">
							</div>
							<div class="form-group">
								<label for="contactUsText">문의사항</label>
								<textarea class="form-control" name="text" rows="5"></textarea>
							</div>
							<div class="form-group row justify-content-end">
								<button class="btn btn-primary" type="submit">보내기</button>
							</div>
						</form>
					</div>
				</div>
				<!-- 문의하기 끝 -->
			</div>
		</div>
	</div>
</div>
<script>
/* document.forms.contactUsForm.onsubmit=function(){
	var formData=$(this).serializeArray();
	var dataJson=new Object();
	$(formData).each(function(){
		console.log(this);
		
	});

	return false;
} */
$(document).ready(function(){
 	var contactus = document.forms.contactUsForm;
	$(contactus).submit(function(){
		var formData=$(this).serializeArray();
		var dataJson=new Object();
		$(formData).each(function(){
			dataJson[this.name]=this.value;
		});
		console.log(dataJson);
		$.ajax({
			url: "<c:url value='/ServiceCenter/SendContactUs'/>",
			type: "POST",
			contentType:"application/json; charset=UTF-8",
			data: JSON.stringify(dataJson),
			dataType: "json",
			success: function(data){
				if(data.regist){
					alert("문의하신 내용은 내일까지 메일로 답변드리겠습니다")
					window.history.back();
				}else{
					alert("문의하신 내용의 등록이 실패했습니다 수정하세요")
				}
			}
		});
		return false;
	}); 
});
</script>