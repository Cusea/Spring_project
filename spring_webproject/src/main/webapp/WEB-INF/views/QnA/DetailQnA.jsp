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
	
	<!-- 질문리스트 샘플 -->
		<div class="box_q" id="qa_detail" style="background-color: #ffffff">
			<div class="box_type" align="left">Q</div>  <!-- 질문은 사진위에 Q 표시 만들기. -->
			<div class="user_img" style="background-image: url(${contextpath}/img/QnA/작은표범.png)"></div>
			<div class="content_box"> 
				<div class="subject">제목: 오사카 추천좀요</div>
				<div class="content">
					<pre>내용: 맛집 위주로 추천해주세요.맛집 위주로 추천해주세요.맛집 위주로 추천해주세요.맛집 위주로 추천해주세요.맛집 위주로 추천해주세요.맛집 위주로 추천해주세요.
맛집 위주로 추천해주세요.맛집 위주로 추천해주세요.맛집 위주로 추천해주세요.맛집 위주로 추천해주세요.맛집 위주로 추천해주세요.맛집 위주로 추천해주세요.
맛집 위주로 추천해주세요.맛집 위주로 추천해주세요.맛집 위주로 추천해주세요.맛집 위주로 추천해주세요.맛집 위주로 추천해주세요.맛집 위주로 추천해주세요.
맛집 위주로 추천해주세요.맛집 위주로 추천해주세요.맛집 위주로 추천해주세요.맛집 위주로 추천해주세요.맛집 위주로 추천해주세요.맛집 위주로 추천해주세요.
맛집 위주로 추천해주세요.맛집 위주로 추천해주세요.맛집 위주로 추천해주세요.맛집 위주로 추천해주세요.맛집 위주로 추천해주세요.맛집 위주로 추천해주세요.
맛집 위주로 추천해주세요.맛집 위주로 추천해주세요.맛집 위주로 추천해주세요.맛집 위주로 추천해주세요.맛집 위주로 추천해주세요.맛집 위주로 추천해주세요.
맛집 위주로 추천해주세요.맛집 위주로 추천해주세요.맛집 위주로 추천해주세요.맛집 위주로 추천해주세요.맛집 위주로 추천해주세요.맛집 위주로 추천해주세요.
맛집 위주로 추천해주세요.맛집 위주로 추천해주세요.맛집 위주로 추천해주세요.맛집 위주로 추천해주세요.맛집 위주로 추천해주세요.맛집 위주로 추천해주세요.
맛집 위주로 추천해주세요.맛집 위주로 추천해주세요.맛집 위주로 추천해주세요.맛집 위주로 추천해주세요.맛집 위주로 추천해주세요.맛집 위주로 추천해주세요.
</pre>
				</div>
				<div class="tag_box p-2" style="border-bottom: 1px solid #79857d;">
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
	<!-- 질문리스트 샘플 end -->
	
	
	
	<!-- 답변 샘플 -->
	<div class="a_title p-4">
		<span>1</span>  <!-- span으로 답변의 수를 받는건가??? -->
		"개의 답변   "
	</div>
	
	
	<div class="a_list" style="background-color: #fff">  <!-- 답변 리스트 -->
		<div class="aa_box">
			<div class="box_type" align="left">A</div>
			<div class="user_img" style="background-image: url(${contextpath}/img/QnA/작은표범.png)"></div>
			<div class="content"><pre>내용: 맛집 위주로 추천해줄게요 여기가 맛있고 저기는 맛없어요.</pre></div>
			<div class="tag_box" style="border-bottom: 1px solid #79857d;">
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





























