<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

        <!-- Join Start -->
        <div class="container-xxl py-6">
            <div class="container">
                <div class="mx-auto text-center wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                    <div class="d-inline-block border rounded-pill text-primary px-4 mb-3">Let's JOIN</div>
                    <h2 class="mb-5">Join</h2>
                </div>
                <div class="row justify-content-center">
                    <div class="col-lg-7 wow fadeInUp" data-wow-delay="0.3s">
                        <form action="/joinpPro" method="POST">
                            <div class="row g-3">
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <input type="text" class="form-control" id="name" name="name" placeholder="Your Name">
                                        <label for="name">Your Name</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <input type="email" class="form-control" id="email" name="id" placeholder="Your Email">
                                        <label for="email">Your Email</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <input type="password" class="form-control" id="pw" name="pw" placeholder="Your password">
                                        <label for="password">Your password</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <input type="password" class="form-control" id="pwCheck" name="pwCheck" placeholder="Password Check">
                                        <label for="password">Password Check</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                    	<input type="text" class="form-control" id="tel" name="tel" placeholder="tel">
                                        <label for="tel">Your tel</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                    	<input type="text" class="form-control" id="address" name="adress" placeholder="address">
                                        <label for="address">Your address</label>
                                    </div>
                                </div>
                                
                                <!-- 전체약관동의 누르고 창 뜨게해서 그 안에 3개정도 글 쓰고 체크하게 하기 -->
                                <div class="col-12">
                                    <div class="form-floating">
                                    	<input type="checkbox" class="form-control" id="checkAll" name="checkAll" placeholder="전체 약관 동의">
                                        <label for="checkAll">전체 약관 동의</label>
                                    </div>
                                </div>
                             
                                <div class="col-12">
                                    <button class="btn btn-primary w-100 py-3" type="submit">JOIN</button>
                                </div>
                                
                                
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!--Join End -->