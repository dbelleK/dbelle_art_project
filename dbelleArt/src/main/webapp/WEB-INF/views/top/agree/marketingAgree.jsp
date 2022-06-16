<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<link href="/resources/css/popup.css" rel="stylesheet"> 
<link href="/resources/css/popupButton.css" rel="stylesheet">

<style>
.navbar.navbar-expand-lg.navbar-light.px-4.px-lg-5.py-3.py-lg-0 {
	display: none;
}

.container-fluid.bg-dark.text-light.footer.pt-5.wow.fadeIn {
	display: none;
}

.container-xxl.bg-primary.page-header {
	display: none;
}

</style>

</head>

<body>
	<div class="Modal__root" role="button" tabindex="0">
		<div class="TermsModal">
			<div class="TermsModal__navigator">
				<button class="TermsModal__navigatorItem" type="button">이용
					약관</button>
				<div class="TermsModal__dot"></div>
				<button class="TermsModal__navigatorItem" type="button">개인정보
					처리방침</button>
				<div class="TermsModal__dot"></div>
				<button
					class="TermsModal__navigatorItem TermsModal__navigatorItem--selected"
					type="button">개인정보 수집 및 이용에 관한 동의</button>
			</div>
			<div class="TermsModal__contentBox">
				<div class="TermsModal__content">
					<h1>개인정보 수집 및 이용에 관한 동의</h1>
					<p>㈜코드잇{이하 ‘회사’}은 수집한 개인정보를 관리함에 있어서 개인정보보호법에서 규정하고 있는 책임과 의무를
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
								<td>Codeit 회원가입 및 회원 ID의 제공(필수), 본인 여부 확인 및 본인 인증</td>
								<td>이름, 휴대폰번호, 통신사업자, 내/외국인 여부, 암호화된 이용자 확인값(CI),
									중복가입확인정보(DI), 비밀번호</td>
								<td>서비스 마지막 이용일 또는 회원 탈퇴 후 1년 또는 법령에 따른 보존 기간 중 긴 기간</td>
							</tr>
							<tr>
								<td>Codeit 회원가입 및 회원 ID의 제공 (선택)</td>
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
								<td>Codeit 멤버십 결제</td>
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
						처리와 관련된 일반 사항은 코드잇의 개인정보처리방침에 따릅니다.</p>
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
								<td>Codeit 회원가입 (선택)</td>
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
						처리와 관련된 일반 사항은 코드잇의 개인정보처리방침에 따릅니다.</p>
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
						처리와 관련된 일반 사항은 코드잇의 개인정보처리방침에 따릅니다.</p>
				</div>
			</div>
			<div class="TermsModal__buttonWrapper">
				<button type="submit"
					class="ButtonBasic_container__P4gxI ButtonBasic_solid__KgRqI">
					<span class="TermsModal__buttonText">확인</span>
				</button>
			</div>
		</div>
	</div>
</body>
</html>