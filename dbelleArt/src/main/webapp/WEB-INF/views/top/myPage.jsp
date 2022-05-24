<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <!-- Join Start -->
        <div class="container-xxl py-6">
            <div class="container">
                <div class="mx-auto text-center wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                    <div class="d-inline-block border rounded-pill text-primary px-4 mb-3">Modify Your Page</div>
                    <h2 class="mb-5">My Page</h2>
                </div>
                <div class="row justify-content-center">
                    <div class="col-lg-7 wow fadeInUp" data-wow-delay="0.3s">
                        <form action="/mypageInfoPro" method="post">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                            <div class="row g-3">
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <input type="text" class="form-control" id="name" placeholder="Your Name" readonly>${user.name}
                                        <label for="name">Your Name</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-floating"> 
                                        <input type="email" class="form-control" id="email" placeholder="Your Email">${user.email}
                                        <label for="email">Your Email</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <input type="password" class="form-control" id="pw" placeholder="Your password">
                                        <label for="password">Your password</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <input type="password" class="form-control" id="pwNew" placeholder="New password">
                                        <label for="password">New password</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                    	<input type="text" class="form-control" id="tel" placeholder="tel">${user.tel}
                                        <label for="tel">tel</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                    	<input type="text" class="form-control" id="address" placeholder="address">${user.address}
                                        <label for="address">address</label>
                                    </div>
                                </div>
                             
                                <div class="col-md-6">
                                	<a href="/" class="btn btn-primary w-100 py-3">Go Back To Home</a>
                                </div>
                                <div class="col-md-6">
                              		<button type="submit" class="btn btn-primary w-100 py-3" value="정보수정">MODIFY</button>
                                </div>
                                
                                
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!--Join End -->