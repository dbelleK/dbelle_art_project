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
                                <div class="col-12">
                                    <div class="form-floating">
                                        <input type="text" class="form-control" id="name" name="name" value="${user.name}" readonly>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating"> 
                                        <input type="email" class="form-control" id="email" name="email" value="${user.email}">
                                    </div>
                                </div>
                                
                                <div class="col-md-6" style="display: inline;">
                                    <div class="form-floating">
                                        <input type="password" class="form-control" id="pw" name="pw" value="" placeholder="Your password">
                                        <label for="password">Your password</label>
                                    </div>
                                    <div>
                                     <button type="button" class=""  id=mode name=mode>??????????????????</button>
                                    </div>
                                </div>
                                                   
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <input type="password" class="form-control" id="pwNew" name="pwNew"  value="" placeholder="New password">
                                    	<label for="password">Your passwordCheck</label>
                                    </div>
                                </div>
                                
                                <div class="col-12">
                                    <div class="form-floating">
                                    	<input type="text" class="form-control" id="tel" name="tel"  value="${user.tel}">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                    	<input type="text" class="form-control" id="address" name="address"  value="${user.address}">
                                    </div>
                                </div>
                             
                                <div class="col-md-6">
                                	<a href="/" class="btn btn-primary w-100 py-3">Go Back To Home</a>
                                </div>
                                <div class="col-md-6">
                              		<button type="submit" class="btn btn-primary w-100 py-3" value="????????????">MODIFY</button>
                                </div>
                                
                                
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!--Join End -->

<script>
        
        $(function() {

        	let pwValidCheck = document.getElementById('pw');
        	let pwCheckValidCheck = document.getElementById('pwCheck');
        	
    	// ????????????, ???????????? ????????? ?????? ??????
    	function setValidPwCheck() {

    			 if (pwValidCheck.value == ${user.pw}) {
    				// $("#vaildPwCheck").text("??????????????? ?????????????????????.").css("color", "green");
    				alert("??????????????? ?????????????????????.");
    				return true;

    			} else {
    				$("#vaildPwCheck").text("??????????????? ???????????? ?????? ??????????????????.").css("color", "red");
    				alert("??????????????? ???????????? ?????? ??????????????????.");
    				return false;
    			}
    		}
    	}
        
		document.getElementById("mode").addEventListener("click", function() {
		
			setValidPwCheck();
		
	}
	

});

        
        </script>