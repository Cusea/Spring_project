<%@ page pageEncoding="UTF-8"%>
<div class="container">
	<header class="row jumbotron">
		<div class="col-9">
			<ul class="list-inline">
			<li><h2>스팟이름</h2>
			<li>주소
			<li>부가정보
			</ul>
		</div>
		<div class="col-3 float-right">
			<ul class="row list-inline align-center">
			<li class="col-sm-4">
				<div ><a href="#review">
				<img class="rounded-circle bg-secondary" alt="리뷰" src="${contextpath}/img/yks/icons/spot_review_btn.png">
				</a></div>
				<div class="d-block"><small>리뷰쓰기</small></div>
			</li>
			<li class="col-sm-4">
				<div>
				<img class="rounded-circle bg-secondary" alt="클립" src="${contextpath}/img/yks/icons/spot_clip_btn.png">
				</div>
				<div><small>클립 추가</small></div>
			</li>
			<li class="col-sm-4">
				<div>
				<img class="rounded-circle bg-secondary" alt="일정" src="${contextpath}/img/yks/icons/spot_padd_btn.png">
				</div>
				<div><small>일정에 넣기</small></div>
			</li>
			</ul>

		</div>
		
	</header>
	<!-- 왼쪽 --------------------------------------------------------------------------->
	<!-- 사진 -->
	<div class="row card-deck">
		<div class="col-sm-9 main">
			<div class="d-block w-50 card">
				<div id="carousel" class="carousel slide" data-ride="carousel">
				  <div class="carousel-inner">
				    <div class="carousel-item active">
				      <img class="d-block w-100" src="${contextpath}/img/hosang/japan.jpg" alt="First slide">
				    </div>
				    <div class="carousel-item">
				      <img class="d-block w-100" src="${contextpath}/img/hosang/japan.jpg" alt="Second slide">
				    </div>
				    <div class="carousel-item">
				      <img class="d-block w-100" src="${contextpath}/img/hosang/japan.jpg" alt="Third slide">
				    </div>
				  </div>
				   	<a class="carousel-control-prev" href="#carousel" role="button" data-slide="prev">
					    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
					    <span class="sr-only">Previous</span>
					</a>
					<a class="carousel-control-next" href="#carousel" role="button" data-slide="next">
					    <span class="carousel-control-next-icon" aria-hidden="true"></span>
					    <span class="sr-only">Next</span>
					</a>
				</div>
			</div>
<!-- 정보  ------------------------------------------------------------------------------->
			<div class="card">간략정보~~~~~~~~~~~~~~~~<br>~~~~~~~~~~<br>~~~~~~~~~~~~~~~~~~~
			
			</div>
			<div class="card">설명~~~~~~~~``~~~<br>~~~~~~~~~```~<br>~~~~~~~~~~~~~<br><br><br><br><br><br><br>~~~~~~~~~<br>11111111~~~<br>~~~~~~~~~~~~~
			
			</div>
<!----커뮤니티(리뷰&qna)------------------------------------------------------------------->
			<div class="card">
				<div class="nav nav-pills">
			    	<a class="nav-link col active" data-toggle="tab" href="#review">리뷰</a>
			    	<a class="nav-link col" data-toggle="tab" href="#qna">Q&A</a>
			  	</div>
			  	<div class="tab-content">
				    <div id="review" class="tab-pane fade show active">
				      <ul class="list-group">
				      	<li class="list-group-item">11</li>
				      	<li class="list-group-item">22</li>
				      	<li class="list-group-item">33</li>
				      	<li class="list-group-item">44</li>
				      	<li class="list-group-item">55</li>
				      	<li class="list-group-item">66</li>
				      </ul>
				    </div>
				    <div id="qna" class="tab-pane fade">
				      <h3>ㅇㅇㄹㅇㄹ</h3>
				      <p>ㅏㅎ러하일나ㅓㅎ;랗;ㅏ</p>
				    </div>
				</div>
			</div>
			<div>블로그</div>
		</div>
<!-- 오른쪽-------------------------------------------------------------------------- -->
		<div class="col-sm-3 right">
			<div class="card">
				<div id="map-body" style="width:243px;height:243px"></div>
				<ul class="list-group">인근의 클립장소
					<li class="list-group-item">dlkfljkasdjf</li>
				</ul>
			</div>
			<div class="card">여행팁</div>
			<div class="card">음식점</div>
			<div class="card">관광명소</div>
		</div>
	</div>
</div>

<script>
var map;
function initMap() {
  map = new google.maps.Map(document.getElementById('map-body'), {
    center: {lat: -34.397, lng: 150.644},
    zoom: 11
  });
}
</script>
<script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDPPCQRIoQIAN_I1d5l0b1oveSd1j_2J_U&callback=initMap">
</script>