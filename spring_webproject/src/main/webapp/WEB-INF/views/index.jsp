<%@ page pageEncoding="UTF-8"%>

	<!-- header 아래 부분 -->
	<div class="index_back_img" style='background-image:url(img/hosang/japan.jpg);'>
		<div class="text-center" style="color:white;">
			<div class="pt-5">
				<h1 class="display-4">나만의 일본 여행 플래너!</h1>
			</div>
			<div class="pt-2">
				<h2 class="">쉽고 빠르게 여행을 계획하세요</h2>
			</div>
		</div>
		<!-- 검색 창 시작 -->
		<div class="input-group mt-5  col-sm-6 mx-auto">
			<input type="text" class="form-control " placeholder="" aria-label="" aria-describedby="basic-addon2">
			<div class="input-group-append">
				<a class="btn p-0" role="button" href='${contextpath}/Travel/Japan.jsp'>
					<img src='img/hosang/search.png' class="btn btn-light search_icon">
				</a>
			</div>
		</div>
		<!-- 검색 창 끝 -->
	</div>
	<!-- div container 1 여행 정보, 일정, 커뮤니티로 이동 -->
	<div class="bg-white pt-1 mb-4">
		<div class="container-fluid text-center">
			<h3 class="pt-4"><strong>일본 여행을 시작하세요</strong></h3><br>
			<div class="card-deck">
				<div class="card" onclick="location.href='${contextpath}/Travel/Japan.jsp';">
					<img class="card-img-top" src='img/hosang/plan.PNG' alt="">
					<div class="card-body">
						<h5 class="text-primary card-title"><strong>여행 정보</strong></h5>
						<p class="card-text">일본 2개의 지역, 30개의 관광명소, 음식점, 쇼핑 정보를 확인하세요</p>
					</div>
				</div>
				<div class="card" onclick="location.href='${contextpath}/Schedule/make1.jsp';">
					<img class="card-img-top" src='img/hosang/spot.PNG' alt="">
					<div class="card-body">
						<h5 class="text-primary card-title"><strong>여행 일정</strong></h5>
						<p class="card-text">6개 이상의 여행일정을 확인하고 나만의 일정을 계획해 보세요</p>
					</div>
				</div>
				<div class="card" onclick="location.href='${contextpath}/QnA/QnA.jsp';">
					<img class="card-img-top" src='img/hosang/qna.PNG' alt="">
					<div class="card-body">
						<h5 class="text-primary card-title"><strong>커뮤니티</strong></h5>
						<p class="card-text">여행자들과 정보를 공유하고, 궁금한 것은 언제든 물어보세요</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- div container 1 끝 -->
	
	<!-- div container 2 인기 여행 일정 -->
	<div class="jumbotron pt-1 pb-1 mb-0">
		<div class="container-fluid text-center">
			<h3 class="pt-4"><strong>인기 여행 일정</strong></h3>
			<p class="font-weight-light">다른 여행자들의 일정을 참고해 나만의 여행을 계획해보세요</p>
		</div>
		<div class="container-fluid card-deck" style="margin: auto;">
			<div class="card mb-3" onclick="location.href='${contextpath}/Schedule/make1.jsp';">
				<img class="card-img-top" src='img/hosang/imgbox.PNG' alt="">
				<div class="card-body">
					<h5 class="text-primary card-title"><strong>커뮤니티</strong></h5>
					<p class="card-text">여행자들과 정보를 공유하고, 궁금한 것은 언제든 물어보세요</p>
				</div>
			</div>
			<div class="card mb-3" onclick="location.href='${contextpath}/Schedule/make1.jsp';">
				<img class="card-img-top" src='img/hosang/imgbox.PNG' alt="">
				<div class="card-body">
					<h5 class="text-primary card-title"><strong>커뮤니티</strong></h5>
					<p class="card-text">여행자들과 정보를 공유하고, 궁금한 것은 언제든 물어보세요</p>
				</div>
			</div>
			<div class="card mb-3" onclick="location.href='${contextpath}/Schedule/make1.jsp';">
				<img class="card-img-top" src='img/hosang/imgbox.PNG' alt="">
				<div class="card-body">
					<h5 class="text-primary card-title"><strong>커뮤니티</strong></h5>
					<p class="card-text">여행자들과 정보를 공유하고, 궁금한 것은 언제든 물어보세요</p>
				</div>
			</div>
			<div class="card mb-3" onclick="location.href='${contextpath}/Schedule/make1.jsp';">
				<img class="card-img-top" src='img/hosang/imgbox.PNG' alt="">
				<div class="card-body">
					<h5 class="text-primary card-title"><strong>커뮤니티</strong></h5>
					<p class="card-text">여행자들과 정보를 공유하고, 궁금한 것은 언제든 물어보세요</p>
				</div>
			</div>
		</div>
		<div class="container-fluid text-center mb-3">
			<a class="btn btn-outline-info btn-lg" role="button" href="${contextpath}/Schedule/make1.jsp">
					???개의 추천일정 모두 보기
			</a>
		</div>
	</div>
	<!-- div container 2 끝 -->
	
	<!-- div container 3 시작 -->
	<div class="bg-white pt-1 mb-4">
		<div class="container-fluid text-center">
			<h3 class="pt-4"><strong>어디로 갈까?</strong></h3>
			<p class="font-weight-light">다른 사람의 Tip에서 아이디어를 얻어보세요</p>
		</div>
		<div class="card-deck container-fluid">
			<div class="row mx-auto my-2">
				<div class="card col-sm-6" onclick="location.href='${contextpath}/KBJ/TipofTravel.jsp';">
					<img class="card-img-top" src='img/hosang/imgbox.PNG' alt="">
					<div class="card-body">
						<h5 class="text-primary card-title"><strong>Tip 제목</strong></h5>
						<p class="card-text">Tip 내용들....~~~~~~~~~~~~~~~~</p>
					</div>
				</div>
				<div class="card col-sm-3" onclick="location.href='${contextpath}/KBJ/TipofTravel.jsp';">
					<img class="card-img-top" src='img/hosang/imgbox.PNG' alt="">
					<div class="card-body">
						<h5 class="text-primary card-title"><strong>Tip 제목</strong></h5>
						<p class="card-text">Tip 내용들....~~~~~~~~~~~~~~~~</p>
					</div>
				</div>
				<div class="card col-sm-3" onclick="location.href='${contextpath}/KBJ/TipofTravel.jsp';">
					<img class="card-img-top" src='img/hosang/imgbox.PNG' alt="">
					<div class="card-body">
						<h5 class="text-primary card-title"><strong>Tip 제목</strong></h5>
						<p class="card-text">Tip 내용들....~~~~~~~~~~~~~~~~</p>
					</div>
				</div>
			</div>
			<div class="row mx-auto my-2">
				<div class="card col-sm-3" onclick="location.href='${contextpath}/KBJ/TipofTravel.jsp';">
					<img class="card-img-top" src='img/hosang/imgbox.PNG' alt="">
					<div class="card-body">
						<h5 class="text-primary card-title"><strong>Tip 제목</strong></h5>
						<p class="card-text">Tip 내용들....~~~~~~~~~~~~~~~~</p>
					</div>
				</div>
				<div class="card col-sm-3" onclick="location.href='${contextpath}/KBJ/TipofTravel.jsp';">
					<img class="card-img-top" src='img/hosang/imgbox.PNG' alt="">
					<div class="card-body">
						<h5 class="text-primary card-title"><strong>Tip 제목</strong></h5>
						<p class="card-text">Tip 내용들....~~~~~~~~~~~~~~~~</p>
					</div>
				</div>
				<div class="card col-sm-6" onclick="location.href='${contextpath}/KBJ/TipofTravel.jsp';">
					<img class="card-img-top" src='img/hosang/imgbox.PNG' alt="">
					<div class="card-body">
						<h5 class="text-primary card-title"><strong>Tip 제목</strong></h5>
						<p class="card-text">Tip 내용들....~~~~~~~~~~~~~~~~</p>
					</div>
				</div>
			</div>
		</div>
	</div>