<%@ page pageEncoding="UTF-8"%>

<div id="my_top">
	<div class="my_top_cover" style="background-image:url(${contextpath}/img/SH/영국.jpg); background-size:cover; center center;">
		<div class="my_top_title">Q&A</div>
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
			<br><br>
			<div class="container">
				<ul class="nav nav-pills">
					<li class="nav-item"><a data-toggle="pill" href="#home" id="myq">나의 질문</a></li>
					<h5>　|　</h5>
					<li><a data-toggle="pill" href="#menu1">나의 답변</a></li>
					<h5>　|　</h5>
					<li><a data-toggle="pill" href="#menu2">북마크</a></li>
					<h5>　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　</h5>
					<li><button class="mtop_btn" target="_blank" onclick="location.href='${contextpath}/QnA/QnA.do';">질문하기</button></li>
				</ul>
				<div class="tab-content">
					<div id="home" class="tab-pane fade in active">
						
					</div>
					<div id="menu1" class="tab-pane fade">
						<p>나의 답변</p>
					</div>
				    <div id="menu2" class="tab-pane fade">
						<p>북마크</p>
					</div>
				</div>
			</div>
		</div>
	</div>
<script>
	$("#myq").click(function(){
		console.log(${login.num});
		$.ajax({
			url:"myq/"+${login.num},
			dataType: "json",
			type: "get",
			success: function(data,status,req){
				console.log(data);
			},	
		});
		
	});
</script>
</div><!-- 바디끝 -->
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>