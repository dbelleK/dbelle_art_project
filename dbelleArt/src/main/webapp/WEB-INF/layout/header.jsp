<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- <script type="text/javascript" src="/resources/js/topbtn.js?v=<%=System.currentTimeMillis() %>"></script>
 --%>
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
</style>

<script>
$(function() {
	$('.navbar').click(function() {
		$('.navbar').css('color', '#FFFFFF');
	});
});

</script>
	<header id="header">

    
    <div class="container-xxl bg-white p-0">
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->


        <!-- Navbar & Hero Start -->
        <div class="container-xxl position-relative p-0">
            <nav class="navbar navbar-expand-lg navbar-light px-4 px-lg-5 py-3 py-lg-0">
                <a href="/" class="navbar-brand p-0">
                    <h1 class="m-0">DBTI</h1>
                    <!-- <img src="img/logo.png" alt="Logo"> -->
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="fa fa-bars"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <div class="navbar-nav ms-auto py-0">
                        <a href="/" class="nav-item nav-link active">Home</a>
                        <a href="/about" class="nav-item nav-link">소개</a>
                        <a href="/service" class="nav-item nav-link">시작</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"></a>
                            <div class="dropdown-menu m-0">
                                <a href="/join" class="dropdown-item">회원가입</a>
                                <a href="/login" class="dropdown-item">로그인</a>
                                <a href="/myPage" class="dropdown-item">마이페이지</a>
                                <a href="/notice" class="dropdown-item">공지사항/Q&A</a>
                            </div>
                        </div>
                        <a href="contact.html" class="nav-item nav-link">멤버십</a>
                    </div>
                    <a href="/login" class="btn btn-light rounded-pill text-primary py-2 px-4 ms-lg-5">

                    	<c:if test="${empty user.email}">
							로그인 ${user.email}
						</c:if>
						<c:if test="${not empty user.email}">
							${user.email} 님 로그인 되었습니다.
						</c:if>
                    </a>
                </div>
            </nav>
	</header>