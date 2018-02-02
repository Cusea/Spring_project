<%@ page pageEncoding="UTF-8"%>

<div class="bg-success">
 <h1>내 이미지와 배경사진</h1>
<br><br><br><br><br>
</div>	
<hr>
<div class="container">
		<div class="tab">
		  <button class="tablinks" onclick="openCity(event, 'London')">개요</button>
		  <button class="tablinks" onclick="openCity(event, 'Paris')">일정표</button>
		  <button class="tablinks" onclick="openCity(event, 'Tokyo')">댓글</button>
		</div>


		
		
		<div id="London" class="tabcontent active_jds">
		    <div class="tab-pane fade show acitve">
				<div id="accordion" role="tablist">
		  		<div class="card">
		   		<div class="card-header" role="tab" id="headingOne">
		      	<h5 class="mb-0 text-center">
		        <a data-toggle="collapse" href="#collapseOne" role="button" aria-expanded="true" aria-controls="collapseOne">
		       		 장소: ${planDetail.num}</a>
		      </h5>
		    </div>
		
		    <div id="collapseOne" class="collapse show" role="tabpanel" aria-labelledby="headingOne" data-parent="#accordion">
		      <div class="card-body">
		 			여기는 어쩌고 저쩌고~~~~~~~~
		      </div>
		    </div>
		  </div>
		  <div class="card">
		    <div class="card-header" role="tab" id="headingTwo">
		      <h5 class="mb-0 text-center">
		        <a class="collapsed" data-toggle="collapse" href="#collapseTwo" role="button" aria-expanded="false" aria-controls="collapseTwo">
		         두번째로 선택한 장소
		        </a>
		      </h5>
		    </div>
		    <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo" data-parent="#accordion">
		      <div class="card-body">
		        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~``
		      </div>
		    </div>
		  </div>
		  <div class="card">
		    <div class="card-header" role="tab" id="headingThree">
		      <h5 class="mb-0 text-center">
		        <a class="collapsed" data-toggle="collapse" href="#collapseThree" role="button" aria-expanded="false" aria-controls="collapseThree">
		          세번째로 선택한 장소
		        </a>
		      </h5>
		    </div>
		    <div id="collapseThree" class="collapse" role="tabpanel" aria-labelledby="headingThree" data-parent="#accordion">
		      <div class="card-body">
		       사랑랑ㄹ아랑사랑램냉러ㅏㄴㅇ래러;ㅣㅁ넹레[]
		      </div>
		    </div>
		  </div>
		</div>
		</div>
		</div>
	
		
<!-- aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa -->
<div id="Paris" class="tabcontent">
  <table class="table">
				<thead>
						<tr>
								<th>도시</th><th>DAY</th><th>여행장소</th>
						</tr>	
				</thead>
				<tbody>
								<!--db에서 불러와서 쓰자.~~~~ -->
				
				</tbody>		

		</table>
</div>

<div id="Tokyo" class="tabcontent">
  <div class="form-group">
						    <label for="exampleFormControlTextarea1">댓글달기</label>
						    <textarea class="form-control" id="exampleFormControlTextarea1" rows="6"></textarea>
						    <button type="button" class="btn btn-secondary">완료</button>
						  	</div>
						  	<hr>
					  		<div class="container" id="com_re">
					  			<div class="content_box">  
									<div class="content">좋아요~~~~~~~알라뷰</div>
									<div class="tag_box">
									<div class="tag">후쿠오카</div>
									<div class="clear"></div>  
								</div>
							<div class="info_box">
									<div class="user_name">지동석</div>
									<div class="info_line"></div>  
									<div class="write_datetime">2018-01-015</div>
									<div class="clear"></div>  
							<div class="more_btn" onclick="">더보기</div>   
								</div>
							</div>
</div>
</div>
</div>
<script>
function openCity(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}
</script>
     