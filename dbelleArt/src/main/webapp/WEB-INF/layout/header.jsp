<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<link href="/resources/css/whole.css" rel="stylesheet">
<style>
.navbar .navbar-nav .nav-link::before {
	position: absolute;
	content: "";
	width: 100%;
	height: 2px;
	bottom: 10px;
	left: 0;
	background: #000000;
	opacity: 0;
	transition: .5s;
}

.nav-item a.active{
	color : black;
}

</style>

<%-- <script>
$('.nav-item').click(function(){
    if($(this).hasClass('active')){
           $('.nav-item').removeClass('active');     

    } else {
           $('.nav-item').removeClass('active');

           $(this).addClass('active');

    }

});
</script>  --%>

<header id="header">

	<div class="container-xxl bg-white p-0">
		<!-- Spinner Start -->
		<div id="spinner"
			class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
			<div class="spinner-border text-primary"
				style="width: 3rem; height: 3rem;" role="status">
				<span class="sr-only">Loading...</span>
			</div>
		</div>
		<!-- Spinner End -->


		<!-- Navbar & Hero Start -->
		<div class="container-xxl position-relative p-0">
			<nav
				class="navbar navbar-expand-lg navbar-light px-4 px-lg-5 py-3 py-lg-0">
				<a href="/" class="navbar-brand p-0">
					<h1 class="m-0">DBTI</h1> <!-- <img src="img/logo.png" alt="Logo"> -->
				</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
					<span class="fa fa-bars"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarCollapse">
					<div class="navbar-nav ms-auto py-0">
						<a href="/" class="nav-item nav-link">Home</a>
						<!--                         <a href="/" class="nav-item nav-link active">Home</a> -->
						<a href="/about" class="nav-item nav-link">소개</a> 
						<a href="/service" class="nav-item nav-link">시작</a>
						<div class="nav-item dropdown">
							<a href="#" class="nav-link dropdown-toggle"
								data-bs-toggle="dropdown"></a>
							<div class="dropdown-menu m-0">
								<a href="/join" class="dropdown-item">회원가입</a> <a href="/notice"
									class="dropdown-item">공지사항/Q&A</a>
							</div>
						</div>
						<a href="contact.html" class="nav-item nav-link">멤버십</a>


						<div class="collapse navbar-collapse" id="navbarCollapse">
						
							<div class="navbar-nav mx-auto py-0">
								<!--// 로그인 후 //-->
								<security:authorize access="hasRole('ROLE_USER')">
									<security:authentication var="users" property="principal" />
									<div class="nav-item dropdown">
										<c:if test="${empty user.name}">
											<a href="#"
												class="btn btn-light rounded-pill text-primary py-2 px-4 ms-lg-5 data-bs-toggle="dropdown">로그인</a>
										</c:if>
										<c:if test="${not empty user.name}">
											<a href="#"
												class="btn btn-light rounded-pill text-primary py-2 px-4 ms-lg-5"
												data-bs-toggle="dropdown">${user.name}님</a>
										</c:if>

										<div class="dropdown-menu m-0">
											<a href="/myPage" class="dropdown-item"> <i
												class="fa-solid fa-user-astronaut"></i>마이페이지
											</a> <a href="/cs/faq" class="dropdown-item"> <script
													src="https://kit.fontawesome.com/12fa0b1450.js"
													crossorigin="anonymous"></script> &nbsp;<i
												class="fa-solid fa-question"></i>나의 검사지
											</a>


											<form name="logoutForm" method="post" action="/logout">
												<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
												<button type="submit" class="dropdown-item">
													<i class="fa-solid fa-arrow-right-to-bracket"></i>로그아웃
												</button>
											</form>
										</div>
									</div>
								</security:authorize>
							</div>
							
							<security:authorize access="isAnonymous()">
								<div class="SignForm__submitBtnWrapper header">
									<a href="/login"
										class="btn btn-light rounded-pill text-primary py-2 px-4 ms-lg-5"><span>로그인</span></a>
								</div>
							</security:authorize>
						</div>
						
					</div>
				</div>
			</nav>
		</div>
	</div>
</header>