<%@ page pageEncoding="UTF-8"%>

	<!-- header 아래 부분 -->
	<div class="index_back_img" style='background-image:url(img/hosang/japan.jpg);'>
		<div class="pt-5 container text-center">
			<div class="py-3" style="color:white; background-color: rgba(0,0,0,0.5)">
				<h1 class="display-4 mt-2">나만의 일본 여행 플래너!</h1>
				<h2 class="pt-2">쉽고 빠르게 여행을 계획하세요</h2>
				<!-- 검색 창 시작 -->
				<div class="input-group mt-5  col-sm-6 mx-auto">
					<input type="text" class="form-control " placeholder="원하는 도시를 입력하세요" aria-label="" aria-describedby="basic-addon2">
					<div class="input-group-append">
						<a class="btn p-0" role="button" href='${contextpath}/Travel/Japan.jsp'>
							<img src='img/hosang/search.png' class="btn btn-light search_icon">
						</a>
					</div>
				</div>
			</div>
			<!-- 검색 창 끝 -->
		</div>
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
				<div class="card" onclick="location.href='${contextpath}/Schedule/make1.do';">
					<img class="card-img-top" src='img/hosang/spot.PNG' alt="">
					<div class="card-body">
						<h5 class="text-primary card-title"><strong>여행 일정</strong></h5>
						<p class="card-text">6개 이상의 여행일정을 확인하고 나만의 일정을 계획해 보세요</p>
					</div>
				</div>
				<div class="card" onclick="location.href='${contextpath}/QnA/QnA.do';">
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
			<div class="card mb-3" onclick="location.href='${contextpath}/Schedule/make3.do';">
				<img class="card-img-top" src='img/hosang/imgbox.PNG' alt="">
				<div class="card-body">
					<h5 class="text-primary card-title"><strong>커뮤니티</strong></h5>
					<p class="card-text">여행자들과 정보를 공유하고, 궁금한 것은 언제든 물어보세요</p>
				</div>
			</div>
			<div class="card mb-3" onclick="location.href='${contextpath}/Schedule/make3.do';">
				<img class="card-img-top" src='img/hosang/imgbox.PNG' alt="">
				<div class="card-body">
					<h5 class="text-primary card-title"><strong>커뮤니티</strong></h5>
					<p class="card-text">여행자들과 정보를 공유하고, 궁금한 것은 언제든 물어보세요</p>
				</div>
			</div>
			<div class="card mb-3" onclick="location.href='${contextpath}/Schedule/make3.do';">
				<img class="card-img-top" src='img/hosang/imgbox.PNG' alt="">
				<div class="card-body">
					<h5 class="text-primary card-title"><strong>커뮤니티</strong></h5>
					<p class="card-text">여행자들과 정보를 공유하고, 궁금한 것은 언제든 물어보세요</p>
				</div>
			</div>
			<div class="card mb-3" onclick="location.href='${contextpath}/Schedule/make3.do';">
				<img class="card-img-top" src='img/hosang/imgbox.PNG' alt="">
				<div class="card-body">
					<h5 class="text-primary card-title"><strong>커뮤니티</strong></h5>
					<p class="card-text">여행자들과 정보를 공유하고, 궁금한 것은 언제든 물어보세요</p>
				</div>
			</div>
		</div>
		<div class="container-fluid text-center mb-3">
			<a class="btn btn-outline-info btn-lg" role="button" href="${contextpath}/Schedule/make3.do">
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
				<div class="card col-sm-6 px-0" onclick="location.href='${contextpath}/KBJ/tipmain.do';">
					<img class="card-img-top" src="${contextpath}/img/KBJ/6.jpg" alt="Card image cap" style="height: 300px;">
					<div class="card-body">
						<h5 class="card-title">후쿠오카 여행팁1</h5>
					    <p class="card-text">여행팁1</p>
					</div>
				    <div class="card-footer">
						<p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
     				</div>
				</div>
				<div class="card col-sm-3 px-0" onclick="location.href='${contextpath}/KBJ/tipmain.do';">
					<img class="card-img-top" src="${contextpath}/img/KBJ/5.jpg" alt="Card image cap" style="height: 300px;">
					<div class="card-body">
						<h5 class="card-title">여행팁 2</h5>
						<p class="card-text">오사카 여행팁</p>
					</div>
					<div class="card-footer">
						<p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
					</div>
				</div>
				<div class="card col-sm-3 px-0" onclick="location.href='${contextpath}/KBJ/tipmain.do';">
					<img class="card-img-top" src="${contextpath}/img/KBJ/4.jpg" alt="Card image cap" style="height: 300px;">
					<div class="card-body">
						<h5 class="card-title">여행팁 3</h5>
						<p class="card-text">오사카 여행팁</p>
					</div>
					<div class="card-footer">
						<p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
					</div>
				</div>
			</div>
			<div class="row mx-auto my-2">
				<div class="card col-sm-3 px-0" onclick="location.href='${contextpath}/KBJ/tipmain.do';">
					<img class="card-img-top" src="${contextpath}/img/KBJ/3.jpg" alt="Card image cap" style="height: 300px;">
					<div class="card-body">
						<h5 class="card-title">여행팁 4</h5>
						<p class="card-text">오사카 여행팁</p>
					</div>
					<div class="card-footer">
						<p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
					</div>
				</div>
				<div class="card col-sm-3 px-0" onclick="location.href='${contextpath}/KBJ/tipmain.do';">
					<img class="card-img-top" src="${contextpath}/img/KBJ/2.jpg" alt="Card image cap" style="height: 300px;">
					<div class="card-body">
						<h5 class="card-title">여행팁 5</h5>
						<p class="card-text">오사카 여행팁</p>
					</div>
					<div class="card-footer">
						<p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
					</div>
				</div>
				<div class="card col-sm-6 px-0" onclick="location.href='${contextpath}/KBJ/tipmain.do';">
					<img class="card-img-top" src="${contextpath}/img/KBJ/1.jpg" alt="Card image cap" style="height: 300px;">
					<div class="card-body">
						<h5 class="card-title">여행팁 6</h5>
						<p class="card-text">후쿠오카 여행팁</p>
					</div>
					<div class="card-footer">
						<p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
					</div>
				</div>
			</div>
		</div>
		<div class="container-fluid text-center mb-3">
			<a class="btn btn-outline-success btn-lg" role="button" href="${contextpath}/KBJ/Ttipmain.do">
					???개의 추천Tip 모두 보기
			</a>
		</div>
	</div>