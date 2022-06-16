<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<head>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

<script type="text/javascript"
	src="/resources/js/join.js?v=<%=System.currentTimeMillis() %>"></script>
<!-- ?v=<%=System.currentTimeMillis() %> -> js 파일을 가져올 때 이전 js파일로 적용되는 경우 해결 방법  -->
</head>


<!-- Join Start -->
<div class="container-xxl py-6">
	<div class="container">
		<div class="mx-auto text-center wow fadeInUp" data-wow-delay="0.1s"
			style="max-width: 600px;">
			<div
				class="d-inline-block border rounded-pill text-primary px-4 mb-3">Let's
				JOIN</div>
			<h2 class="mb-5">Join</h2>
		</div>
		<div class="row justify-content-center">
			<div class="col-lg-7 wow fadeInUp" data-wow-delay="0.3s">
				<form action="/joinpPro" method="POST" id="btnForm" onsubmit="return false">
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />
					<div class="row g-3">

						<div class="col-12">
							<div class="form-floating">
								<input type="text" class="form-control" id="name" name="name"
									placeholder="Your Name" value="" required> <label
									for="name">Your Name</label>
							</div>
						</div>
						<span id="vaildName"></span>

						<div class="col-12">
							<div class="form-floating">
								<input type="email" class="form-control" id="email" name="email"
									placeholder="Your Email" value="" required> <label
									for="email">Your Email</label>
							</div>
						</div>
						<span id="vaildEmail"></span>



						<div class="col-12">
							<div class="form-floating">
								<input type="password" class="form-control" id="pw" name="pw"
									placeholder="Your password" value="" required
									autocomplete="off"> <label for="password">Your
									password</label>
							</div>
						</div>
						<span id="vaildPw"></span>

						<div class="col-12">
							<div class="form-floating">
								<input type="password" class="form-control" id="pwCheck"
									name="pwCheck" placeholder="Password Check" value="" required
									autocomplete="off"> <label for="password">Password
									Check</label>
							</div>
						</div>
						<span id="vaildPwcheck"></span>

						<div class="col-12">
							<div class="form-floating">
								<input type="text" class="form-control" id="tel" name="tel"
									placeholder="tel" value="" required> <label for="tel">Your
									tel</label>
							</div>
						</div>
						<span id="vaildTel"></span>

						<div class="col-12">
							<div class="form-floating">
								<input type="text" class="form-control" id="address"
									name="address" placeholder="address" value="" required>
								<label for="address">Your address</label>
							</div>
						</div>
						<span id="vaildAddress"></span>
						

						<div class="form-floating">
							<div class="btn btn-link">
								<input type="checkbox" id="checkAll" name="checkAll"> 
									<label for="checkAll"> 약관 전체 동의하기</label>
							</div>
							<p></p>
							<div class="btn btn-link">
								<input type="checkbox" id="privacyAgreeCheckbox" name="privacyAgreeCheckbox" class="normal">
									 <label for="privacyAgreeCheckbox"> [필수] 개인정보 수집 및 이용 동의 </label> 
								<button class="d-inline-block border rounded-pill text-primary px-4 mb-3" id="detail" onclick="location.href='/privacyAgree'" >자세히
								</button>
								
							</div>
							<div class="btn btn-link">
								<input type="checkbox" id="dbelleAgreeCheckbox" name="dbelleAgreeCheckbox" class="normal">
									 <label for="dbelleAgreeCheckbox"> [필수] dbelleArt, dbelleArt 스토어 이용 악관 </label>
								<button class="d-inline-block border rounded-pill text-primary px-4 mb-3" onclick="location.href='/dbelleAgree'">자세히</button>
							</div>
							
							
							<div class="btn btn-link">
								<input type="checkbox" id="marketingAgreeCheckbox" name="marketingAgreeCheckbox"  class="normal">
									 <label for="marketingAgreeCheckbox"> [선택] 마케팅 정보 수신 및 선택적 개인정보 제공</label>
										<button class="d-inline-block border rounded-pill text-primary px-4 mb-3" id="detail3" onclick="location.href='/marketingAgree'">자세히</button>
							</div>
							
							<br/>
							<span id="vaildEssential"></span>
							
						</div>
						


<!-- 							<div class="btn btn-link">
								<input type="checkbox" id="marketingReceiveAgreeCheckbox"
									name="marketingReceiveAgreeCheckbox" class="blind"> <label
									for="marketingReceiveAgreeCheckbox"
									class="login-checkbox--version__label login-join-membership__checkbox__label"><svg
										width="16" height="16" viewBox="0 0 16 16" fill="none"
										xmlns="http://www.w3.org/2000/svg"
										class="login-checkbox--version__svg">
										<title></title> <path
											d="M2.6665 8L6.39952 11.7333L13.8665 4.26666"
											stroke="#D1D1D1" stroke-width="1.5" stroke-linecap="square"
											class="svg-color"></path></svg> [선택] 마케팅 활용 및 광고성 정보 수신 동의 </label>
								<button class="login-checkbox--version__link">자세히</button>
							</div> -->


						<div class="col-12">
							<button type="submit" id="sendJoin"
								class="btn btn-primary w-100 py-3">JOIN</button>
						</div>


					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<!--Join End -->






