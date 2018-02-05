<%@ page pageEncoding="UTF-8"%>
<!-- 질문게시판 클릭하면 해당 게시글의 내용과 답변(답변도 달수 있게)들만 볼수 있다. -->
<!-- 클릭하면 해당 게시판 번호로 내용,댓글, 등등 정보를 받아야 하겠군 -->

<div class="wrap qa col-sm-12 text-center jumbotron container">
	<div class="qa_nav_box col-sm-12 text-center">
		<a href="${contextpath}/">일본여행사이트</a> >
		<a href="${contextpath}/QnA/QnA.do">QnA</a> >
		<span>(여기는 게시판의 제목이 나옴)</span>
	</div>
	
	<div class="search_box pb-1 mb-3">
		<input type="text" class="qa_search" placeholder="오사카숙소, 후쿠오카여행, 오사카맛집" style="background-image: url(${contextpath}/img/QnA/search_icon.png)">
		<div class="tags"></div>  <!-- 태그로 검색하니까 해논건가??? -->  
	</div>
	
	<!-- 상세 질문 -->
		<div class="box_q" id="qa_detail" style="background-color: #fff">
			<div class="box_type" align="left">Q</div>  <!-- 질문은 사진위에 Q 표시 만들기. -->
			<div class="user_img" style="background-image: url(${contextpath}/img/QnA/작은표범.png)"></div>
			<div class="content_box"> 
				<div class="subject">제목: ${questionVO.title}</div>
				<div class="content">
					<pre>내용: ${questionVO.text}</pre>
				</div>
				<div class="tag_box p-2" style="border-bottom: 1px solid #79857d;">
					<div class="tag">${questionVO.tag_name}</div>
					<div class="tag">${questionVO.tag_name}</div>
					<div class="clear"></div> 
				</div>
				<div class="info_box">
					<div class="user_name">${questionVo.user_name}</div>
					<div class="info_line"></div>
					<div class="write_datetime">${questionVo.indate}</div>
					<div class="a_cnt" style="background-image: url(${contextpath}/img/QnA/qa_btn.gif)">1</div>  <!-- 답변 수 -->
					<div class="clear"></div> 
				</div>
			</div>
		</div>
	<!-- 상세 질문 end -->
	
	<!-- 답변 -->
	<div class="a_title p-4">
		<span><strong>1</strong></span>  <!-- span으로 답변의 수를 받는건가??? -->
		개의 답변   
	</div>
	
	<div class="a_list" style="background-color: #fff">  <!-- 답변 리스트 -->
		<div class="aa_box">
			<div class="box_type" align="left">A</div>
			<div class="user_img" style="background-image: url(${contextpath}/img/QnA/작은표범.png)"></div>
			<div class="content"><pre>내용: ${answerVO.text}</pre></div>
			<div class="tag_box" style="border-bottom: 1px solid #79857d;">
				<div class="tag">${answerVO.tag_name}</div>
				<div class="clear"></div> 
			</div>
			<div class="info_box">
				<div class="user_name">${answerVO.user_name}</div>
				<div class="info_line"></div>
				<div class="write_datetime">${answerVO.indate}</div>
				<div class="a_cnt" style="background-image: url(${contextpath}/img/QnA/qa_btn.gif)">1</div>  <!-- 답변 수 -->
				<div class="clear"></div> 
			</div>
		</div>
	</div>
	
</div>





























