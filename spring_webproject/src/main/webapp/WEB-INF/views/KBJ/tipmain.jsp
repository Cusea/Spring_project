<%@ page pageEncoding="UTF-8"%>

<div class="bg-white pt-1 mb-4">
	<div class="container-fluid text-center">
		<h3 class="pt-4"><strong>일정 목록</strong></h3>
		<div>
			<c:if test="${login.admin eq 0}">
				<a class="btn btn-primary" onclick="location.href='${contextpath}/KBJ/TipofTravel.do';">새로운 Tip 만들기</a>
				<a class="btn btn-primary" onclick="location.href='${contextpath}/LSH/04tip.do';">나의 Tip 보기</a>
			</c:if>
		</div>
	</div>

	<div class="card-deck">
	  <div class="card">
	    <img class="card-img-top" src="${contextpath}/img/KBJ/6.jpg" alt="Card image cap">
	    <div class="card-body">
	      <h5 class="card-title">후쿠오카 여행팁1</h5>
	      <p class="card-text">여행팁1</p>
	      <div class="card-footer">
		      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
	      </div>
	    </div>
	  </div>
	  <div class="card">
	    <img class="card-img-top" src="${contextpath}/img/KBJ/5.jpg" alt="Card image cap">
	    <div class="card-body">
	      <h5 class="card-title">여행팁 2</h5>
	      <p class="card-text">오사카 여행팁</p>
	      <div class="card-footer">
		      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
	      </div>
	    </div>
	  </div>
	  <div class="card">
	    <img class="card-img-top" src="${contextpath}/img/KBJ/4.jpg" alt="Card image cap">
	    <div class="card-body">
	      <h5 class="card-title">여행팁 3</h5>
	      <p class="card-text">오사카 여행팁</p>
	      <div class="card-footer">
		      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
	      </div>
	    </div>
 	 </div>
 	 <div class="card">
	    <img class="card-img-top" src="${contextpath}/img/KBJ/3.jpg" alt="Card image cap">
	    <div class="card-body">
	      <h5 class="card-title">여행팁 3</h5>
	      <p class="card-text">오사카 여행팁</p>
	      <div class="card-footer">
		      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
	      </div>
	    </div>
 	 </div>
	</div>
	<div class="card-deck">
	  <div class="card">
	    <img class="card-img-top" src="${contextpath}/img/KBJ/2.jpg" alt="Card image cap">
	    <div class="card-body">
	      <h5 class="card-title">후쿠오카 여행팁1</h5>
	      <p class="card-text">여행팁1</p>
	      <div class="card-footer">
		      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
	      </div>
	    </div>
	  </div>
	  <div class="card">
	    <img class="card-img-top" src="${contextpath}/img/KBJ/1.jpg" alt="Card image cap">
	    <div class="card-body">
	      <h5 class="card-title">여행팁 2</h5>
	      <p class="card-text">오사카 여행팁</p>
	      <div class="card-footer">
		      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
	      </div>
	    </div>
	  </div>
	  <div class="card">
	    <img class="card-img-top" src="${contextpath}/img/KBJ/6.jpg" alt="Card image cap">
	    <div class="card-body">
	      <h5 class="card-title">여행팁 3</h5>
	      <p class="card-text">오사카 여행팁</p>
	      <div class="card-footer">
		      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
	      </div>
	    </div>
 	 </div>
 	 <div class="card">
	    <img class="card-img-top" src="${contextpath}/img/KBJ/5.jpg" alt="Card image cap">
	    <div class="card-body">
	      <h5 class="card-title">여행팁 3</h5>
	      <p class="card-text">오사카 여행팁</p>
	      <div class="card-footer">
		      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
	      </div>
	    </div>
 	 </div>
	</div>
	<div class="card-deck">
	  <div class="card">
	    <img class="card-img-top" src="${contextpath}/img/KBJ/4.jpg" alt="Card image cap">
	    <div class="card-body">
	      <h5 class="card-title">후쿠오카 여행팁1</h5>
	      <p class="card-text">여행팁1</p>
	      <div class="card-footer">
		      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
	      </div>
	    </div>
	  </div>
	  <div class="card">
	    <img class="card-img-top" src="${contextpath}/img/KBJ/3.jpg" alt="Card image cap">
	    <div class="card-body">
	      <h5 class="card-title">여행팁 2</h5>
	      <p class="card-text">오사카 여행팁</p>
	      <div class="card-footer">
		      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
	      </div>
	    </div>
	  </div>
	  <div class="card">
	    <img class="card-img-top" src="${contextpath}/img/KBJ/2.jpg" alt="Card image cap">
	    <div class="card-body">
	      <h5 class="card-title">여행팁 3</h5>
	      <p class="card-text">오사카 여행팁</p>
	      <div class="card-footer">
		      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
	      </div>
	    </div>
 	 </div>
 	 <div class="card">
	    <img class="card-img-top" src="${contextpath}/img/KBJ/1.jpg" alt="Card image cap">
	    <div class="card-body">
	      <h5 class="card-title">여행팁 3</h5>
	      <p class="card-text">오사카 여행팁</p>
	      <div class="card-footer">
		      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
	      </div>
	    </div>
 	 </div>
	</div>
</div>