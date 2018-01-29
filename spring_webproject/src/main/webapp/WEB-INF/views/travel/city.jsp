<%@ page pageEncoding="UTF-8"%>
<nav class="jumbotron">
	<div class="container border border-bottom-0">
	<h3>안녕 <small>hi</small></h3>
	<div id="test" class="nav nav-pills row bg-info" role="tablist">
		<a class="col-sm nav-item nav-link text-white active" data-toggle="tab" href="#nav-main" role="tab" aria-selected="true">홈</a>
		<a class="col-sm nav-item nav-link text-white" data-toggle="tab" href="#nav-landmark" role="tab" aria-selected="false">관광명소</a>
		<a class="col-sm nav-item nav-link text-white" data-toggle="tab" href="#nav-food" role="tab" aria-selected="false">음식점</a>
		<a class="col-sm nav-item nav-link text-white" data-toggle="tab" href="#nav-tip" role="tab" aria-selected="false">여행 tip</a>
    	<a class="col-sm nav-item nav-link text-white" data-toggle="tab" href="#nav-schedule" role="tab" aria-selected="false">여행일정</a>
    	<a class="col-sm nav-item nav-link text-white" data-toggle="tab" href="#nav-map" role="tab" aria-selected="false">지도보기</a>
	</div>
	</div>
	<div class="tab-content">
		<div class="container">
		<div id="nav-main" class="tab-pane fade show active" role="tabpanel">
			<div class="row">
				<div class="col-sm-6 d-block bg-info">
				사진
				</div>	  
				<div class="col-sm-6 bg-warning">
				정보
				</div>
			</div>
		</div>
		<div id="nav-landmark" class="tab-pane fade"role="tabpanel">
			<div class="table nav nav-pills"> 
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
		<div id="nav-food" class="tab-pane fade col" role="tabpanel">
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
		<div id="nav-schedule" class="tab-pane fade" role="tabpanel">
		
		</div>
		</div>
	</div>
</nav>
<div class="container bg-primary">
	<div id="main" class="tab-pane fade show active nav-main">
		되니 안되니
	</div>
	</div>
	<div id="" class="tab-pane fade nav-landmark">
		안되니?
	</div>
	<div id="갈라짐" class="row">
		<div class="col-8 bg-info">
		왼쪽
		</div>
		<div class="col-4 bg-secondary">
		오른쪽
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