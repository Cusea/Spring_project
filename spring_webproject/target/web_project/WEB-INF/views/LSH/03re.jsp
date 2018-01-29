<%@ page pageEncoding="UTF-8"%>

<div id="my_top">
	<div class="my_top_cover" style="background-image:url(${contextpath}/img/SH/top3.jpg); background-size:cover; center center;">
		<div class="my_top_title">리뷰</div>
	</div>
	<div class="my_top_menu_box">
		<div class="my_top_menu_bg"></div>
		<div id="my_top_menu" class="my_top_menu">
			<a id="cl" href="${contextpath}/LSH/01cl.do" class="my_menu">클립보드</a>
			<a id="pl" href="${contextpath}/LSH/02pl.do" class="my_menu">여행일정</a>
			<a id="re" href="${contextpath}/LSH/03re.do" class="my_menu">리뷰</a>
			<a id="tip" href="${contextpath}/LSH/04tip.do" class="my_menu">여행Tip</a>
			<a id="qna" href="${contextpath}/LSH/05qna.do" class="my_menu">Q&A</a>
			<a id="set" href="${contextpath}/LSH/set.do" class="set">설정</a>
			<div class="clear"></div>
		</div>
	</div>
	<div id="content">
		<div class="content">
			<div class="m_top">
				<div class="review_tleft">정렬순서 : </div>
				<div class="review_sort_box">
					<select name id class="review_sort">
						<option value="regdate">최신순</option>
						<option value="name">이름순</option>
					</select>
				</div>
				<button class="mtop_btn" target="_blank">리뷰쓰기</button>
				</div>
				<div class="clear"></div>
				<br>
			<div class="review_inner"></div>
		</div>
		
	</div>
</div><!-- 바디끝 -->

<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>