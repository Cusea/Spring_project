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
				<a class="list-group-item list-group-item-action" id="list-intro-list" href='${contextpath}/ServiceCenter/intro.jsp' aria-controls="">
					프로젝트 소개
				</a>
				<a class="list-group-item list-group-item-action active" id="list-faq-list" href='${contextpath}/ServiceCenter/faq.jsp' aria-controls="">
					FAQ
				</a>
				<a class="list-group-item list-group-item-action" id="list-contactUs-list" href='${contextpath}/ServiceCenter/ContactUs.jsp' aria-controls="">
					문의하기
				</a>
				<a class="list-group-item list-group-item-action" id="list-terms-list"  href='${contextpath}/ServiceCenter/terms.jsp' aria-controls="">
					이용약관
				</a>
				<a class="list-group-item list-group-item-action" id="list-pp-list" href='${contextpath}/ServiceCenter/pp.jsp' aria-controls="">
					개인정보 처리방침	<!-- pp는 Privacy policy -->
				</a>
			</div>
		</div>
		
		<!-- 서비스 센터 사이드 버튼 클릭시 출력 화면-->
		<div class="col-sm-9 offset-sm-3" >
			<div class="tab-content" id="nav-tabContent">
				
				<!-- FAQ 시작 -->
				<div class="tab-pane fade show active " id="list-faq" role="tabpanel" aria-labelledby="list-faq-list">
					<div class="border border-secondary border-top-0 border-left-0 border-right-0 py-2 pl-3">
						<h3 class="font-weight-bold">FAQ</h3>
					</div>
					<div class="card mt-3">
						<div class="card-header">- 클립이란 무엇인가요?(db에서 faq 제목 가져오기)</div>
						<div class="card-body">
							책을 읽다가 클립으로 중요한 부분에 표시해 두듯이, 이 사이트에서는 '클립'을 누르면 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~ 
							~~~~~~~~~ ~~~~~~~~ ~~~ ~~~~~~~ 
							(db에서 faq 내용 가져오기)
							(script로 반복해서 생성)
						</div>
					</div>
					<div class="card mt-3">
						<div class="card-header">- 클립이란 무엇인가요 2(db에서 faq 제목 가져오기)</div>
						<div class="card-body">
							책을 읽다가 클립으로 중요한 부분에 표시해 두듯이, 이 사이트에서는 '클립'을 누르면 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~ 
							~~~~~~~~~ ~~~~~~~~ ~~~ ~~~~~~~ 
							(db에서 faq 내용 가져오기)
							(script로 반복해서 생성)
						</div>
					</div>
				</div>
				<!-- FAQ 끝 -->
			</div>
		</div>
	</div>
</div>