<%@ page pageEncoding="UTF-8"%>

<div class="wrap">
	<div class="config_area">
		<div class="config_title">계정</div>
		<table class="config_table" width="100%">
			<colgroup>
				<col width="250">
				<col width="*">
			</colgroup>
			<tbody>
				<script type="text/javascript" src="http://code.jquery.com/jquery-2.1.0.min.js"></script>
				<script>
					$(function() {
						$("#inputFile").on('change', function(){
							readURL(this);
							});
						});
					function test(){
					$('#inputFile').click();
					}
					
					function readURL(img) {
						if (img.files) {
							var reader = new FileReader();
							reader.onload = function (e) {
								$('#img').attr('src', e.target.result);
								}
							reader.readAsDataURL(img.files[0]);
							}
						}
				</script>


				<tr>
				<!-- 유저아이디 -->
					<th>　　이메일 주소</th>
					<td><input type="text" name="email_address" class="t_input" value="rbfksep@gmail.com" disabled></td>
				</tr>
				<tr>
					<td class="space">&nbsp;</td>
				</tr>
				<tr>
				<!-- 유저이름 -->
					<th>　　이름</th>
					<td><input type="text" name="name" class="t_input" value="이승현"></td>
				</tr>
				<tr>
					<td class="space">&nbsp;</td>
				</tr>
				<tr>
					<th>　　이미지</th>
					<td>
					<img src="/img/SH/기본.jpg" alt class="my_img_change" style="width:120px" onclick="test()"
		 	   			 id="img" alt='/img/SH/기본.jsp' >
					<input type="file" id='inputFile'>
					<img src="">
					</td>
				</tr>
				<tr>
					<td class="space">&nbsp;</td>
				</tr>
				<tr>
					<td class="space">&nbsp;</td>
				</tr>
				<tr>
					<td class="space">&nbsp;</td>
				</tr>
				<tr>

					<!-- 비밀번호변경 -->
					<th>　　비밀번호</th>
					<td>
						<button type="button" class="pw_reset" data-toggle="modal" data-target="#myModal">비밀번호 변경</button>
						<div class="modal fade" id="myModal" role="dialog">
							<div class="modal-dialog">
								<!-- Modal content-->
								<div class="modal-content">
									<div class="modal-header">
										<h4 class="modal-title">비밀번호 변경</h4>
										<button type="button" class="close" data-dismiss="modal">&times;</button>
									</div>
									<div class="modal-body">

										<input type="password" placeholder="현재 비밀현호" class="pw_input old_pw" name="old_pw">
										<br><br>
										<input type="password" placeholder="신규 비밀현호" class="pw_input new_pw" name="new_pw">
										<br><br>
										<input type="password" placeholder="신규 비밀현호 확인" class="pw_input pw_vali" name="pw_vali">
										<br>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn" data-dismiss="modal">완료</button>
									</div>
								</div>
							</div>
						</div>
					</td>		
				</tr>
				<tr>
					<td class="space">&nbsp;</td>
				</tr>
			</tbody>
		</table>
		<div class="config_foot">
			<a href="" class="leavelink">회원탈퇴</a>
			<a href="#" class="btn_submit">수정사항 저장</a>
			<div class="clear"></div>
		</div>
	</div>
</div>