<%@ page pageEncoding="UTF-8"%>

<div class="container-fluid">
	<div class="row-fluid">
		<!-- 사이드바 -->
		<div class="span2">
			<ul class="sidebar-nav">
				<li><a href="#">메뉴1</a></li>
				<li><a href="#">메뉴2</a></li>
				<li><a href="#">메뉴3</a></li>
				<li><a href="#">메뉴4</a></li>
			</ul>
		</div>
		<div class="span10">
			<!-- 본문 -->
			<div class="lead form-group">
				<img src="${contextpath}/img/KBJ/11a.jpg" class="rounded-circle" width="304" height="236" class="img-thumbnail">
				<br>
				<input type="file" class="form-control-file" name="new_img">
			</div>
				<div class="container">
					<p>여행팁의 제목을 입력하세요.(최대 30글자)</p>
					<form>
						<div class="form-group">
							<textarea rows="5" cols="form-control" id="comment"></textarea>
						</div>
					</form>
				</div>
				<button id="nextBtn" type="button" class="btn btn-warning">다음</button>
		</div>
	</div>
</div>