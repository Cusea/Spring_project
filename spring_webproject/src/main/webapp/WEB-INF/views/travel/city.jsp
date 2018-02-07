<%@ page pageEncoding="UTF-8"%>
<nav class="jumbotron">
	<div class="container border border-bottom-0">
	<h3>${city_info.name} <small></small></h3>
		<ul id="test" class="nav nav-pills row bg-info" role="tablist">
			<li class="col-sm nav-item">
				<a class="nav-link active text-white" data-toggle="pill" href="#nav-main">홈</a>
			</li>
			<li class="col-sm nav-item">
				<a class="nav-link text-white" data-toggle="pill" href="#nav-landmark">관광명소</a>
			</li>
			<li class="col-sm nav-item">
				<a class="nav-link text-white" data-toggle="pill" href="#nav-food">음식점</a>
			</li>
			<li class="col-sm nav-item">
				<a class="nav-link text-white" data-toggle="pill" href="#nav-shop">쇼핑</a>
			</li>
			<li class="col-sm nav-item">
				<a class="nav-link text-white" data-toggle="pill" href="#nav-tip">여행 tip</a>
			</li>	
	    	<li class="col-sm nav-item">
	    		<a class="nav-link text-white" data-toggle="pill" href="../../Schedule/make1.do">여행일정</a>
	    	</li>	
	    	<li class="col-sm nav-item">
	    		<a class="nav-link text-white" data-toggle="pill" href="#nav-map">지도보기</a>
	    	</li>	
		</ul>
	</div>
	<div class="tab-content container">
		<div id="nav-main" class="tab-pane fade show active">
			<div class="row">
				<div class="col-sm-6 d-block">
					<div id="carousel" class="carousel slide" data-ride="carousel">
					  <div class="carousel-inner">
					    <div class="carousel-item active">
					      <img class="d-block w-100 rounded" src="${contextpath}/img/city/${city_info.arr[0]}" alt="First slide">
					    </div>
					    <div class="carousel-item">
					      <img class="d-block w-100 rounded" src="${contextpath}/img/city/${city_info.arr[1]}" alt="Second slide">
					    </div>
					    <div class="carousel-item">
					      <img class="d-block w-100 rounded" src="${contextpath}/img/city/${city_info.arr[2]}" alt="Third slide">
					    </div>
					  </div>
					   	<a class="carousel-control-prev" href="#carousel" role="button" data-slide="prev">
						    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
						</a>
						<a class="carousel-control-next" href="#carousel" role="button" data-slide="next">
						    <span class="carousel-control-next-icon" aria-hidden="true"></span>
						</a>
					</div>
				</div>	  
				<div class="col-sm-6 bg-warning">
				정보
				</div>
			</div>
		</div>
		<div id="nav-landmark" class="tab-pane fade">
			<div class="table nav nav-pills bg-light container col-6"> 
		       <a class="nav-item nav-link active" data-toggle="tab" href="#land-all" role="tab">전체</a>
		       <a class="nav-item nav-link" data-toggle="tab" href="#land-spot" role="tab">관광지</a>
		       <a class="nav-item nav-link" data-toggle="tab" href="#land-actibity" role="tab">레저/액티비티</a>
		       <a class="nav-item nav-link" data-toggle="tab" href="#land-night" role="tab">나이트라이프</a>
			</div>
			<div class="tab-content">
				<div></div>
				<div></div>
				<div></div>
				<div></div>
			</div>   
		</div>
		<div id="nav-food" class="tab-pane fade">
			<table class="table">
			    <thead>
			      <tr>
			        <th><input type="checkbox">First</th>
			        <th>Lastname</th>
			        <th>Email</th>
			      </tr>
			    </thead>
			    <tbody>
			      <tr>
			        <td><input type="checkbox">John</td>
			        <td><input type="checkbox">Doe</td>
			        <td><input type="checkbox">john@example.com</td>
			      </tr>
			      <tr>
			        <td>Mary</td>
			        <td>Moe</td>
			        <td>mary@example.com</td>
			      </tr>
			      <tr>
			        <td>July</td>
			        <td>Dooley</td>
			        <td>july@example.com</td>
			      </tr>
			      </tbody>
			      <tbody id="demo" class="collapse">
			      <tr>
			      	<td>11</td><td>12</td><td>13</td>
			      </tr>
			      <tr>
			      	<td>1</td><td>2</td><td>3</td>
			      </tr>
			      <tr>
			      	<td>11</td><td>12</td><td>13</td>
			      </tr>
			      <tr>
			      	<td>11</td><td>12</td><td>13</td>
			      </tr>
			    </tbody>
			  </table>
			    <button class=" btn col-12 btn-primary" data-toggle="collapse" data-target="#demo">더어어어보기</button>
			  
		</div>
		<div id="nav-schedule" class="tab-pane fade">
		
		</div>
	</div>
</nav>
<div id="secondDiv"class="container">
	<div id="main" class="tab-pane fade show active nav-main">

		${category.main_category_list}<br>
		<c:forEach items="${category.sub1}" var="val">
			//${val.sub_category}<br>
			${val.num}
			<br><br>
		</c:forEach>
		
		
	</div>
	</div>
	<div id="" class="tab-pane fade nav-landmark">
		안되니?
	</div>
	<div id="갈라짐" class="row">
		<div class="col-8 bg-info">
		왼쪽
		</div>
	</div>
</div>
<script>
var func=function(val){
	console.log("ddd: "+val);
};
$("#test").on("click",function(){
	var val=$(this);
	console.log("ssss: "+this.data);
});

</script>