<%@ page  pageEncoding="UTF-8"%>

<!-- 전체 QnA 보여주는 페이지?, 검색결과 보여주는 페이지? 전체 게시판들 보여주면서 검색을 하면 검색한 결과만 보여주게 한다? -->
	<div class="wrap qa col-sm-12 text-center jumbotron container">  <!-- jumbotron (뭔가 회색배경을 주는데?) -->
		<div class="qa_nav_box col-sm-12 text-center">
			<a href="${contextpath}/">일본여행사이트</a> >
			<span>QnA</span>
		</div>
		<hr>
		<div class="qa_header_box col-sm-12 text-center" style="background-image: url(${contextpath}/img/QnA/qa_hbg.jpg)">
			<div class="qa_title">
				<marquee behavior="alternate" scrolldelay="120" direction="left"><mark>궁금하신 점이 있으신가요?</mark></marquee>
			</div>
			<div class="qa_desc">
				일정, 장소, 교통 등에 관한 질문을 자유롭게 남겨보세요.<br>
				저희 한빚 아니 일본여행 사이트에서 세계 각지를 방문한 여행자들이 도움을 드립니다.
				아! 오사카, 후쿠오카만 가능해요.
			</div>
			<div class="search_box">
				<input type="text" class="qa_search" placeholder="오사카숙소, 후쿠오카여행, 오사카맛집" style="background-image: url(${contextpath}/img/QnA/search_icon.png)">
				<div class="tags"></div>  <!-- 태그로 검색하니까 해논건가??? -->  
			</div>
		</div>  <!-- qa_header_box END -->
		
		<div class="qa_mnu_box">
			<div class="qa_mnu on" data-val="regdate">  <!-- 클릭하면 새로고침 같은거군 -->
				새로운 질문
			</div>
			<div class="qa_mnu_line"><!-- 가로막는 짝대기 하나 추가 --></div>
			<button id="" type="button" class="btn btn-primary q_btn" data-toggle="modal" data-target="#myModal">
	 	    	질문하기
			</button>
			<div class="clear"></div>  <!-- clear 이건뭐여? -->
		</div>  <!-- qa_mnu_box END -->
		
		
		
	<!-- 질문리스트 샘플 -->
		<div class="qa_list">
			<div class="box">
				<a class="q_num_box" href="${contextpath}/QnA/DetailQnA.do">샘플 질문게시판</a>  
				<div class="user_img" style="background-image: url(${contextpath}/img/QnA/작은표범.png)"></div>
				<div class="content_box"> 
					<div class="subject">샘플 제목: 오사카 추천좀요 </div>
					<div class="content"><pre>내용: 맛집 위주로 추천해주세요.</pre></div>
					<div class="tag_box">
						<div class="tag">오사카</div>
						<div class="tag">라멘</div>
						<div class="clear"></div> 
					</div>
					<div class="info_box">
						<div class="user_name">KDH</div>
						<div class="info_line"></div>
						<div class="write_datetime">2018-01-06 18:46</div>
						<div class="a_cnt" style="background-image: url(${contextpath}/img/QnA/qa_btn.gif)">1</div>  <!-- 답변 수 -->
						<div class="clear"></div> 
					</div>
				</div>
			</div>
		</div>
	<!-- 질문리스트 샘플 end -->
		
		<!-- 실제 게시글 -->
			<c:forEach items="${questionList}" var="questionVo">
				<div class="qa_list">
					<div class="box">												<!-- ?num="+num+"   ?num="${questionVo.num} -->
						<a class="q_num_box" href="${contextpath}/QnA/DetailQnA/${questionVo.num}">${questionVo.num}번째 질문게시판</a>
						<div class="user_img" style="background-image: url(${contextpath}${questionVo.user_imageadd})"></div>
						<div class="content_box"> 
							<div class="subject"><strong>제목: ${questionVo.title}</strong></div>
							<div class="content"><pre>내용: ${questionVo.text}</pre></div>
							<div class="tag_box">
								<div class="tag">${questionVo.tag_name}</div>  <!-- 여러개의 태그가 있으면? -->
								<div class="clear"></div> 
							</div>
							<div class="info_box">
								<div class="user_name">${questionVo.user_name}</div>  <!-- 이건 user테이블 네임 -->
								<div class="info_line"></div>
								<div class="write_datetime">${questionVo.indate}</div>
								<div class="a_cnt" style="background-image: url(${contextpath}/img/QnA/qa_btn.gif)">${answerVO.num}</div>  <!-- 답변 수 count -->
								<div class="clear"></div> 
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		
		<div class="more_btn" onclick="get_list('2');$(this).remove();">더보기</div>  <!-- 더보기 버튼 누를때마다 get_list('up') --> <!-- $(this).remove(); 이건뭐임??? -->
	</div>  <!-- wrap qa end -->
	
	
	
	
