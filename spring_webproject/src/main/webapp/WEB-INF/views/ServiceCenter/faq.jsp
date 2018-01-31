<%@ page pageEncoding="UTF-8"%>
<!-- 서비스 센터 헤더 -->
<div class="sc_back_img" style='background-image:url(${contextpath}/img/hosang/fuji.jpg);'>
	<div class="text-center" style="color:white; text-shadow: 2px 2px 2px black">
		<div class="" style="padding-top:100px;">
			<h1 class="display-4 font-weight-bold">일본 여행 정보</h1>
		</div>
		<div class="pt-2">
			<h2 class="font-weight-bold">나만의 여행 플래너</h2>
		</div>
	</div>
</div>
<!-- 서비스 센터 바디 -->
<div class="container-fluid pt-1 mt-3">
	<div class="row mb-3">
		<!-- 서비스 센터 사이드 버튼 -->
		<div class="col-sm-3 row justify-content-end sc_btn">
			<div class="col-8 list-group text-center " id="list-tab">
				<a class="list-group-item list-group-item-action" id="list-intro-list" href='${contextpath}/ServiceCenter/intro' aria-controls="">
					프로젝트 소개
				</a>
				<a class="list-group-item list-group-item-action active" id="list-faq-list" href='${contextpath}/ServiceCenter/faq' aria-controls="">
					FAQ
				</a>
				<a class="list-group-item list-group-item-action" id="list-contactUs-list" href='${contextpath}/ServiceCenter/ContactUs' aria-controls="">
					문의하기
				</a>
				<a class="list-group-item list-group-item-action" id="list-terms-list"  href='${contextpath}/ServiceCenter/terms' aria-controls="">
					이용약관
				</a>
				<a class="list-group-item list-group-item-action" id="list-pp-list" href='${contextpath}/ServiceCenter/pp' aria-controls="">
					개인정보 처리방침	<!-- pp는 Privacy policy -->
				</a>
			</div>
		</div>
		
		<!-- 서비스 센터 사이드 버튼 클릭시 출력 화면-->
		<div class="col-sm-9 offset-sm-3" >
			<div class="tab-content" id="nav-tabContent">
				
				<!-- FAQ 시작 -->
				<div class="tab-pane fade show active " id="list-faq" role="tabpanel" aria-labelledby="list-faq-list">
					<div class="border border-secondary border-top-0 border-left-0 border-right-0 py-2 pl-3">
						<h3 class="font-weight-bold">FAQ</h3>
					</div>
					<div class="card mt-3">
						<div class="card-header">- 클립이란 무엇인가요?</div>
						<div class="card-body">
							책을 읽다가 클립으로 중요한 부분에 표시해 두듯이, 어스토리에서는 '클립'을 누르면 해당 장소를 '클립한 장소'나 귀하의 '클립보드'에서 편리하게 확인할 수 있습니다.
							 가고 싶은 장소나 예약할 호텔, '클립'할 수 있습니다. 클립한 장소들로 일정을 만들면 여행이 더욱 편리해 집니다!
						</div>
					</div>
					<div class="card mt-3">
						<div class="card-header">- 어스토리에서 찾은 명소/식당/호텔 등 해당 시설에 연락해 줄 수 있나요?</div>
						<div class="card-body">
							어스토리는 해당 시설에 관한 여행정보를 제공하지만 예약, 취소, 결제, 변경 등에 관한 아무런 권한이 없음으로 해당 예약 사이트나 시설에 직접 문의하시기 바랍니다.
							 어스토리에서 각 명소의 스팟 상세 정보를 보시면 홈페이지나 전화번호를 확인하실 수 있습니다.
						</div>	
					</div>
					<div class="card mt-3">
						<div class="card-header">- 어스토리 서비스에 오류가 있습니다. 어디로 연락하나요?</div>
						<div class="card-body">
							최신 브라우저를 사용하고 있음에도 기타 어스토리 서비스에 관한 오류사항이나 기술적인 문제 등 불편사항이 있을 경우 '문의하기' 에 관련 내용을 남겨 주시길 부탁 드립니다. 빠른 시간내에 해당 사항을 확인 후 답변드리겠습니다.
							우리는 사용자들의 피드백을 환영하며 더 나은 서비스 제공을 위해 노력하고 있습니다. 
							서비스에 관한 문의 사항은 'FAQ'에서 검색해 보시기 바라며 찾는 내용이 없는 경우 '문의하기'를 통해 문의해 주시기 바랍니다.
							어스토리 서비스가 아닌, 링크된 제3자의 사이트에 관한 오류나 문제는 해당 사이트에 직접 문의해 주시기 바랍니다.
						</div>	
					</div>
					<div class="card mt-3">
						<div class="card-header">- 일정 만들기란 무엇인가요?</div>
						<div class="card-body">
							'일정 만들기'란 어스토리에서 나만의 여행 일정을 계획하는 기능으로, 내가 가고 싶은(클립한) 명소들의 위치를 지도에서 보며 동선을 계획하고 경로보기를 통해 가는 방법을 확인할 수 있습니다.
							 드래그 & 드롭하여 방문 순서를 정렬하면 자동으로 이동 동선과 경로가 보여집니다. 방문 일자별로 클립 명소들을 정렬하여 나만의 여행 일정을 손쉽게 만들 수 있습니다.
						</div>	
					</div>
					<div class="card mt-3">
						<div class="card-header">- 완성된 일정을 수정할 수 있나요?</div>
						<div class="card-body">
							내 일정은 언제든지 다시 수정할 수 있습니다. 마이페이지의 '여행일정'에서 일정 위에 마우스를 대면 '상세일정보기' 버튼이 보여집니다. '상세일정'으로 들어가면 일정 제목과 내용하단에 '수정하기'버튼이 있습니다. '수정하기'을 클릭하여 일정을 수정해 보세요.
						</div>	
					</div>
					<div class="card mt-3">
						<div class="card-header">- 일정 복사란 무엇인가요?</div>
						<div class="card-body">
							일정을 어떻게 계획해야 할지 난감하고 어렵다면 비슷한 여행자들의 일정을 검색하여 마음에 드는 일정을 '복사'해 보세요. 복사한 일정을 귀하의 스케줄에 맞게 편집하여 사용할 수 있습니다. 필요 없는 장소를 일정에서 삭제하거나 방문 순서를 바꾸거나 다른 장소/호텔/교통 등을 추가할 수 있습니다. 일정복사로 더 빨리 손쉽게 나만의 일정을 계획해 보세요.
						</div>	
					</div>
					<div class="card mt-3">
						<div class="card-header">- 여러 도시를 한 일정에 넣을 수 있나요?</div>
						<div class="card-body">
							가능합니다. 우선 일정 만들기를 시작해 보세요.
							지도에서 일정을 만드는 과정에서 새로운 도시를 추가하거나 다른 도시의 클립보드를 불러와 클립된 장소들을 일정에 넣을 수 있습니다. 여러 도시의 방문 일정을 순서대로 계획하시면 됩니다.
						</div>	
					</div>
					<div class="card mt-3">
						<div class="card-header">- 한 일정에 같은 장소를 여러 번 넣을 수 있나요?</div>
						<div class="card-body">
							하나의 장소(명소, 음식점, 호텔 등)를 여러 번 방문하실 계획인가요? '일정만들기' 페이지에서 그 장소를 드래그 하여 필요한 횟수만큼 일정에 반복적으로 넣을 수 있습니다.
						</div>	
					</div>
					<div class="card mt-3">
						<div class="card-header">- '클립보드'란 무엇인가요?</div>
						<div class="card-body">
							클립보드란 온라인 쇼핑에서 흔히 보는 일종의 '위시리스트'로, 도시별로 찜한 장소 리스트라 생각하면 쉽습니다. 여행지에서 도시별 명소/음식/쇼핑 리스트에서 관심있는 장소나 예약할 호텔, 교통편을 '클립'해 두면 해당 도시의 '클립보드' 또는 '클립한 장소' 리스트에서 클립된 장소들만 확인하실 수 있습니다. 클립보드에서 장소들의 정보를 확인하거나 메모를 남기거나 '지도'를 통해 위치를 확인할 수 있습니다. '메모'에는 장소별로 기억해야 할 내용을 기록하세요. 클립보드나 일정에서 메모를 확인할 수 있습니다. '일정 만들기' 버튼을 클릭하여 지도상에서 클립한 장소들의 위치를 보고 방문할 순서를 정렬하여 일정을 완성해 보세요. 여행이 더욱 편리해 집니다!
						</div>	
					</div>
					<div class="card mt-3">
						<div class="card-header">- 비밀번호를 잊어버렸습니다. 어떻게 찾을 수 있나요?</div>
						<div class="card-body">
							로그인 화면에서 '비밀번호 찾기'를 클릭하고 가입시 기입한 이메일 주소를 적어주세요. 해당 이메일로 임시 비밀번호를 발송해 드립니다.
						</div>	
					</div>
					<div class="card mt-3">
						<div class="card-header">- 어스토리 회원을 탈퇴하려면 어떻게 하나요?</div>
						<div class="card-body">
							로그인 후, 마이페이지 '설정'에서 회원정보 수정 하단에 '회원탈퇴' 버튼이 있습니다. 어스토리 계정을 삭제하고 탈퇴를 원하시면 이 버튼을 클릭하면 됩니다. 탈퇴 시에는 귀하의 정보와 클립보드, 일정 등 모든 내용이 삭제됩니다. 신중히 고려하시기 바랍니다.
						</div>	
					</div>
					<div class="card mt-3">
						<div class="card-header">- 회원 정보를 어떻게 수정하나요?</div>
						<div class="card-body">
							마이페이지 '설정'에서 회원 정보를 수정하실 수 있습니다. '회원정보 수정'에서 이름, 비밀번호 변경, 성별, 프로필 수정 및 회원탈퇴를 하실 수 있습니다. 이메일 주소의 변경은 가능하지 않습니다.
						</div>	
					</div>
					<div class="card mt-3">
						<div class="card-header">- 나의 개인정보가 안전한가요?</div>
						<div class="card-body">
							어스토리의 <a href="${contextpath}/ServiceCenter/pp">'개인정보 취급방침'</a> 내용을 확인하시기 바랍니다.
						</div>	
					</div>
					
				</div>
				<!-- FAQ 끝 -->
			</div>
		</div>
	</div>
</div>