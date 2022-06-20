<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

        <!-- Join Start -->
        <div class="container-xxl py-6">
            <div class="container">
                <div class="mx-auto text-center wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                    <div class="d-inline-block border rounded-pill text-primary px-4 mb-3">Let's LOGIN</div>
                    <h2 class="mb-5">Login</h2>
                    <h6 class="mb-5">회원이 아니신가요?
                    	<a href="/join">     회원가입 하기</a>
                    </h6>
                </div>
                <div class="row justify-content-center">
                    <div class="col-lg-7 wow fadeInUp" data-wow-delay="0.3s">
                        <form action="/loginPro" method="POST">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                            <div class="row g-3">

                                <div class="col-12">
                                    <div class="form-floating">
                                        <input type="email" class="form-control" id="email" name="email" placeholder="Your Email">
                                        <label for="email">Please enter your email</label>
                                    </div>
                                </div>
                                
                                <div class="col-12">
                                    <div class="form-floating">
                                        <input type="password" class="form-control" id="pw" name="pw" placeholder="Your password">
                                        <label for="pw">Please enter your password</label>
                                    </div>
                                </div>
  
                             
                                <div class="col-12">
                                    <button class="btn btn-primary w-100 py-3" type="submit">LOGIN</button>
                                </div>

								<div>
									<span style="margin: 0">SNS 간편 로그인</span> 
									<a href="#" onclick="kakaoLogin()">
										<div>kakao</div>
									</a>
									<a href="#" onclick="naverLogin()">
										<div>naver</div>
									</a>
								</div>

								<div>
									<button class="findPassword" id="findPassword" type="button" data-toggle="modal" data-target="#findPasswordModal">비밀번호찾기</button>
								</div>
								
								<!-- 비밀번호 찾기 Modal -->
													</div>
				</form>
			</div>
		</div>
	</div>
</div>
<!--login End -->
								