<!-- The Modal -->
<!-- form해야 button reset 됨. -->
<form action="QnA.do" method="post" name="insertForm">
	<div class="modal fade" id="myModal">  <!-- modal뜨면 배경 div (배경은 안눌리게 하고싶은데) -->
		<div class="modal-dialog modal-lg">
			<div class="modal-content pl-3" style="background-color: skyblue">  
			<div class="modal-header">
			<div align="left" class="modal-header_qa"><strong>질문하기 </strong></div>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>
			<br>
			<div class="modal-header_qa pl-3 pr-3 pb-1" align="left">
				<label for="modal_title_text"><strong>제목 </strong></label>
				<input type="text" class="qa_title_te px-1 form-control pr-1" id="modal_title_text" placeholder="제목" maxlength="30" data-length="30"> 
				<small style="display: inline-block;" id="modal_title_text">0/30</small>
				<hr>
			</div>
			<div class="modal-body">
				<label for="modal_body_text"><strong>내용:</strong></label>
				<textarea class="q_textarea px-1 form-control pr-1" rows="10" cols="60" maxlength="1000" onkeyup="keyup()"></textarea>
				<small id="modal_body_text">0/1000</small>
			</div>
			<div class="modal-footer">
				<div class="modal_footer_tagText">  <!-- modal-footer  -->
					<label>태그</label>
				   <input type="text" class="modal_footer_tagText" maxlength="30" placeholder="태그입력"> 
					<small>0/30</small>
				</div>
				<button type="reset" class="btn btn-info">초기화</button>
				<button type="submit" class="btn btn-primary">완료</button>  <!-- data-dismiss="modal" ??? -->
			</div>
			</div>
		</div>
	</div>
</form>



<script>
	$(document).ready(function(){
		// tag찾을때 자동완성 해주는거 만들기.
		/* $('.qa_search').keyup(function(e){
			$('.qa_title').text(lang_ex(lang.tag_search_result_msg,$('.qa_search').val()));
		}); */
		
		//질문검색창에 엔터키 입력하면 searchBook() 실행.
	    $("input[class=qa_search]").keydown(function (key) {
	        if(key.keyCode == 13){  //keyCode == 13 == enterKey
	            searchBook();
	        }
	    });
		
        //검색 찾는 로직 구현
	    searchBook = function (){
	        if($("input[class=qa_search]").val().trim() == ""){
	        	alert("검색어를 입력해 주세요.")
	        }else{
	        	alert($("input[class=qa_search]").val() 
	        			+ "<- 를 입력 하셨지만 아직 구현중.. 검색하면 태그로 검색결과 뜨고 검색한 태그로 질문박스 나열 하기..");
	        }
	    };
	    
	    /* 글자수 세기 만드는중... */
		$('.qa_title_te').keyup(function(){
			$("#modal_body_text").val("ggg");
		});
	    
	    /* $.ajax({
	    	type: "POST",
	    	url: "./ClickQnA",
	    	dataType: "json",
	    	success: function(result) {
	    		
	    	}
	    	
	    }); */
	    
	});  /* function end */
</script>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
