<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="/resources/js/pop.js?v=<%=System.currentTimeMillis() %>"></script>

<link href="/resources/css/popup.css" rel="stylesheet"> 
<link href="/resources/css/popupButton.css" rel="stylesheet">

<style>

/* tiles none */
.navbar.navbar-expand-lg.navbar-light.px-4.px-lg-5.py-3.py-lg-0 {
	display: none;
}

.container-fluid.bg-dark.text-light.footer.pt-5.wow.fadeIn {
	display: none;
}

.container-xxl.bg-primary.page-header {
	display: none;
}

/* 모달 상단 */
.TermsModal__navigatorItem--selected {
	border-bottom-color: #38c5a4;
	color: #1dd5a2;
	font-weight: 500;
	border-bottom: 0.2rem solid transparent;
	font-size: 1.4rem;
	height: 80%;
	padding: 0 1.2rem;
}

.green {
	border-bottom-color: #38c5a4;
	color: #1dd5a2;
	font-weight: 500;
	border-bottom: 0.2rem solid transparent;
	font-size: 1.4rem;
	height: 80%;
	padding: 0 1.2rem;
}

.TermsModal__navigatorItem {
	color: #6a666e;
	font-weight: 500;
	border-bottom: 0.2rem solid transparent;
	font-size: 1.4rem;
	height: 80%;
	padding: 0 1.2rem;
}

.TermsModal__navigatorItem:focus {
	/* border-bottom-color: #38c5a4; */
	color: #1dd5a2;
	font-weight: 500;
	border-bottom: 0.2rem solid transparent;
	font-size: 1.4rem;
	height: 80%;
	padding: 0 1.2rem;
}

/* 전체 안보이게 설정 */
.privacy {
	display: none;
}

.store {
	display: none;
}

.marketing {
	display: none;
}

.first {
	display: block;
}

