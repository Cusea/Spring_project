<%@ page pageEncoding="UTF-8"%>

	<div class="wrap qa col-sm-2 text-center jumboron">
  <div id="sidebar-wrapper">
    <ul class="sidebar-nav">
      <li><a href="#">메뉴 1</a></li>
      <li><a href="#">메뉴 2</a></li>
      <li><a href="#">메뉴 3</a></li>
      <li><a href="#">메뉴 4</a></li>
      <li><a href="#">메뉴 5</a></li>
      <li><a href="#">메뉴 6</a></li>
      <li><a href="#">메뉴 7</a></li>
      <li><a href="#">메뉴 8</a></li>
      <li><a href="#">메뉴 9</a></li>
    </ul>
  </div>
		<div class="container">
			<div class="jumbotron">
			 	<div class="lead form-group">
					<img src="${contextpath}/img/KBJ/11a.jpg" alt class="rounded-circle" width="304" height="236"
					class="img-thumbnail" >
					<br>
					<label for="goodsImg">img</label>
					<input type="hidden" name="img" value="${goodsVo.img}">  
					<input type="file" id="goodsImg" class="form-control-file col-4" name="new_img" value="${goodsVo.name }">
				</div> 	
			</div>
		</div>
		
		
		
	    <div class="container">
		<p>여행팁의 제목을 입력하세요.(최대 30글자)</p>
	  		<form>
		    <div class="form-group">
		      
		      <textarea class="form-control" rows="5" id="comment"></textarea>
		    </div>
	  		</form>
		</div>
	    <button id="nextBtn" type="button" class="btn btn-warning">다음</button>     
	</div>
	<script>
		
	</script>
