<%@ page  pageEncoding="UTF-8"%>

	<div id="first" class="box text-center" style="background-color: blue;">
	<br><br><br><br>
	 
	 <!-- 모달로 일정 만들기 시작 -->
	<button type="button" class="btn btn-primary mt-5" data-toggle="modal" data-target="#myModal">
	 일정만들기
	</button>
	
	<!-- 마이페이지 일정리스트(?)로 가기 -->
	<a href="" class="btn btn-primary  mt-5" role="button">완성된 일정보기</a>
	<br><br>
	</div>	
	
	<div class="container">
	<div class="title text-center">
		<h1>여행 일정을 검색해보세요.</h1>
	</div>
	<div class="clear"></div>
	<div class="plan_title bg-success text-center"  >
			<br>			
			<h4>여행일</h4>
			<br>		
	</div>
	<div class="plan_day text-center"  >
				 <form>	 
						    <label class="radio-inline">
						      <h4><input type="radio" name="optradio">
						       1-3일</h4>
						    </label>
						    <label class="radio-inline">
						      <h4><input type="radio" name="optradio">
						       4-6일</h4>
						    </label>
						    <label class="radio-inline">
						      <h4><input type="radio" name="optradio">
						       7-9일</h4>
						    </label>
						    <label class="radio-inline">
						      <h4><input type="radio" name="optradio">
						       10-13일</h4>
						    </label>
						   <label class="radio-inline">
						      <h4><input type="radio" name="optradio">
						       13일이상</h4>
						    </label>
 					 </form>
	</div>
		<div class="plan_theme bg-success text-center"  >
				<br>			
				<h4>테마</h4>
				<br>
		</div>
	<div class="plan_detail text-center"  >
				 <form>
				 			
						    <label class="radio-inline">
						      <h4><input type="radio" name="optradio">
						       테마 1</h4>
						    </label>
						    <label class="radio-inline">
						      <h4><input type="radio" name="optradio">
						       테마 2</h4>
						    </label>
						    <label class="radio-inline">
						      <h4><input type="radio" name="optradio">
						       테마 3</h4>
						    </label>
						    <label class="radio-inline">
						      <h4><input type="radio" name="optradio">
						       테마 4</h4>
						    </label>
						   <label class="radio-inline">
						      <h4><input type="radio" name="optradio">
						       테마 5</h4>
						    </label>
 					 </form>
	</div>
	<div class="more_btn bg-dark" onclick="">검색</div>   
	</div>
	<hr>
	<hr>
	
	
	
<div class="container">
<div class="card-group">
  <div class="card" onclick="location.href='${contextpath}/Schedule/make3.do';">
    <img class="card-img-top" src="..." alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">여행 제목</h5>
      <p class="card-text">여행 태크</p>
    </div>
  </div>
  <div class="card" onclick="location.href='${contextpath}/Schedule/make3.do';">
    <img class="card-img-top" src="..." alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">여행 제목</h5>
      <p class="card-text">여행 태크</p>
    </div>
  </div>
  <div class="card" onclick="location.href='${contextpath}/Schedule/make3.do';">
    <img class="card-img-top" src="..." alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">여행 제목</h5>
      <p class="card-text">여행 태크</p>
    </div>
  </div>
</div>
</div>	




<!--일정 만들기 클릭 후 모달이 뜹니다.  -->

	<div class="modal fade" id="myModal">
		<div class="modal-dialog modal-md">
			<div class="modal-content">
				<!--이 버튼은 그냥 안 만들고 나가기  -->
				<div class="modal-footer">
          				<button type="button" class="btn btn-secondary" data-dismiss="modal">나가기</button>
        		</div>
        		
        		<!-- 이름과 테마를 정해서 DB에 저장~  -->
				<br><br>
				<h3>1. 이름 정해주세요.</h3>
				<input type="text" placeholder="여행이름을 지어주세요." value="">
				<br><br><br>
				<h3>2.테마를 선택해주세요.</h3>
				<button class="btn dropdown-toggle" data-toggle="dropdown">
						여기를 누르세요.
				</button>
			<div>
				<div class="dropdown">
							<!-- 테마 5개를 정하자.~~ -->
								<div class="dropdown-menu"> 
										<a class="dropdown-item" href="#">테마 1</a>
										<a class="dropdown-item" href="#">테마 2</a>
										<a class="dropdown-item" href="#">테마 3</a>
										<a class="dropdown-item" href="#">테마 4</a>
										<a class="dropdown-item" href="#">테마 5</a>
								</div>
					</div>
					<!-- 버튼을 누르면 다음 단계로 넘겨야됨. -->
					 <div class="modal-footer" onclick="location.href='${contextpath}/Schedule/make2.do';">
          				<button type="button" class="btn btn-secondary" data-dismiss="modal" >완료</button>
        			</div>
			</div>
		</div>
	</div>
</div>