/* ''확인'버튼 */
.ButtonBasic_solid__KgRqI {
	background-image: linear-gradient(285deg, #069970, #55c5a1);
	color: #fff;
}

.ButtonBasic_solid__KgRqI:hover {
	background-image: linear-gradient(285deg, #069970, #55c5a1);
	color: #fff;
}
</style>

</head>

<body>
	<div class="Modal__root" role="button" tabindex="0">
		<div class="TermsModal">
		
			<div class="TermsModal__navigator">
				<button class="TermsModal__navigatorItem" type="button" id="pr" >개인정보 처리방침</button>
				<div class="TermsModal__dot"></div>
				<button class="TermsModal__navigatorItem" type="button" id="st">스토어 이용약관</button>
				<div class="TermsModal__dot"></div>
				<button class="TermsModal__navigatorItem--selected green" id="mk" type="button">마케팅 수신 및 개인정보 활용</button>
			</div>
			
			<!-- privacy  -->
			<div class="TermsModal__contentBox privacy">
				<div class="TermsModal__content">
					<h1>dbelleArt 개인정보 처리방침</h1>
					<p>㈜dbelleArt(이하 "회사")는 이용자의 동의를 기반으로 개인정보를 수집·이용 및 제공하고 있으며 이용자의 권리를
						적극적으로 보장합니다. 회사는 준수하여야 하는 대한민국의 관계 법령을 준수하고 있으며 이용자의 소중한 개인정보를
						보호함으로써 이용자가 안심하고 서비스를 이용할 수 있도록 본 개인정보처리방침을 마련하여 준수하고 있습니다.</p>
					<h2>1. 수집 및 이용 목적</h2>
					<ol>
						<li>목적 회사는 회원 가입 시 또는 서비스 이용 과정에서 아래와 같은 서비스 제공을 위해 필요한 최소한의
							개인정보를 수집하고 있습니다.</li>
					</ol>
					<table>
						<thead>
							<tr>
								<th><strong>수집 및 이용 목적</strong></th>
								<th><strong>수집 항목</strong></th>
								<th><strong>보유 기간</strong></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>dbelleArt 회원가입 및 회원 ID의 제공 (필수), 본인여부 확인 및 본인 인증</td>
								<td>이름, 성별, 생년월일, 휴대폰번호, 통신사업자, 내/외국인 여부, 암호화된 이용자 확인값(CI),
									중복가입확인정보(DI)</td>
								<td>서비스 마지막 이용일 또는 회원 탈퇴 후 1년 또는 법령에 따른 보존 기간 중 긴 기간</td>
							</tr>
							<tr>
								<td>dbelleArt 회원가입 (선택)</td>
								<td>소속 회사의 명칭/규모/산업군/주소, 소속 회사 내에서의 전화번호/직책/부서명(SNS 계정을 통해
									가입시) 이메일, 프로필사진</td>
								<td>서비스 마지막 이용일 또는 회원 탈퇴 후 1년 또는 법령에 따른 보존 기간 중 긴 기간</td>
							</tr>
							<tr>
								<td>(만 14세 미만의 경우) 법정 대리인의 동의 취득</td>
								<td>보호자의 이름, 생년월일, 성별, 휴대전화 번호, 통신사업자, 내/외국인 여부</td>
								<td>서비스 마지막 이용일 또는 회원 탈퇴 후 1년 또는 법령에 따른 보존 기간 중 긴 기간</td>
							</tr>
							<tr>
								<td>서비스 부정 이용 확인 및 방지</td>
								<td>서비스 이용 기록, 쿠키, 접속지 정보, 기기 정보, 기기 브라우저 정보</td>
								<td>서비스 마지막 이용일 또는 회원 탈퇴 후 1년 또는 법령에 따른 보존 기간 중 긴 기간</td>
							</tr>
							<tr>
								<td>dbelleArt 멤버십 결제</td>
								<td>- 신용카드 결제 시: 카드번호(일부), 비밀번호(앞 2자리), 유효기간, 생년월일 6자리 또는
									사업자등록번호 10자리 등<br>-간편 결제 시: 간편 결제 계정 로그인 정보<br>-휴대전화번호
									결제 시: 휴대전화번호, 결제승인번호 등<br>-계좌이체 시: 예금주명, 계좌번호, 계좌은행 등
								</td>
								<td>서비스 마지막 이용일 또는 회원 탈퇴 후 1년 또는 법령에 따른 보존 기간 중 긴 기간</td>
							</tr>
							<tr>
								<td>환불 처리 시</td>
								<td>계좌은행, 계좌번호, 예금주명, 이메일, 휴대폰번호</td>
								<td>서비스 마지막 이용일 또는 회원 탈퇴 후 1년 또는 법령에 따른 보존 기간 중 긴 기간</td>
							</tr>
							<tr>
								<td>고객센터 문의 시</td>
								<td>문의 및 상담 내용에 포함된 개인정보</td>
								<td>서비스 마지막 이용일 또는 회원 탈퇴 후 1년 또는 법령에 따른 보존 기간 중 긴 기간</td>
							</tr>
							<tr>
								<td>통계 작성 및 연구 등 : 서비스 및 콘텐츠 관련 통계 작성(상업적 목적 포함) 및 연구(산업적
									연구 포함) 등</td>
								<td>이름, 성별, 생년월일, 휴대폰번호, 통신사업자, 내/외국인 여부, 암호화된 이용자 확인값(CI),
									중복가입확인정보(DI), 소속회사의 명칭/ 규모/산업군/주소, 소속 회사 내에서의 전화번호/직책/부서명(SNS
									계정을 통해 가입시) 이메일</td>
								<td>서비스 마지막 이용일 또는 회원 탈퇴 후 1년 또는 법령에 따른 보존 기간 중 긴 기간</td>
							</tr>
							<tr>
								<td>마케팅 및 광고에 활용 (선택) : 신규 서비스(제품) 개발 및 특화, 이벤트 등 광고성 정보 전달</td>
								<td>이름, 생년월일, 휴대폰번호, 접속빈도, 통신사업자, 내/외국인 여부, 암호화된 이용자
									확인값(CI), 중복가입확인정보(DI)</td>
								<td>서비스 마지막 이용일 또는 회원 탈퇴 후 1년 또는 법령에 따른 보존 기간 중 긴 기간</td>
							</tr>
							<tr>
								<td>개인 학습 효과 관리</td>
								<td>이름, 시험 결과</td>
								<td>서비스 마지막 이용일 또는 회원 탈퇴 후 1년 또는 법령에 따른 보존 기간 중 긴 기간</td>
							</tr>
						</tbody>
					</table>
					<ol start="2">
						<li>수집 방법</li>
					</ol>
					<ul>
						<li>회원가입 및 서비스 이용 과정에서 이용자가 개인정보 수집에 대해 동의를 하고 직접 정보를 입력하는 경우</li>
						<li>네이버스마트 스토어 등 외부 채널을 통해 수강을 신청하는 경우</li>
						<li>고객센터를 통한 상담 과정에서 웹페이지, 메일, 팩스, 전화 등 이벤트/행사 등 참여</li>
						<li>그 외 서비스 이용 기록 등의 정보가 자동으로 생성되어 수집되는 경우</li>
					</ul>
					<h2>2. 개인정보 수집 및 이용에 대한 동의</h2>
					<ol>
						<li>동의 방법</li>
					</ol>
					<p>회사는 “개인정보 수집 및 이용”에 대한 별도의 동의 획득 절차를 두고, 이용자가 이에 대해 ‘동의한다’
						또는 ‘동의하지 않는다’ 버튼을 통해 클릭할 수 있는 절차를 마련하고 있습니다. ‘동의한다’ 버튼을 클릭하면 개인정보
						수집 및 이용에 동의한 것으로 봅니다.</p>
					<ol start="2">
						<li>이용자의 거부할 권리</li>
					</ol>
					<p>이용자는 개인정보 수집 및 이용에 대한 동의를 거부할 권리가 있으며, 동의를 거부할 경우 받는 별도의
						불이익은 없습니다. 단, 서비스 이용이 불가능 하거나, 서비스 이용 목적에 따른 서비스 제공에 제한이 따르게 됩니다.</p>
					<h2>3. 개인정보 제공</h2>
					<ol>
						<li>개인정보의 제3자 제공</li>
					</ol>
					<p>회사는 원칙적으로 제3자에게 개인정보를 제공하지 않습니다. 다만, 이용자의 동의를 받아 아래와 같이
						제3자에게 정보를 제공하고 있습니다. 법령의 규정에 따라 법원 또는 수사기관의 요구가 있는 경우에는 이용자의 동의가
						없어도 제3자에게 정보를 제공할 수 있습니다.</p>
					<p>기업회원이 소속 직원으로 하여금 dbelleArt의 강의를 수강하게 하는 경우, dbelleArt은 소속 직원의 동의를 받고 그
						시험결과를 기업회원에게 제공할 수 있습니다.</p>

					<table>
						<thead>
							<tr>
								<th>제공받는 자</th>
								<th>제공 목적</th>
								<th>제공하는 개인정보 항목</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td></td>
								<td></td>
								<td></td>
							</tr>
						</tbody>
					</table>
					<ol start="2">
						<li>업무 위탁으로 인한 개인정보의 제공 회사는 서비스 제공에 있어 필요한 업무 중 일부를 외부 업체로
							하여금 수행하도록 개인정보를 위탁하고 있습니다. 그리고 위탁 받은 업체가 관련 법령을 준수하도록 관리감독하고
							있습니다.</li>
					</ol>

					<table>
						<thead>
							<tr>
								<th>업체명</th>
								<th>위탁 목적</th>
								<th>보유기간</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>채널 코퍼레이션(채널톡)</td>
								<td>고객센터 운영 및 고객상담</td>
								<td>회원 탈퇴 후 1년 또는 법령에 따른 보존 기간 중 긴 기간</td>
							</tr>
							<tr>
								<td>(주)다날, Ncloud Sens</td>
								<td>본인확인 및 성인인증</td>
								<td>회원 탈퇴 후 1년 또는 법령에 따른 보존 기간 중 긴 기간</td>
							</tr>
							<tr>
								<td>페이플, 페이팔, 카카오페이, (주)다날</td>
								<td>결제 처리(신용 카드)</td>
								<td>회원 탈퇴 후 1년 또는 법령에 따른 보존 기간 중 긴 기간</td>
							</tr>
							<tr>
								<td>알리고, 뿌리오, 카카오 알림톡, 채널톡, 플러스친구, 비즈콘</td>
								<td>문자 메시지/기프티콘 발송</td>
								<td>회원 탈퇴 후 1년 또는 법령에 따른 보존 기간 중 긴 기간</td>
							</tr>
							<tr>
								<td>메일침프, 아마존 ses</td>
								<td>이메일 발송</td>
								<td>회원 탈퇴 후 1년 또는 법령에 따른 보존 기간 중 긴 기간</td>
							</tr>
							<tr>
								<td>로지아이</td>
								<td>사은품 배송</td>
								<td>회원 탈퇴 후 1년 또는 법령에 따른 보존 기간 중 긴 기간</td>
							</tr>
							<tr>
								<td>네이버, 구글, 페이스북, 카카오</td>
								<td>간편 로그인</td>
								<td>회원 탈퇴 후 1년 또는 법령에 따른 보존 기간 중 긴 기간</td>
							</tr>
							<tr>
								<td>구글</td>
								<td>리마케팅 광고</td>
								<td>회원 탈퇴 후 1년 또는 법령에 따른 보존 기간 중 긴 기간</td>
							</tr>
						</tbody>
					</table>
					<h2>4. 개인정보의 보유 및 이용기간</h2>
					<ol>
						<li>이용자 동의에 따른 이용 등</li>
					</ol>
					<p>회사는 이용자가 회원으로서 서비스를 이용하는 동안 이용자의 개인정보를 보유 및 이용하며, 이용자가 회원탈퇴를
						요청한 경우나 개인정보의 수집 및 이용목적을 달성하거나 보유 및 이용기간이 종료한 경우 또는 사업폐지 등의 사유가
						발생한 경우 해당 정보를 지체 없이 파기합니다.</p>
					<ol start="2">
						<li>관련 법령에 의한 정보 보유 사유</li>
					</ol>
					<p>상법, 전자상거래 등에서의 소비자보호에 관한 법률 등 관계 법령의 규정에 의하여 보존할 필요가 있는 경우
						회사는 관계법령에서 정한 일정한 기간 동안 회원정보를 보관합니다.</p>
					<p>이 경우 회사는 보관하는 정보를 그 보관의 목적으로만 이용하며 보존기간은 아래와 같습니다.</p>

					<table>
						<thead>
							<tr>
								<th>보관하는 정보</th>
								<th>보존 이유</th>
								<th>보존 기간</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>계약 또는 청약철회 등에 관한 기록</td>
								<td>전자상거래 등에서의 소비자보호에 관한 법률</td>
								<td>5년</td>
							</tr>
							<tr>
								<td>소비자의 불만 또는 분쟁처리에 관한 기록</td>
								<td>전자상거래 등에서의 소비자보호에 관한 법률</td>
								<td>3년</td>
							</tr>
							<tr>
								<td>본인 확인에 관한 기록</td>
								<td>정보통신 이용촉진 및 정보보호 등에 관한 법률</td>
								<td>6개월</td>
							</tr>
							<tr>
								<td>방문에 관한 기록</td>
								<td>통신 비밀 보호법</td>
								<td>3개월</td>
							</tr>
						</tbody>
					</table>
					<h2>5. 개인정보 파기 절차 및 방법</h2>
					<p>회사는 다른 법률에 따라 개인정보를 보존하여야 하는 경우가 아닌 한, 수집한 이용자의 개인정보의 수집 및
						이용 목적이 달성되거나, 이용자가 회원탈퇴를 요청한 경우 지체 없이 파기하여 향후 어떠한 용도로도 열람 또는 이용할 수
						없도록 처리합니다. 회사의 개인정보 파기 절차 및 방법은 다음과 같습니다.</p>
					<ol>
						<li>파기 절차</li>
					</ol>
					<p>이용자가 회원가입 등을 위해 입력한 정보는 목적이 달성된 후 별도의 DB로 옮겨져(종이의 경우 별도의
						서류함) 내부 방침 및 기타 관련 법령에 의한 정보 보호 사유에 따라(4. 보유 및 이용기간 참조)일정 기간 저장된 후
						파기됩니다. 동 개인정보는 법률에 의한 경우가 아니고 서는 보유되는 이외의 다른 목적으로 이용되지 않습니다.</p>
					<ol start="2">
						<li>파기 방법</li>
					</ol>
					<p>종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기하며, 전자적 파일 형태로 저장된 개인정보는
						기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.</p>
					<h2>6. 만 14세 미만 아동의 개인정보 보호</h2>
					<p>회사가 운영하는 사이트에서는 만14세 미만 아동의 경우 법정대리인(부모님 등)의 동의절차를 거쳐야만 회원
						가입 및 아동의 개인정보 수집이 가능합니다. 만 14세 미만 아동의 법정대리인은 아동의 개인정보의 열람, 정정,
						가입해지(동의 철회)를 요청할 수 있으며, 이러한 요청이 있을 경우 회사는 법정대리인 확인 후 지체 없이 필요한 조치를
						취합니다. 만14세 미만 아동의 개인정보도 성인의 개인정보와 동일하게 관리되며, 법정대리인의 동의 없이는 제3자와
						공유하지 않습니다.</p>
					<h2>7. 이용자 및 법정대리인의 권리</h2>
					<p>이용자는 언제든지 등록되어 있는 자신 또는 만14세 미만 아동의 개인정보를 조회하거나 수정할 수 있으며
						가입해지(동의철회)를 요청할 수도 있습니다. 이용자 또는 만14세 미만 아동의 개인정보 조회, 수정을 위해서는
						'개인정보변경'(또는 '회원정보수정' 등)을, 가입해지(동의철회)를 위해서는 ’회원탈퇴’를 클릭하여 본인 확인 절차를
						거치신 후 직접 열람, 정정 또는 탈퇴가 가능합니다.</p>
					<p>혹은 개인정보관리책임자에게 서면, 전화 또는 이메일로 연락하시면 지체없이 조치하겠습니다.</p>
					<p>이용자가 개인정보의 오류에 대한 정정을 요청하신 경우에는 정정을 완료하기 전까지 당해 개인정보를 이용 또는
						제공하지 않습니다. 또한 잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체없이 통지하여
						정정이 이루어지도록 하겠습니다.</p>
					<p>회사는 이용자 혹은 법정 대리인의 요청에 의해 해지 또는 삭제된 개인정보는 "4. 개인정보의 보유 및
						이용기간"에 명시된 바에 따라 처리하고 그 외의 용도로 열람 또는 이용할 수 없도록 처리하고 있습니다.</p>
					<h2>8. 개인정보 자동 수집 장치의 설치/운영 및 거부에 관한 사항</h2>
					<p>회사는 이용자들에게 특화된 맞춤 서비스를 제공하기 위해서 이용자들의 정보를 저장하고 수시로 불러오는
						'쿠키(cookie)'를 사용합니다. 쿠키는 웹사이트를 운영하는 데 이용되는 서버(HTTP)가 이용자의 컴퓨터
						브라우저에게 보내는 소량의 정보이며 이용자들의 PC 컴퓨터 내의 하드디스크에 저장되기도 합니다.</p>
					<ol>
						<li>쿠키의 사용 목적</li>
					</ol>
					<p>이용자들이 방문한 회사의 각 서비스와 웹 사이트들에 대한 로그인 여부 등을 파악하여 이용자에게 최적화된 정보
						제공을 위하여 사용합니다.</p>
					<ol start="2">
						<li>쿠키의 설치/운영 및 거부</li>
					</ol>
					<p>이용자는 쿠키 설치에 대한 선택권을 가지고 있습니다. 따라서, 이용자는 웹 브라우저에서 옵션을 설정함으로써
						모든 쿠키를 허용하거나, 쿠키가 저장될 때 마다 확인을 거치거나, 아니면 모든 쿠키의 저장을 거부할 수도 있습니다.</p>
					<p>쿠키 설정을 거부하는 방법으로는 이용자가 사용하는 웹 브라우저의 옵션을 선택함으로써 모든 쿠키를 허용하거나
						쿠키를 저장할 때마다 확인을 거치거나 모든 쿠키의 저장을 거부할 수 있습니다.</p>
					<p>설정방법 (예: 인터넷 익스플로러의 경우): 웹 브라우저 상단의 도구 &gt; 인터넷 옵션 &gt; 개인정보</p>
					<p>다만, 쿠키의 저장을 거부할 경우에는 회사의 서비스 이용에 어려움이 있을 수 있습니다.</p>
					<h2>9. 개인정보의 기술적/관리적 보호 대책</h2>
					<p>회사는 이용자들의 개인정보를 취급함에 있어 개인정보가 분실, 도난, 누출, 변조 또는 훼손되지 않도록 안전성
						확보를 위하여 다음과 같은 기술적/관리적 대책을 강구하고 있습니다.</p>
					<ol>
						<li>개인정보 암호화</li>
					</ol>
					<p>이용자의 주요 개인정보는 암호화하여 저장하고 있으며, 파일 및 전송데이터를 암호화하여 혹시 발생할 수 있는
						사고 시라도 이용자의 개인정보가 유출되지 않도록 관리되고 있습니다.</p>
					<ol start="2">
						<li>해킹 등에 대비한 대책</li>
					</ol>
					<p>회사는 해킹이나 컴퓨터 바이러스 등에 의해 이용자의 개인정보가 유출되거나 훼손되는 것을 막기 위해 최선을
						다하고 있습니다 개인정보의 훼손에 대비해서 자료를 수시로 백업하고 있고, 최신 백신프로그램을 이용하여 이용자들의
						개인정보나 자료가 누출되거나 손상되지 않도록 방지하고 있으며, 암호화 통신 등을 통하여 네트워크상에서 개인정보를
						안전하게 전송할 수 있도록 하고 있습니다. 그리고 24시간 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고
						있으며, 기타 시스템적으로 보안성을 확보하기 위한 가능한 모든 기술적 장치를 갖추려 노력하고 있습니다.</p>
					<ol start="3">
						<li>취급 직원의 최소화 및 교육</li>
					</ol>
					<p>회사의 개인정보관련 취급 직원은 담당자에 한정시키고 있고 이를 위한 별도의 비밀번호를 부여하여 정기적으로
						갱신하고 있으며, 담당자에 대한 수시 교육을 통하여 개인정보취급방침의 준수를 항상 강조하고 있습니다. 또한, 임직원이
						이용자의 개인정보를 취급하기 이전에 보안서약서를 통하여 이용자의 개인정보에 대한 정보유출을 사전에 방지하고 관련
						사태규정을 마련하여 이에 대한 이행사항 및 준수 여부를 감시하기 위한 내부절차를 마련하고 있습니다.</p>
					<ol start="4">
						<li>개인정보보호 전담기구의 운영</li>
					</ol>
					<p>사내 개인정보보호전담기구 등을 통하여 개인정보처리방침의 이행사항 및 담당자의 준수 여부를 확인하여 문제가
						발견될 경우 즉시 수정하고 바로잡을 수 있도록 노력하고 있습니다.</p>
					<p>하지만 근본적으로 개인정보의 보안관리에는 이용자 본인의 노력도 중요합니다. 온라인 상 오직 아이디와
						비밀번호를 알고 있는 본인에게만 개인 정보에 접근할 수 있는 권한이 있으며, 비밀번호를 유지하고 관리할 책임 역시도
						본인에게 있습니다. 반드시 본인만이 알 수 있는 내용으로 비밀번호를 구성해야 하며, 주민번호의 일부 또는 전화번호 등
						타인이 쉽게 도용할 수 있는 비밀번호의 사용을 지양해야 합니다. 또한 공동으로 사용하는 PC에서 회사의 서비스에
						접속하여 로그인한 상태에서 다른 사이트로 이동할 경우, 혹은 서비스 이용을 종료하였을 경우에는 반드시 해당 브라우저를
						종료하시기 바랍니다. 그렇지 않을 경우, 해당 브라우저를 통해 아이디, 비밀번호, 주민등록번호가 포함된 이용자의
						개인정보가 타인에게 손쉽게 유출될 위험이 있습니다. 이용자 본인의 부주의나 인터넷상의 문제로 ID, 비밀번호,
						주민등록번호 등 개인정보가 유출되어 발생한 문제에 대해 회사는 일체의 책임을 지지 않습니다.</p>
					<h2>10. 가명정보 처리에 관한 사항</h2>
					<p>회사는 수집한 개인정보의 일부를 삭제하거나 일부 또는 전부를 대체하는 등의 방법으로 추가 정보가 없이는 특정
						개인을 알아볼 수 없도록 가명처리하여 이용하는 경우, 원래의 상태로 복원하기 위한 추가 정보를 별도로 분리하여
						보관ㆍ관리하는 등 해당 정보가 분실ㆍ도난ㆍ유출ㆍ위조ㆍ변조 또는 훼손되지 않도록 안전성 확보에 필요한 기술적ㆍ관리적 및
						물리적 조치를 취하고 있으며, 가명정보의 처리 목적, 제3자 제공 시 제공받는 자 등 가명정보의 처리 내용을 관리하기
						위하여 관련 기록을 작성하여 보관하고 있습니다.</p>
					<h2>11. 개인정보 보호책임자 작성</h2>
					<p>회사는 개인정보 처리에 관한 업무를 총괄해서 책임지고, 개인정보 처리와 관련한 정보주체의 불만처리 및
						피해구제 등을 위하여 아래와 같이 개인정보 보호책임자를 지정하고 있습니다.</p>
					<p>
						<strong>개인정보 보호책임자</strong>
					</p>
					<ul>
						<li>
							<p>성명: 강영훈</p>
						</li>
						<li>
							<p>소속: ㈜dbelleArt</p>
						</li>
						<li>
							<p>
								전화/이메일: <a href="mailto:dev@dbelleArt.com">dev@dbelleArt.com</a>
							</p>
						</li>
					</ul>
					<p>귀하께서는 회사의 서비스를 이용하시며 발생하는 모든 개인정보보호 관련 민원을 개인정보관리책임자 혹은
						담당부서로 신고하실 수 있습니다. 회사는 이용자들의 신고사항에 대해 신속하게 충분한 답변을 드릴 것입니다.</p>
					<p>기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.</p>
					<ul>
						<li>
							<p>
								개인정보 보호 종합지원 포털(안전행정부 운영) <a href="http://www.privacy.go.kr">www.privacy.go.kr</a>
								/ 02-2100-3343
							</p>
						</li>
						<li>
							<p>개인정보 침해신고센터 (한국인터넷진흥원 운영) privacy.kisa.or.kr / (국번없이) 118</p>
						</li>
						<li>
							<p>개인정보보호지원센터 (한국정보화진흥원) privacy.nia.or.kr / 02-2131-0111</p>
						</li>
					</ul>
					<h2>12. 기타</h2>
					<p>회사가 운영하는 사이트에 링크되어 있는 웹사이트들이 개인정보를 수집하는 행위에 대해서는 본
						"개인정보처리방침"이 적용되지 않음을 알려 드립니다.</p>
					<h2>13. 고지의 의무</h2>
					<p>현 개인정보처리방침 내용 추가, 삭제 및 수정이 있을 시에는 개정 최소 7일 전부터 변경이유 및 내용을
						홈페이지의 '공지사항'에 고지 또는 이용자에 대한 개별 통지할 것입니다. 본 개인정보처리방침의 내용은 수시로 변경될 수
						있으므로 사이트를 방문하실 때마다, 이를 확인하시기 바랍니다.</p>
					<p>
						<em>개정일자: 2022년 01월 04일</em>
					</p>
				</div>
			</div>
			
			
			
			
			
			<!-- store -->
			<div class="TermsModal__contentBox store">
				<div class="TermsModal__content">

					<h1>㈜dbelleArt 서비스 이용약관</h1>

					<p>환영합니다.</p>
					<p>dbelleArt이 제공하는 서비스를 이용해주셔서 감사합니다. 서비스를 이용하시거나 회원으로 가입하실 경우 본
						약관에 동의하시게 되므로, 잠시 시간을 내셔서 주의 깊게 살펴봐 주시기 바랍니다.</p>
					<h2>제 1 조 (목적)</h2>
					<p>본 약관은 ㈜dbelleArt이 운영하는 기밀문서 관리 프로그램인 dbelleArt에서 제공하는 서비스를 이용함에 있어
						이용자의 권리, 의무 및 책임사항을 규정함을 목적으로 합니다.</p>
					<h2>제 2 조 (정의)</h2>
					<ol>
						<li>
							<p>이 약관에서 사용하는 용어의 정의는 다음과 같습니다.</p>
							<ol>
								<li>“서비스"란 맞춤형 온라인 코딩 교육 프로그램을 제공하는 dbelleArt의 제반 서비스를 말합니다.
									(URL : <a href="https://www.dbelleArt.kr/">https://www.dbelleArt.kr</a>
									또는 <a href="https://www.dbelleArt.com/">https://www.dbelleArt.com</a>
									)
								</li>
								<li>회사란 dbelleArt을 운영하는 ㈜dbelleArt을 말합니다.</li>
								<li>이용자란 dbelleArt에 접속하여 본 약관에 따라 dbelleArt이 제공하는 서비스를 받는 회원 및
									비회원을 말합니다.</li>
								<li>"회원"이라 함은 dbelleArt에 회원등록을 한 자로서, 계속적으로 dbelleArt이 제공하는 서비스를
									이용할 수 있는 자를 말합니다.</li>
								<li>"비회원"이라 함은 회원에 가입하지 않고 dbelleArt이 제공하는 제한된 서비스를 이용하는 자를
									말합니다.</li>
								<li>“이용계약”‘이라 함은 서비스 이용과 관련하여 회사와 이용자 간에 체결하는 계약을 말합니다.</li>
								<li>“회원 ID”라 함은 이용자의 식별과 이용자의 서비스 이용을 위하여 이용자가 선정하고 회사가
									부여하는 문자와 숫자의 조합을 말합니다.</li>
								<li>“비밀번호”라 함은 이용자가 부여받은 이용자번호와 일치된 이용자임을 확인하고 이용자의 권익보호를
									위하여 이용자가 선정한 문자와 숫자의 조합을 말합니다.</li>
								<li>"관리자(운영자)"라 함은 서비스의 전반적인 관리와 원활한 운영을 위하여 회사에서 선정한 사람 혹은
									기관(회사)를 말합니다.</li>
								<li>"게시물"이라 함은 회원이 서비스를 이용함에 있어 회사의 사이트에 게시한 문자, 부호, 음향,
									화상, 동영상 등의 정보 형태의 글, 사진, 동영상 및 각 종 파일과 링크, 댓글 등의 정보를 말합니다.</li>
							</ol>
						</li>
						<li>
							<p>이 약관에서 사용하는 용어의 정의는 제1항에서 정하는 것을 제외하고는 관계법령 및 서비스별 안내에서
								정하는 바에 의합니다.</p>
						</li>
					</ol>
					<h2>제 3 조 (약관 등의 명시 및 개정)</h2>
					<ol>
						<li>
							<p>
								dbelleArt은 본 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소, 전화번호, 전자우편주소,
								사업자등록증번호, 통신판매업 신고번호, 개인정보관리책임자 등을 이용자가 쉽게 알 수 있도록 dbelleArt의 사이트(<a
									href="https://dbelleArt.com/">https://dbelleArt.com</a>, <a
									href="https://dbelleArt.kr/)%EC%97%90">https://dbelleArt.kr/)에</a>
								게시하고 있습니다.
							</p>
						</li>
						<li>
							<p>dbelleArt은 「전자상거래 등에서의 소비자보호에 관한 법률」, 「약관의 규제에 관한 법률」, 「전자문서
								및 전자거래기본법」, 「전자금융거래법」, 「전자서명법」, 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」,
								「방문판매 등에 관한 법률」, 「소비자기본법」 등 관련 법을 위배하지 않는 범위에서 본 약관을 개정할 수 있습니다.</p>
						</li>
						<li>
							<p>회사는 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 dbelleArt의 초기화면에
								그 적용일자 7일 이전부터 적용일자 전일까지 공지합니다. 다만, 이용자에게 불리하게 약관내용을 변경하는 경우에는
								최소한 30일 이상의 사전 유예기간을 두고 공지합니다. 이 경우 dbelleArt은 개정 전 내용과 개정 후 내용을
								명확하게 비교하여 이용자가 알기 쉽도록 표시합니다.</p>
						</li>
						<li>
							<p>전항에 따른 개정 약관 중 변경 또는 개정한 내용이 고객에게 불리한 경우에는 회원은 언제든지 본 계약의
								해지 및 회원탈퇴를 할 수 있으며, 이 경우 dbelleArt은 회원에게 불이익이 없도록 조치를 취해야 합니다.</p>
						</li>
						<li>
							<p>본 약관에서 정하지 아니한 사항과 본 약관의 해석에 관하여는 약관의 규제 등에 관한 법률,
								공정거래위원회가 정하는 전자상거래 등에서의 소비자 보호지침 및 관계법령 또는 상관례에 따릅니다.</p>
						</li>
					</ol>
					<h2>제 4 조 (약관 외 준칙)</h2>
					<p>본 약관에 규정되지 않은 사항에 대해서는 관련법령 또는 회사가 정한 개별 서비스의 이용약관, 운영정책 및
						규칙 등(이하 ‘세부지침’)의 규정에 따릅니다.</p>
					<h2>제 5 조 (서비스 제공 및 변경)</h2>
					<ol>
						<li>
							<p>dbelleArt은 다음과 같은 업무를 수행합니다.</p>
							<ol>
								<li>코딩 학습에 최적화된 학습 플랫폼 제공</li>
								<li>소프트웨어 분야(예. 프로그래밍, 프로덕트 매니지먼트, 디지털 마케팅 등) 및 일반 교육 분야(예.
									디자인, 비즈니스, 교양 등)를 아우르는 학습 콘텐츠 제공</li>
								<li>체계적인 학습 결과 관리 서비스 제공</li>
								<li>취업/이직 연계 서비스</li>
								<li>기업/기관별 맞춤형 교육 프로그램 제공</li>
								<li>웹 기반의 실습 환경 제공</li>
								<li>웹사이트 내 이용자 커뮤니티 제공</li>
								<li>코딩 챌린지 제공</li>
							</ol>
						</li>
						<li>
							<p>dbelleArt은 서비스의 기술적 사양의 변경 등의 경우에는 변경된 서비스의 내용 및 제공일자를 명시하여
								현재의 서비스의 내용을 게시한 곳에 즉시 공지합니다.</p>
						</li>
						<li>
							<p>dbelleArt이 제공하기로 이용자와 계약을 체결한 서비스의 내용을 기술적 사양의 변경, 정책 변경 등의
								사유로 변경할 경우에는 그 사유를 이용자에게 통지 가능한 방법으로 통지합니다.</p>
						</li>
					</ol>
					<h2>제 6 조 (서비스 중단 및 이용제한)</h2>
					<ol>
						<li>
							<p>회사는 dbelleArt에서 제공하는 서비스의 품질을 향상시키기 위하여 설비의 보수, 교체, 정기점검, 공사
								등 기타 이에 준하는 작업을 수행하기 위하여 서비스의 제공을 일시적으로 중단할 수 있습니다.</p>
						</li>
						<li>
							<p>회사는 예상하지 못한 사이버 해킹, 컴퓨터 바이러스의 공격을 감지하는 등 긴급한 사유가 발생하는 경우,
								이용자의 계정을 보호하기 위하여 이용자 계정 및 관련 서비스의 제공을 일시적으로 중단할 수 있습니다.</p>
						</li>
						<li>
							<p>회사는 이용자의 계정이 사이버 해킹 또는 컴퓨터 바이러스의 공격에 이용되고 있다고 판단할 상당한 이유가
								있는 경우, 해당 계정에 대한 이용제한 조치를 할 수 있습니다. 이러한 조치에 대하여 이용자는 이의신청을 할 수
								있고, 회원의 이의신청 사유가 정당하다고 인정되는 경우 회사는 즉시 회원의 서비스 이용을 재개하여야 합니다.</p>
						</li>
						<li>
							<p>위 제1항부터 제3항의 사유로 인하여 이용자에게 손해가 발생하더라도 회사는 책임을 지지 않습니다. 다만,
								회사의 고의 또는 중과실에 의한 경우에는 그러하지 아니합니다.</p>
						</li>
					</ol>
					<h2>제 7 조 (계약의 성립 및 회원가입)</h2>
					<ol>
						<li>
							<p>이용계약은 회원이 되고자 하는 자가 이 약관의 내용에 대하여 동의를 한 다음 dbelleArt이 정한 가입
								양식에 따라 회원정보를 기입한 후 본 약관에 동의한다는 의사표시를 함으로써 회원가입 신청을 하고, 회사가 그 신청에
								대하여 승낙함으로써 체결됩니다. 회사의 승낙의 의사표시는 웹사이트를 통해 이루어 집니다.</p>
						</li>
						<li>
							<p>회원가입은 반드시 실명으로만 가입할 수 있으며 회사는 실명확인조치를 할 수 있습니다. 회원가입 승낙이
								되었다가 이후에라도 회사가 실명으로 등록하지 않은 사실을 알게 될 경우, 이용자의 이용계약은 해지될 수 있습니다.</p>
						</li>
						<li>
							<p>dbelleArt은 제1항과 같이 회원으로 가입할 것을 신청한 이용자 중 다음 각 호에 해당하지 않는 한
								회원으로 등록합니다.</p>
							<ol>
								<li>등록 내용에 허위, 기재누락, 오기가 있는 경우</li>
								<li>기타 회원으로 등록하는 것이 dbelleArt의 기술상 현저히 지장이 있다고 판단되는 경우</li>
								<li>경쟁업체 및 그 관련인이 가입 신청한 경우</li>
							</ol>
						</li>
						<li>
							<p>회원은 회원가입 시 등록한 사항에 변경이 있는 경우, 상당한 기간 이내에 dbelleArt에 대하여 회원정보
								수정 등의 방법으로 그 변경사항을 알려야 합니다.</p>
						</li>
					</ol>
					<h2>제 8 조 (회원에 대한 통지)</h2>
					<ol>
						<li>
							<p>dbelleArt이 회원에 대한 통지를 하는 경우, 회원이 회원가입시 dbelleArt에게 제공한 전자우편 또는
								전화번호 등으로 할 수 있습니다. 이용자가 원하지 않는 경우에는 수신을 거부할 수 있습니다.</p>
						</li>
						<li>
							<p>제1항의 방법 외에 법령에 따라 추가적인 조치가 필요한 경우에 회사는 그에 따릅니다.</p>
						</li>
					</ol>
					<h2>제 9 조 (회원탈퇴 및 자격 상실 등)</h2>
					<ol>
						<li>
							<p>회원은 dbelleArt에 언제든지 탈퇴를 요청할 수 있으며 dbelleArt은 즉시 회원탈퇴를 처리합니다.</p>
						</li>
						<li>
							<p>회원이 다음 각 호의 사유에 해당하는 경우, dbelleArt은 회원자격을 제한 및 정지시킬 수 있습니다.</p>
							<ol>
								<li>가입 신청 시에 허위 내용을 등록한 경우</li>
								<li>dbelleArt을 이용하여 구입한 멤버십 서비스 등의 대금, 기타 회원이 부담하는 채무를 기일에
									지급하지 않는 경우</li>
								<li>다른 사람의 dbelleArt 이용을 방해하거나 그 정보를 도용하는 등 서비스 이용과 관련된 질서를
									위협하는 경우</li>
								<li>dbelleArt을 이용하여 법령 또는 본 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우</li>
								<li>그 밖의 일반 사회 통념상 현저히 사회 상규에 부합하지 않은 행위를 한 경우</li>
								<li>두 명 이상이 한 계정으로 수강하는 행위등 계정을 공유하는 행위</li>
							</ol>
						</li>
						<li>
							<p>dbelleArt이 회원 자격을 제한․정지시킨 후, 동일한 행위가 2회 이상 반복되거나 30일 이내에 그
								사유가 시정되지 아니하는 경우 dbelleArt은 회원자격을 상실시킬 수 있습니다.</p>
						</li>
						<li>
							<p>dbelleArt이 회원자격을 상실시키는 경우에는 회원등록을 말소합니다. 이 경우 회원에게 이를 통지하고,
								회원등록 말소 전에 최소한 30일 이상의 기간을 정하여 소명할 기회를 부여합니다.</p>
						</li>
					</ol>
					<h2>제 10 조 (멤버십의 신청 및 변경)</h2>
					<ol>
						<li>
							<p>회원은 dbelleArt 사이트에서 회사가 제공하는 서비스에 대한 멤버십을 신청할 수 있습니다. 유료 서비스인
								경우, 해당 금액을 결제함으로써 멤버십을 신청할 수 있습니다.</p>
						</li>
						<li>
							<p>회사는 회원의 멤버십 신청에 대하여 다음 각 호에 해당하면 승낙하지 않을 수 있습니다.</p>
							<ol>
								<li>신청 내용에 허위, 기재누락, 오기가 있는 경우</li>
								<li>기타 멤버십 신청을 승낙하는 것이 dbelleArt 기술상 또는 정책상 현저히 지장이 있다고 판단하는
									경우</li>
								<li>경쟁업체 또는 그 관련인이 신청한 경우</li>
							</ol>
						</li>
						<li>
							<p>dbelleArt 이용계약은 제1항의 결제가 완료된 후 회사가 이를 확인하여 서비스 이용 승낙에 대한
								의사표시를 웹사이트를 통해 알림으로서 성립한 것으로 봅니다.</p>
						</li>
						<li>
							<p>dbelleArt은 이용자와 서비스 제공 개시일에 관하여 별도의 약정이 없는 이상, 이용자가 멤버십 결제를 한
								날부터 dbelleArt 서비스를 이용할 수 있도록 필요한 조치를 취합니다.</p>
						</li>
						<li>
							<p>멤버십 결제를 한 이용자는 의사표시의 불일치 등이 있는 경우에는 결제한 즉시 구매신청 변경 및 취소를
								요청할 수 있고 dbelleArt은 이용자의 요청이 있는 경우에는 지체 없이 그 요청에 따라 처리하여야 합니다. 다만
								이미 대금을 지불한 경우에는 dbelleArt의 환불 기준(세부지침 홈페이지 내 별도 게시)에 관한 규정에 따릅니다.</p>
						</li>
					</ol>
					<h2>제 11 조 (개인정보보호)</h2>
					<ol>
						<li>
							<p>회사는 관련 법령이 정하는 바에 따라 회원의 개인정보를 보호하기 위해 노력하며, 개인정보의 보호 및
								사용에 대해서는 관련 법령 및 회사의 개인정보처리방침에 따릅니다.</p>
						</li>
						<li>
							<p>회사는 법령에 의해 국가기관 등의 요청이 있는 경우를 제외하고는 회원의 개인정보를 본인의 동의 없이
								타인에게 제공하지 않습니다.</p>
						</li>
						<li>
							<p>회사는 회원의 귀책사유로 개인정보가 유출되어 발생한 피해에 대하여 책임을 지지 않습니다.</p>
						</li>
						<li>
							<p>이용자는 언제든지 dbelleArt이 가지고 있는 자신의 개인정보에 대해 열람 및 오류정정을 요구할 수 있으며
								dbelleArt은 이에 대해 지체 없이 필요한 조치를 취할 의무를 집니다. 이용자가 오류의 정정을 요구한 경우에는
								dbelleArt은 그 오류를 정정할 때까지 당해 개인정보를 이용하지 않습니다. 단, 이용자의 개인정보가 dbelleArt
								서비스의 블록체인 시스템을 통해 보관될 경우에는 기술적인 원인으로 정정 또는 삭제를 할 수 없을 수 있습니다.</p>
						</li>
					</ol>
					<h2>제 12 조 (회사의 의무)</h2>
					<ol>
						<li>
							<p>회사는 dbelleArt의 운영과 관련하여 법령과 본 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며
								본 약관이 정하는 바에 따라 지속적이고, 안정적인 서비스를 제공하는데 최선을 다하여야 합니다.</p>
						</li>
						<li>
							<p>회사는 이용자가 안전하게 dbelleArt 서비스를 이용할 수 있도록 이용자의 개인정보(신용정보 포함)보호를
								위한 보안 시스템을 갖추어야 합니다.</p>
						</li>
						<li>
							<p>회사는 수신동의를 하지 않은 이용자에게 영리목적의 광고성 전자우편을 발송하지 않습니다. 다만, 회사는
								회원에게 서비스 이용에 필요가 있다고 인정되는 각종 정보에 대해서 회원의 사전 동의를 받은 후 이메일, 문자 등의
								방법으로 회원에게 제공할 수 있습니다.</p>
						</li>
					</ol>
					<h2>제 13 조 (이용자의 의무)</h2>
					<ol>
						<li>
							<p>이용자는 회원가입 신청 또는 회원정보 변경 시 실명으로 모든 사항을 사실에 근거하여 작성하여야 하며,
								허위 또는 타인의 정보를 등록할 경우 일체의 권리를 주장할 수 없습니다.</p>
						</li>
						<li>
							<p>회원은 본 약관에서 규정하는 사항과 기타 회사가 정한 제반 규정, 공지사항 등 회사가 공지하는 사항 및
								관계법령을 준수하여야 하며, 기타 회사의 업무에 방해가 되는 행위, 회사의 명예를 손상시키는 행위를 해서는 안
								됩니다.</p>
						</li>
						<li>
							<p>회원은 주소, 연락처, 전자우편 주소 등 이용계약사항이 변경된 경우에 해당 절차를 거쳐 이를 회사에 즉시
								알려야 합니다.</p>
						</li>
						<li>
							<p>회사가 관계법령 및 ‘개인정보 보호정책‘에 의거하여 그 책임을 지는 경우를 제외하고 회원에게 부여된
								ID의 비밀번호 관리소홀, 부정사용에 의하여 발생하는 모든 결과에 대한 책임은 회원에게 있습니다.</p>
						</li>
						<li>
							<p>회원은 회사의 사전 승낙 없이 서비스를 이용하여 영업활동을 할 수 없으며, 그 영업활동의 결과에 대해
								회사는 책임을 지지 않습니다. 또한 회원은 이와 같은 영업활동으로 회사가 손해를 입은 경우, 회원은 회사에 대해
								손해배상의무를 지며, 회사는 해당 회원에 대해 서비스 이용제한 및 적법한 절차를 거쳐 손해배상 등을 청구할 수
								있습니다.</p>
						</li>
						<li>
							<p>회원은 회사의 명시적 동의가 없는 한 서비스의 이용권한, 기타 이용계약상의 지위를 타인에게 양도, 증여할
								수 없으며 이를 담보로 제공할 수 없습니다.</p>
						</li>
						<li>
							<p>회원은 회사 및 제 3자의 지적 재산권을 침해해서는 안 됩니다.</p>
						</li>
						<li>
							<p>회원은 다음 각 호에 해당하는 행위를 하여서는 안 되며, 해당 행위를 하는 경우에 회사는 회원의 서비스
								이용제한 및 민형사상 적법 조치를 포함한 제재를 가할 수 있습니다.</p>
							<ol>
								<li>허위의 개인정보를 기재하거나 중복하여 가입하는 행위</li>
								<li>두 명 이상이 한 계정으로 수강하는 행위</li>
								<li>타인의 서비스 아이디 및 기타 정보를 도용하는 행위</li>
								<li>회사의 운영진, 직원 또는 관계자를 사칭하는 행위</li>
								<li>자신의 아이디 및 비밀번호를 유포하는 행위</li>
								<li>회사 또는 타인의 지적재산권을 침해하는 행위</li>
								<li>타인의 명예를 훼손하거나 사생활을 침해하는 행위</li>
								<li>고의 또는 과실로 허위의 정보를 공개 또는 유포하는 행위</li>
								<li>다량의 정보를 전송하거나, 동일한 또는 유사한 내용의 정보를 반복적으로 게시하여 서비스의 안정적인
									운영을 방해하는 행위</li>
								<li>dbelleArt의 서비스를 이용하여 얻은 정보를 dbelleArt의 사전 승낙 없이 복제 또는 유통시키거나
									상업적으로 이용하거나 배포하는 행위</li>
								<li>서비스 이용 중 복제프로그램을 실행하는 경우 또는 녹화를 하거나 시도하는 경우</li>
								<li>불법선거운동을 하는 행위</li>
								<li>회사로부터 특별한 권리를 부여받지 않고 회사의 클라이언트 프로그램을 변경하거나, 회사의 서버를
									해킹하거나, 웹사이트 또는 게시된 정보의 일부분 또는 전체를 임의로 변경하는 행위</li>
								<li>공공질서 및 미풍양속에 위반되는 저속, 음란한 내용의 정보, 문장, 도형, 음향, 동영상을 서비스에
									게시하는 행위</li>
								<li>모욕적이거나 개인 신상에 대한 내용이어서 타인의 명예나 사생활을 침해할 수 있는 내용을 서비스에
									게시하는 행위</li>
								<li>다른 이용자를 희롱 또는 위협하거나, 특정 이용자에게 지속적으로 고통 또는 불편을 주는 행위</li>
								<li>회사의 승인을 받지 않고 다른 사용자의 개인정보를 수집 또는 저장하는 행위</li>
								<li>범죄와 결부된다고 객관적으로 판단되는 행위</li>
								<li>본 약관을 포함하여 기타 회사가 정한 제반 규정 또는 이용 조건을 위반하는 행위</li>
								<li>기타 관계법령에 위배되는 행위</li>
							</ol>
						</li>
						<li>
							<p>회사는 다음 각 호에 해당하는 경우를 부정 이용 행위로 봅니다. 이와 같은 행위가 적발되는 경우 회사는
								회원의 서비스 이용제한 및 적법 조치를 포함한 제재를 가할 수 있습니다.</p>
							<ol>
								<li>동일한 ID로 2대 이상의 PC에서 동시접속이 발생하는 경우</li>
								<li>동일한 ID로 다수의 PC 또는 IP에서 서비스를 이용하는 경우</li>
								<li>자신의 ID 및 강좌 등의 서비스를 타인이 이용하도록 하는 경우</li>
								<li>자신의 ID 및 강좌 등의 서비스를 타인에게 판매, 대여, 양도하는 행위 및 이를 광고하는 행위
									회사는 전항에 따른 부정 이용자가 발견 되었을 경우, 다음 각 호에 따른 조치를 취할 수 있습니다.</li>
							</ol>
						</li>
					</ol>
					<ul>
						<li>
							<p>1차 발견 시: 전자우편, 쪽지, 팝업창 등의 방법으로 경고합니다. 회원은 회사에게 발견 사항이 발생한
								데에 대한 정당한 사유 등을 제시할 수 있습니다.</p>
						</li>
						<li>
							<p>2차 발견 시: 전자우편, 쪽지, 팝업창 등의 방법으로 경고하고 동시에 서비스 제공을 정지합니다.
								“재발방지확약ㆍ보증서“를 회사에 제출하는 경우에는 서비스 제공을 재개합니다.</p>
						</li>
						<li>
							<p>3차 발견 시: 전자우편, 쪽지, 팝업창 등의 방법으로 3차 위반내용의 통지 및 서비스 제공을 정지하고
								30일간의 소명기간 부여하며, 정당한 사유가 없는 경우 강제 탈퇴처리 합니다.</p>
						</li>
					</ul>
					<h2>제 14 조 (회원의 ID 및 비밀번호에 대한 의무)</h2>
					<ol>
						<li>
							<p>회사는 이용고객에 대하여 약관에 정하는 바에 따라 회원 ID를 부여합니다. 회원ID는 원칙적으로 변경이
								불가하며 부득이한 사유로 인하여 변경 하고자 하는 경우에는 해당 ID를 해지하고 재가입해야 합니다.</p>
						</li>
						<li>
							<p>이용자ID는 다음 각 호에 해당하는 경우에는 이용고객 또는 회사의 요청으로 변경할 수 있습니다.</p>
							<ol>
								<li>이용자ID가 이용자의 전화번호 또는 주민등록번호 등으로 등록되어 사생활침해가 우려되는 경우</li>
								<li>타인에게 혐오감을 주거나 미풍양속에 어긋나는 경우</li>
								<li>기타 합리적인 사유가 있는 경우</li>
							</ol>
						</li>
						<li>
							<p>회원의 ID와 비밀번호에 관한 관리책임은 회원에게 있습니다.</p>
						</li>
						<li>
							<p>회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는 안 됩니다.</p>
						</li>
						<li>
							<p>회원이 자신의 ID 및 비밀번호를 도난 당하거나 제3자가 사용하고 있음을 인지한 경우에는 바로
								dbelleArt에 통보하고 dbelleArt의 안내가 있는 경우에는 그에 따라야 합니다.</p>
						</li>
					</ol>
					<h2>제 15 조 (저작권의 귀속)</h2>
					<ol>
						<li>
							<p>dbelleArt이 작성한 저작물에 대한 저작권 기타 지적재산권은 dbelleArt에 귀속합니다.</p>
						</li>
						<li>
							<p>이용자가 작성한 저작물에 대한 저작권 기타 지적재산권은 이용자에 귀속합니다. 단, 이용자가 서비스 내에
								게시한 질문글 또는 답변글의 경우, 이용자는 회사에게 수정권한을 부여합니다. 회사가 이용자가 작성한 질문글 또는
								답변글을 수정한 경우, 수정하였다는 사실과 그 수정 내용은 게시글에 표기됩니다.</p>
						</li>
						<li>
							<p>이용자는 dbelleArt을 이용함으로써 얻은 정보 중 dbelleArt에게 지적재산권이 귀속된 정보를
								dbelleArt의 사전 승낙 없이 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나
								제3자에게 이용하게 하여서는 안됩니다.</p>
						</li>
						<li>
							<p>이용자는 dbelleArt이 이용자에게 귀속된 저작물(예, 과제물)을 dbelleArt의 서비스 개선, 포트폴리오
								및 홍보 등의 목적으로 사용할 수 있는 권한을 dbelleArt에 부여합니다.</p>
						</li>
					</ol>
					<h2>제 15 조 2 (게시물의 관리)</h2>
					<ol>
						<li>
							<p>회사는 이용자가 서비스에 작성한 게시물 또는 내용물이 각호에 해당되는 경우 사전통지 없이 삭제하거나
								비공개 처리할 수 있습니다.</p>
							<ol>
								<li>회사나 기타 타인의 저작권 등 권리를 침해하는 내용인 경우</li>
								<li>공공질서 및 미풍양속에 위반되는 내용을 유포하거나 링크하는 경우</li>
								<li>타인의 명예를 훼손하거나 불이익을 주는 경우</li>
								<li>회사에서 규정한 게시물 원칙에 어긋나거나, 커뮤니티의 성격에 부합하지 않는 게시물의 경우</li>
								<li>영리를 목적으로 하는 광고인 경우</li>
								<li>범죄행위에 결부된다고 인정되는 내용인 경우</li>
								<li>기타의 방법으로 관계법령에 위배되거나 회사 운영에 지장을 초래하는 경우</li>
							</ol>
						</li>
						<li>
							<p>관리자는 본 약관 제 15 조 2 1항의 각 호에 규정한 내용으로 커뮤니티를 이용하거나 이에 해당하는
								자료를 게재할 수 없도록 커뮤니티 게시물을 지속적으로 건전하게 관리합니다.</p>
						</li>
						<li>
							<p>관리자는 게시물 내용의 올바른 이해와 오해 방지 및 건전한 커뮤니티 문화의 확산이라는 공공의 이익을
								위해서 이용자가 작성한 게시물을 사전통지 없이 비공개 처리할 수 있습니다. 이용자는 이러한 회사의 조치에 대하여
								이의제기를 할 수 있습니다.</p>
						</li>
					</ol>
					<h2>제 16 조 (계정의 양도금지)</h2>
					<p>이용자는 dbelleArt에서 생성한 아이디 및 비밀번호, 계정 등을 회사의 사전 서면 동의 없이 제3자에게
						양도할 수 없으며, 이를 위반할 경우 이용계약이 해지될 수 있습니다.</p>
					<h2>제 17 조 (계약의 해지)</h2>
					<ol>
						<li>
							<p>회원이 이용계약을 해지하고자 하는 때에는 회원 본인이 회사에 해지신청을 함으로써 이용계약을 해지할 수
								있습니다. 회사는 관련법령 등에서 정하는 바에 따라 이를 즉시 처리하여야 합니다.</p>
						</li>
						<li>
							<p>회사는 회원이 다음 각 호에 해당하는 행위를 하였을 경우 이용계약을 해지하거나 해당 회원의 계정 이용을
								중단시키는 등 필요한 조치를 취할 수 있습니다.</p>
							<ol>
								<li>가입 신청시 허위 내용을 등록한 경우</li>
								<li>멤버시 비용 기타 서비스 이용에 관련하여 회원이 부담하는 채무를 기일에 지급하지 않은 경우</li>
								<li>회원이 제8조 및 제13조의 금지행위를 한 경우</li>
								<li>서비스 운영을 고의로 방해한 경우</li>
								<li>컴퓨터 바이러스 프로그램 등을 유포하는 경우</li>
								<li>기타 본 약관이나 관련법규에 위배된다고 판단되는 경우</li>
							</ol>
						</li>
						<li>
							<p>이용계약을 해지할 경우, 관련법령 및 회사의 개인정보보호정책에서 정한 바에 따라 회사가 회원정보를
								보유하는 경우를 제외하고는 해지 후 즉시 회원의 모든 데이터는 지체없이 파기됩니다.</p>
						</li>
					</ol>
					<h2>제 18 조 (손해배상 및 책임의 한계)</h2>
					<ol>
						<li>
							<p>회사 또는 이용자는 본 약관을 위반하여 상대방에게 손해를 입힌 경우에는 그 손해를 배상할 책임이
								있습니다. 다만, 고의 또는 과실이 없는 경우에는 그러하지 아니 합니다.</p>
						</li>
						<li>
							<p>이용자는 dbelleArt의 사전 서면 동의 없이 서비스를 이용하여 영리적인 목적의 영업행위를 하여서는 안 됩니다.
								이를 위반한 영업행의의 결과에 대하여 회사는 책임을 지지 않으며, 이와 같은 영업 행위의 결과로 회사에 손해가
								발생한 경우 회원은 회사에 대하여 손해배상의 의무를 집니다.</p>
						</li>
						<li>
							<p>회사는 천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에
								관하여 책임을 지지 않습니다.</p>
						</li>
						<li>
							<p>회사는 회원의 고의 또는 과실로 인한 서비스 이용의 장애에 대하여는 책임을 지지 않습니다. 다만,
								회원에게 부득이하거나 정당한 사유가 있는 경우에는 그러하지 아니합니다.</p>
						</li>
						<li>
							<p>회원이 서비스와 관련하여 게재한 정보나 자료 등의 신뢰성, 정확성 등에 대하여 회사는 고의 또는 중대한
								과실이 없는 한 책임을 지지 않습니다.</p>
						</li>
						<li>
							<p>회사는 회원이 다른 회원 또는 타인과 서비스를 매개로 발생한 거래나 분쟁에 대해 개입할 의무가 없으며,
								이로 인한 손해에 대해 책임을 지지 않습니다.</p>
						</li>
						<li>
							<p>회사는 무료로 제공되는 서비스 이용과 관련하여 회원에게 발생한 손해에 대해서는 책임을 지지 않습니다.
								그러나 회사의 고의 또는 중과실에 의한 경우에는 그러하지 아니합니다.</p>
						</li>
					</ol>
					<h2>제 19 조 (분쟁해결)</h2>
					<ol>
						<li>
							<p>회사는 이용자가 제기하는 정당한 의견이나 불만을 반영하고 그 피해를 보상하기 위하여 자체적인 피해보상처리
								절차를 수립하고 운영합니다.</p>
						</li>
						<li>
							<p>회사는 이용자로부터 제출되는 불만사항 및 의견은 우선적으로 그 사항을 처리합니다. 다만, 신속한 처리가
								곤란한 경우에는 이용자에게 그 사유와 처리일정을 즉시 통보해 드립니다.</p>
						</li>
					</ol>
					<h2>제 20 조 (준거법 및 관할)</h2>
					<ol>
						<li>
							<p>이 약관은 대한민국 법률에 따라 규율되고 해석됩니다.</p>
						</li>
						<li>
							<p>회사와 회원 간에 발생한 분쟁으로 소송이 제기되는 경우에는 법령에 정한 절차에 따른 법원을 관할 법원으로
								합니다.</p>
						</li>
					</ol>
					<p>
						<em>이용약관 시행일자 2022.06.04.</em>
					</p>
				</div>
			</div>
			
			
			
			
			
			<!-- marketing  -->
			<div class="TermsModal__contentBox marketing first">
				<div class="TermsModal__content">
					<h1>개인정보 수집 및 이용에 관한 동의</h1>
					<p>㈜dbelleArt{이하 ‘회사’}은 수집한 개인정보를 관리함에 있어서 개인정보보호법에서 규정하고 있는 책임과 의무를
						준수하고 있습니다. 회사는 개인 정보 수집 및 이용과 관련하여 다음 사항을 안내 드리오니, 내용을 자세히 읽으신 후
						동의 여부를 결정하여 주십시오.</p>
					<h2>개인정보 수집 및 이용 내역 (필수)</h2>
					<table>
						<thead>
							<tr>
								<th>수집 및 이용 목적</th>
								<th>수집 항목</th>
								<th>보유 기간</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>dbelleArt 회원가입 및 회원 ID의 제공(필수), 본인 여부 확인 및 본인 인증</td>
								<td>이름, 휴대폰번호, 통신사업자, 내/외국인 여부, 암호화된 이용자 확인값(CI),
									중복가입확인정보(DI), 비밀번호</td>
								<td>서비스 마지막 이용일 또는 회원 탈퇴 후 1년 또는 법령에 따른 보존 기간 중 긴 기간</td>
							</tr>
							<tr>
								<td>dbelleArt 회원가입 및 회원 ID의 제공 (선택)</td>
								<td>생년월일, 성별, 직업/학과, 관심사, SNS 및 Github 정보 등</td>
								<td>서비스 마지막 이용일 또는 회원 탈퇴 후 1년 또는 법령에 따른 보존 기간 중 긴 기간</td>
							</tr>
							<tr>
								<td>(만 14세 미만의 경우) 법정 대리인의 동의 취득</td>
								<td>보호자의 이름, 생년월일, 성별, 휴대전화 번호, 통신사업자, 내/외국인 여부</td>
								<td>서비스 마지막 이용일 또는 회원 탈퇴 후 1년 또는 법령에 따른 보존 기간 중 긴 기간</td>
							</tr>
							<tr>
								<td>서비스 부정 이용 확인 및 방지</td>
								<td>서비스 이용 기록, 쿠키, 접속지 정보, 기기 정보, 기기 브라우저 정보</td>
								<td>서비스 마지막 이용일 또는 회원 탈퇴 후 1년 또는 법령에 따른 보존 기간 중 긴 기간</td>
							</tr>
							<tr>
								<td>dbelleArt 멤버십 결제</td>
								<td>- 신용카드 결제 시: 카드번호(일부), 비밀번호(앞 2자리), 유효기간, 생년월일 6자리 또는
									사업자등록번호 10자리 등<br>- 간편 결제 시: 간편 결제 계정 로그인 정보<br>-
									휴대전화번호 결제 시: 휴대전화번호, 결제승인번호 등 <br>- 계좌이체 시: 예금주명, 계좌번호,
									계좌은행 등
								</td>
								<td>서비스 마지막 이용일 또는 회원 탈퇴 후 1년 또는 법령에 따른 보존 기간 중 긴 기간</td>
							</tr>
							<tr>
								<td>환불 처리시</td>
								<td>계좌은행, 계좌번호, 예금주명, 이메일, 휴대폰번호</td>
								<td>서비스 마지막 이용일 또는 회원 탈퇴 후 1년 또는 법령에 따른 보존 기간 중 긴 기간</td>
							</tr>
							<tr>
								<td>고객센터 문의 시</td>
								<td>문의 및 상담 내용에 포함된 개인정보</td>
								<td>서비스 마지막 이용일 또는 회원 탈퇴 후 1년 또는 법령에 따른 보존 기간 중 긴 기간</td>
							</tr>
							<tr>
								<td>통계 작성 및 연구 등 : 서비스 및 콘텐츠 관련 통계 작성(상업적 목적 포함) 및 연구(산업적
									연구 포함) 등</td>
								<td>이름, 성별, 생년월일, 휴대폰번호, 통신사업자, 내/외국인 여부, 암호화된 이용자 확인값(CI),
									중복가입 확인정보(DI),소속회사의 명칭/ 규모/산업군/주소, 소속 회사 내에서의 전화번호/직책/부서 (SNS
									계정을 통해 가입시) 이메일</td>
								<td>서비스 마지막 이용일 또는 회원 탈퇴 후 1년 또는 법령에 따른 보존 기간 중 긴 기간</td>
							</tr>
							<tr>
								<td>개인 학습 관리</td>
								<td>이름, 시험 결과</td>
								<td>서비스 마지막 이용일 또는 회원 탈퇴 후 1년 또는 법령에 따른 보존 기간 중 긴 기간</td>
							</tr>
						</tbody>
					</table>
					<p>귀하는 개인정보 수집과 이용에 동의하지 않을 권리가 있습니다. 그러나 동의를 거부할 경우에는 원활한 서비스
						제공에 일부 제한을 받을 수 있습니다.</p>
					<p>법령에 따른 개인정보의 수집 및 이용, 계약의 이행과 편의 증진을 위한 개인정보 처리위탁 기타 개인정보
						처리와 관련된 일반 사항은 dbelleArt의 개인정보처리방침에 따릅니다.</p>
					<h2>개인정보 수집 및 이용 내역 (선택)</h2>
					<table>
						<thead>
							<tr>
								<th>수집 목적</th>
								<th>수집 항목</th>
								<th>보유 기간</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>dbelleArt 회원가입 (선택)</td>
								<td>이메일, 이름, 성별, 닉네임, 생년월일, 전화번호, 직업 (SNS 계정을 통해 가입시) SNS
									계정, 프로필사진</td>
								<td>서비스 마지막 이용일 또는 회원 탈퇴 후 1년 또는 법령에 따른 보존 기간</td>
							</tr>
							<tr>
								<td>마케팅 및 광고에 활용 (선택) : 신규 서비스(제품) 개발 및 특화, 이벤트 등 광고성 정보 전달</td>
								<td>이름, 생년월일, 휴대폰번호, 접속 빈도, 통신사업자, 내/외국인 여부, 암호화된 이용자
									확인값(CI), 중복가입확인정보(DI)</td>
								<td>서비스 마지막 이용일 또는 회원 탈퇴 후 1년 또는 법령에 따른 보존 기간</td>
							</tr>
						</tbody>
					</table>
					<p>귀하는 개인정보 수집과 이용에 동의하지 않을 권리가 있습니다. 그러나 동의를 거부할 경우에는 원활한 서비스
						제공에 일부 제한을 받을 수 있습니다.</p>
					<p>법령에 따른 개인정보의 수집 및 이용, 계약의 이행과 편의 증진을 위한 개인정보 처리위탁 기타 개인정보
						처리와 관련된 일반 사항은 dbelleArt의 개인정보처리방침에 따릅니다.</p>
					<h2>개인정보 제3자 제공 내역</h2>
					<table>
						<thead>
							<tr>
								<th>제공받는 자</th>
								<th>제공 목적</th>
								<th>제공하는 개인정보 항목</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>직원이 소속된 회사명</td>
								<td>기업 회원의 소속 직원 학습 관리</td>
								<td>성명, 시험 결과</td>
							</tr>
						</tbody>
					</table>
					<p>귀하는 개인정보 수집과 이용에 동의하지 않을 권리가 있습니다. 그러나 동의를 거부할 경우에는 원활한 서비스
						제공에 일부 제한을 받을 수 있습니다.</p>
					<p>법령에 따른 개인정보의 수집 및 이용, 계약의 이행과 편의 증진을 위한 개인정보 처리위탁 기타 개인정보
						처리와 관련된 일반 사항은 dbelleArt의 개인정보처리방침에 따릅니다.</p>
				</div>
			</div>
			
			<div class="TermsModal__buttonWrapper">
				<button type="submit"
					class="ButtonBasic_container__P4gxI ButtonBasic_solid__KgRqI" onclick="goBack();">
					<span class="TermsModal__buttonText">확인</span>
				</button>
			</div>
			
		</div>
	</div>
</body>
</html>