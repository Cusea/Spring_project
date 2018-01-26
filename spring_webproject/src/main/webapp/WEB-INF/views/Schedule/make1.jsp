<%@ page  pageEncoding="UTF-8"%>
	
	<div id="first" class="box text-center" style='background-image:url(img/schedule/1.jpg);'>
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
						       가족여행</h4>
						    </label>
						    <label class="radio-inline">
						      <h4><input type="radio" name="optradio">
						       나홀로여행</h4>
						    </label>
						    <label class="radio-inline">
						      <h4><input type="radio" name="optradio">
						       커플여행</h4>
						    </label>
						    <label class="radio-inline">
						      <h4><input type="radio" name="optradio">
						       친구와함께</h4>
						    </label>
						   <label class="radio-inline">
						      <h4><input type="radio" name="optradio">
						       비지니스여행</h4>
						    </label>
 					 </form>
	</div>
		<div class="bg-info text-center" >
			<a type="button" class="bg-danger">검색</a>
		</div>   
	</div>
	<hr>
	<hr>
	
	
	
<div class="container">
<div class="card-group">
  <div class="card" onclick="location.href='${contextpath}/Schedule/make3.do';">
    <img class="card-img-top" src="" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">여행 제목</h5>
      <p class="card-text">여행 태크</p>
    </div>
  </div>
  <div class="card" onclick="location.href='${contextpath}/Schedule/make3.do';">
    <img class="card-img-top" src="" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">여행 제목</h5>
      <p class="card-text">여행 태크</p>
    </div>
  </div>
  <div class="card" onclick="location.href='${contextpath}/Schedule/make3.do';">
    <img class="card-img-top" src="" alt="Card image cap">
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
			<div>
				<div class="form-group col-sm-6 col-md-4">
				<select name="admin" id="memberAdmin" class="form-control">
					<option value="0" 
						<c:if test="">selected</c:if>>
						가족여행</option>
					<option value="1"
						<c:if test="">selected</c:if>>
						나홀로여행</option>
					<option value="2"
						<c:if test="">selected</c:if>>
						커플여행</option>
					<option value="3"
						<c:if test="">selected</c:if>>
						친구와함께</option>
					<option value="4"
						<c:if test="">selected</c:if>>
						비지니스여행</option>
				</select>
			</div>
					<!-- 버튼을 누르면 다음 단계로 넘겨야됨. -->
			 	<div class="modal-footer">
          				<button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="location.href='${contextpath}/Schedule/make2.do';" >완료</button>
        		</div>
			</div>
		</div>
	</div>
</div>
