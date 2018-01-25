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
				<a class="list-group-item list-group-item-action" id="list-faq-list" href='${contextpath}/ServiceCenter/faq' aria-controls="">
					FAQ
				</a>
				<a class="list-group-item list-group-item-action" id="list-contactUs-list" href='${contextpath}/ServiceCenter/ContactUs' aria-controls="">
					문의하기
				</a>
				<a class="list-group-item list-group-item-action" id="list-terms-list"  href='${contextpath}/ServiceCenter/terms' aria-controls="">
					이용약관
				</a>
				<a class="list-group-item list-group-item-action active" id="list-pp-list" href='${contextpath}/ServiceCenter/pp' aria-controls="">
					개인정보 처리방침	<!-- pp는 Privacy policy -->
				</a>
			</div>
		</div>
		
		<!-- 서비스 센터 사이드 버튼 클릭시 출력 화면-->
		<div class="col-sm-9 offset-sm-3" >
			<div class="tab-content" id="nav-tabContent">
				
				<!-- 개인정보 처리방침 시작 -->
				<div class="tab-pane fade show active" id="list-pp" role="tabpanel" aria-labelledby="list-pp-list">
					<h3 class="font-weight-bold mb-3">개인정보 처리 방침</h3>
					<div class="border border-secondary border-top-0 border-left-0 border-right-0 py-2 pl-3 h4">기본 사항</div>
					<div>
						귀하가 개인정보를 중요하게 생각하고 있다는 것을 알고 있으며, 저희도 동일하게 생각합니다. 
						본 개인정보취급방침은 귀하가 당사의 서비스를 사용하는 경우 당사가 귀하에 대한 정보를 수집, 
						사용 및 공유하는 방식과 그 시기를 규정합니다. 
						귀하는 본 서비스를 사용함으로써 본 방침에 기재된 귀하에 대한 정보를 수집, 
						이전, 조작, 보관, 공개 및 기타 사용하는데 동의합니다. 
						귀하가 거주하거나 정보를 제공하는 국가가 어디인지를 불문하고 귀하는 
						당사의 사업을 운영하는 대한민국이나 기타 국가에서 당사가 귀하의 정보를 사용할 수 있도록 승인합니다. 
					</div>
					<div class="border border-secondary border-top-0 border-left-0 border-right-0 py-2 pl-3 h4">개인정보의 수집</div>
					<div>
						귀하가 회사에 제공하는 개인정보: 회사는 귀하가 본 서비스를 사용하면서 입력하거나 
						그 밖의 방식으로 회사에 제공하는 정보를 수령하고 보관합니다. 
						수집되는 개인정보의 종류에는 귀하의 이름, 비밀번호, 이메일 주소, google/kakao/naver 의
						사용자이름, 귀하의 본 서비스 이용에 관한 이용 정보, 그리고 브라우저 정보가 포함될 수 있습니다. 
						귀하가 제공하는 개인정보는 귀하가 서비스를 통해서 다른 사용자들과 상호작용하기 위해서 
						사용될 수 있는 사용자 계정과 프로필을 설정하도록 합니다. 
						회사는 네트워크와 서비스의 효과를 연구하며, 커뮤니티를 위한 새로운 도구를 
						개발하기 위해서 이 개인정보를 활용할 수도 있습니다. 
						자동으로 수집되는 정보: 귀하가 본 서비스를 사용할 때, 
						당사는 자동으로 당신의 브라우저나 모바일 플랫폼에서 
						당신의 위치, IP 주소, 쿠키 정보, 요청한 페이지를 포함한 정보를 받아 
						우리의 서버 로그에 저장합니다. 
						우리는 적용 법률에서 요구하지 않는 한 이 데이터를 비 개인정보로 취급합니다. 
						이 개인정보 보호정책에 언급되지 않는 한, 당사는 이 데이터를 오직 누적된 형태로만 사용합니다. 
						회사는 파트너들에게 당사의 사용자들이 어떻게 서비스를 사용하는지에 대한 
						누적된 정보를 제공할 수 있습니다. 
						당사가 제3자에게 받는 정보: 어떤 방식으로 서비스와 연계되거나 서비스와 관련하여 
						당사에게 서비스를 제공하는 제3자로부터 정보를 받아 저장할 수 있습니다. 
					</div>
					<div class="border border-secondary border-top-0 border-left-0 border-right-0 py-2 pl-3 h4">제 3자 정보제공</div>
					<div>
					1. 우리는 제 3자에게 정보를 제공하지 않습니다.<br>
					2. 우리는 귀하의 정보를 공유하지 않습니다.<br>
					3. 우리는 개인정보 처리에 관한 업무를 총괄해서 책임지고,
					개인정보 처리와 관련한 이용자의 불만처리 및 피해구제 등을 위하여
					아래와 같이 개인정보 보호책임자를 지정하고 있습니다.
					<br><br>
					개인정보 보호 책임자<br><br>
					- 성명: ????<br>
					- 직책: ????<br>
					- 연락처: ????<br>
					- 이메일: ????<br>
					- 주소: ????<br>
					<br>
					4. 4. 이용자께서는 회사의 서비스를 이용하시면서 발생한 모든 개인정보 보호 관련 문의, 
					불만처리, 피해 구제 등에 관한 사항을 개인정보 보호책임자에게 문의하실 수 있습니다. 
					우리는 이용자의 문의에 대해지체 없이 답변 및 처리해드릴 것입니다.
					당사는 향후 이 개인정보취급방침을 변경할 수 있습니다. 
					이 개인정보취급방침의 중대한 변경에 관하여 회원들에게 통보하며, 
					귀하가 당사에게 제공한 전자우편주소로 안내 고지를 발송하거나 또는 
					당사 웹사이트에 고지하여 통보할 것입니다.
					귀하께서는 회사의 서비스를 이용하시며 발생하는 
					모든 개인정보보호 관련 민원을 개인정보관리책임자 혹은 담당부서로 신고하실 수 있습니다. 
					우리는 이용자들의 신고사항에 대해 신속하게 충분한 답변을 드릴 것입니다. 
					기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.
					<br><br>
					- 개인정보침해신고센터<br>
					(<a href="http://www.1336.or.kr" target="_blank" class="text-danger">www.1336.or.kr</a>/국번없이 118)<br>
					- 정보보호마크인증위원회<br>
					(<a href="http://www.eprivacy.or.kr" target="_blank"  class="text-danger">www.eprivacy.or.kr</a>/02-580-0533~4)<br>
					- 대검찰청 과학수사부 사이버수사과<br>
					(<a href="http://www.cybercid.spo.go.kr" target="_blank"  class="text-danger">www.cybercid.spo.go.kr</a>/02-3480-3600)<br>
					- 경찰청 사이버테러대응센터<br>
					(<a href="http://www.ctrc.go.kr" target="_blank"  class="text-danger">www.ctrc.go.kr</a>/02-392-0330)
					</div>
				</div>
				<!-- 개인정보 처리방침 끝 -->
			</div>
		</div>
	</div>
</div>