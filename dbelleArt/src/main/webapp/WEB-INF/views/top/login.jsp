<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
.col-md-6 {
	width: 300px;
	padding: 20px;
	margin: auto;
}

a {
	color: #f36989e6;
}

a:hover {
	color: #f36989e6;
}

.Sns__login {
	margin-left: 400px;
	color: #f36989e6;
}

.find {
	margin-left: 450px;
}

.kakaoLogo {
	border-radius: 50%;
	background: #f3edb5;
	padding: 10px;
}

.kakaoLogo:hover {
	border: 0.1rem solid #ffe600;
} 

.naverLogo {
	border-radius: 50%;
	background: #77efafb5;
	padding: 10px;
}
 
.naverLogo:hover {
	border: 0.1rem solid #19a764;
}  
</style>

<!-- Join Start -->
<div class="container-xxl py-6">
	<div class="container">
		<div class="mx-auto text-center wow fadeInUp" data-wow-delay="0.1s"
			style="max-width: 600px;">
			<div
				class="d-inline-block border rounded-pill text-primary px-4 mb-3">Let's
				LOGIN</div>
			<h2 class="mb-5">Login</h2>
			<h6 class="mb-5">
				회원이 아니신가요? <a href="/join"> 회원가입 하기</a>
			</h6>
		</div>
		<div class="row justify-content-center">
			<div class="col-lg-7 wow fadeInUp" data-wow-delay="0.3s">
				<form action="/loginPro" method="POST">
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />

					<div class="row g-3">
						<div class="col-12">
							<div class="form-floating">
								<input type="email" class="form-control" id="email" name="email"
									placeholder="Your Email"> <label for="email">Please
									enter your email</label>
							</div>
						</div>

						<div class="col-12">
							<div class="form-floating">
								<input type="password" class="form-control" id="pw" name="pw"
									placeholder="Your password"> <label for="pw">Please
									enter your password</label>
							</div>
						</div>


						<div class="col-md-6">
							<button class="btn btn-primary w-100 py-3 logins" type="submit">LOGIN</button>
						</div>

						<!-- 						<div>
							<span style="margin: 0">SNS 간편 로그인</span> <a href="/"
								onclick="kakaoLogin()">
								<div>kakao</div>
							</a> <a href="#" onclick="naverLogin()">
								<div>naver</div>
							</a>
						</div> -->


						<div class="find" style="display: inline;">
							<a target="_blank" href="" class="find_text">아이디 찾기</a>
							 | 
							 <a target="_blank" href="" class="find_text">비밀번호 찾기</a>
						</div>

						<div class="Sns__login" >
							<div type="button" class="Sns__kakao" onclick="kakaoLogin()" style="display: inline;">
								SNS 간편 로그인 &nbsp;
								<img src="https://raw.githubusercontent.com/dbelleK/crud_project/main/src/main/webapp/resources/img/kakao-talk.png" class=kakaoLogo />
							</div> 
							&nbsp;&nbsp;
							<div type="button" class="Sns__naver" onclick="naverLogin()" style="display: inline;">
								<img src="https://www.codeit.kr/static/images/homepage/naver-login.png" width="50px" height="50px" class=naverLogo />
							</div>
						</div>
						
						


					</div>


				</form>
			</div>
		</div>
	</div>
</div>
<!--login End -->

<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript" src="/resources/js/kakao.js"></script>


