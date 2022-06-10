<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- Join Start -->
<div class="container-xxl py-6">
	<div class="container">
		<div class="mx-auto text-center wow fadeInUp" data-wow-delay="0.1s"
			style="max-width: 600px;">
			<div
				class="d-inline-block border rounded-pill text-primary px-4 mb-3">Q&A</div>
			<h2 class="mb-5">Q&A를 남겨주시면 순차적으로 답변드리겠습니다.</h2>
		</div>

		<div class="row justify-content-center">
			<div class="col-lg-7 wow fadeInUp" data-wow-delay="0.3s">
				<form action="/qAndaPro" method="POST">
					<div class="row g-3">
						<div class="col-12">
							<div class="form-floating">
								<textarea class="form-control"
									placeholder="Leave a message here" id="title" name="title"
									style="height: 100px"></textarea>
								<label for="title">제목</label>
							</div>
						</div>

						<div class="col-12">
							<div class="form-floating">
								<textarea class="form-control"
									placeholder="Leave a message here" id="content" name="content"
									style="height: 150px"></textarea>
								<label for="content">내용</label>
							</div>
						</div>

						
						<div class="col-md-6">
							<a href="top/notice">
								<button class="btn btn-primary w-100 py-3">뒤로가기</button>
							</a>
						</div>
						<div class="col-md-6">
							<button class="btn btn-primary w-100 py-3" type="submit">작성완료</button>
						</div>
					</div>
				</form>
			</div>
		</div>

	</div>
</div>
