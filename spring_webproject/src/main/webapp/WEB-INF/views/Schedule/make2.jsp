<%@ page  pageEncoding="UTF-8"%>
	
			
		<div class="container">
				<div class="row">
				<div class="col-md-2 text-center  border border-dark">
					<h4>여행 기간</h4>
									
					 <button type="button" class="btn btn-secondary m-2" onclick="out">-</button>
   					 <button type="button" class="btn btn-secondary m-2">+
   					
   					 </button>
					<%-- <c:forEach >
					</c:forEach>	 --%>
					<div id="day_box">
					<div class="flex-column border border-success" id="day">
							<a class="btn btn-primary" href="${planDetail.data}" role="button">day</a>
					</div>
					</div>	
					
					 <!-- <div class="flex-column border border-success">
							<a class="btn btn-primary" href="#" role="button">2day</a>
					</div>
					<div class="flex-column border border-success">
							<a class="btn btn-primary" href="#" role="button">3day</a>
					</div>  -->
					<div class="row">
					 <button type="button" class="btn btn-dark m-2" onclick="location.href='${contextpath}/LSH/02pl.do';">임시저장</button>
   					 <button type="button" class="btn btn-warning m-2" onclick="location.href='${contextpath}/LSH/02pl.do';">완료</button>
					</div>
					
				</div>
				
				<!-- 일정 담자 -->
				
				<div class="col-md-2 text-center border border-dark">
					<h3>일정담기</h3>
				<div class="card" >
				  <img class="card-img-top" src="${contextpath}/img/schedule/2.jpg">
				  <div class="card-body">
				    <p class="card-text">장소 이름</p>
				  </div>
				</div>
				<div class="card" >
				  <img class="card-img-top" src="${contextpath}/img/schedule/3.jpg">
				  <div class="card-body">
				    <p class="card-text">장소 이름2</p>
				  </div>
				</div>
				<div class="card" >
				  <img class="card-img-top" src="${contextpath}/img/schedule/4.jpg">
				  <div class="card-body">
				    <p class="card-text">장소 이름3</p>
				  </div>
				</div>
				
				</div>
				
				<!-- 장소 디테일 정보 -->
				<div class="col-md-2 text-center border border-dark">
					<h2>장소 정보</h2>
				</div>
  				<div class="col-md-6 text-center border border-dark">
  					<h4>구글맵</h4> <!-- 이것은 구글맵이 들어오면 지워야됨. -->
  				</div>
				
  		</div>
  
</div>
<script>alert("등록성공")</script>
			
	
	<script >
	function out(){
		
	}
</script>

