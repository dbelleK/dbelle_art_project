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
	padding: 15px;
	margin-top: -10px;
}

.find {
	margin-left: 680px;
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
		
		
	<div class="find" style="display: inline;">
		<a data-toggle="modal" href="#findEmail">이메일 찾기</a>
		 | 
		 <a data-toggle="modal" href="#findPassword"  id="findPassword2" >비밀번호 찾기</a>
	</div>
						

    <!-- Modal -->
    <div class="modal fade" id="findPasswordModal" tabindex="-1" role="dialog" aria-labelledby="findPasswordModal" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body">
                    <div class="Popup__contentWrapper" id="find-password-modal">
                        <div class="PopupGeneral PopupGeneral__iconPosition--top PopupGeneral__hasTitle ">
                            <button class="PopupGeneral__closeBtn" data-dismiss="modal">
                                <i class="fa-solid fa-circle-xmark"></i>
                            </button>
                            <div class="PopupGeneral__contents">
                                <button class="PopupGeneral__contents--iconTop">
                                    <i class="fa-solid fa-unlock-keyhole"></i>
                                </button>
                                <div class="PopupGeneral__contents--title">
                                    <p>
                                    <p class="popupChangePW__title">비밀번호 재설정하기</p>
                                    </p>
                                </div>
                                <div class="PopupGeneral__contents--body"><p class="popupChangePW__description">이메일로 비밀번호 재설정 링크를 보내드려요.</p>
                                    <input id="find-email"autocomplete="off" class="popupChangePW__input" placeholder="가입시 등록한 이메일을 입력해 주세요.">
                                </div>
                            </div>
                            </p>

	                           <div class="PopupGeneral__btns">
	                               <div class="SignForm__submitBtnWrapper">
	                                   <span id="vaildEmail"></span>
	                                   <button type="button" id="sendEmail" class="ButtonGeneral SignForm__submitBtn ButtonGeneral__orange"><span>메일로 보내기</span></button>
	                              	</div>
                           	 	</div>
                        	</div>
                    	</div>
               		 </div>
           		 </div>
        	</div>
    	</div>
	</div>
</div>
<!--login End -->

<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript" src="/resources/js/kakao.js"></script>
<script type="text/javascript" src="/resources/js/findPassword.js"></script>


