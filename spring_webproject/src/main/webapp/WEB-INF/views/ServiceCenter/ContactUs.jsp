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
						<h5 class="text-secondary">서비스 이용에 관한 문의하항이나 개선 아이디어를 제안해 주세요</h5>
					</div>
					<div class="container-fluid mt-4">
						<form action="${contextpath}/Test/test.do" method="post" id="contactUsForm">
							<div class="form-group">
								<label for="emailInput">이메일</label>
								<input type="email" class="form-control" id="emailInput" placeholder="(로그인했으면 로그인한 메일주소)">
							</div>
							<div class="form-group">
								<label for="contactUsText">문의사항</label>
								<textarea class="form-control" id="contactUsText" rows="5">일단 test.do로 가서 index.jsp로 가게끔 해놨음.
								여기는 back하는 사람이 지우고 경로랑 나머지 수정해야됨
								</textarea>
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