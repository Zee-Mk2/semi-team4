<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!-- =======================
Footer START -->
<footer class="bg-success mt-4">
	<div class="container">
		<div class="py-5 pb-0 text-info">
			<div class="row g-4 justify-content-between">

				<!-- Widget 1 START -->
				<div class="col-7">
					<!-- logo -->
					<a class="me-0" href="home">
						<img class="h-40px" src="${path}/resources/assets/images/logo-1.png" alt="logo">
					</a>

					<div>
						<br>주말일기는 캠핑과 공연의 검색과 예약/예매, 추천 서비스를 제공하는 플랫폼입니다.
						<br>전국 날씨를 기반으로 첫 페이지를 캠핑/공연 중 전환하여 노출합니다.
					</div>
				</div>
				<!-- Widget 1 END -->

				<!-- Widget 2 START -->
				<div class="col-5">
					<div class="row g-4 g-lg-5">
						<!-- Link block -->
						<div class="col-4">
							<h5 class="mb-2 mb-md-4">페이지</h5>
							<ul class="nav flex-column">
								<li class="nav-item"><a class="nav-link pt-0" href="${path}/sign-up.html">회원가입</a></li>
								<li class="nav-item"><a class="nav-link" href="${path}/sign-in.html">로그인</a></li>
								<li class="nav-item"><a class="nav-link" href="${path}/camping-search.html">캠핑장 검색</a></li>
								<li class="nav-item"><a class="nav-link" href="${path}/#">캠핑장 추천</a></li>
								<li class="nav-item"><a class="nav-link" href="${path}/#">캠핑몰</a></li>
							</ul>
						</div>

						<!-- Link block -->
						<div class="col-4">
							<h5 class="mb-2 mb-md-4">커뮤니티</h5>
							<ul class="nav flex-column">
								<li class="nav-item"><a class="nav-link pt-0" href="${path}/community-free.html">자유게시판</a></li>
								<li class="nav-item"><a class="nav-link" href="${path}/community-info.html">정보공유</a></li>
								<li class="nav-item"><a class="nav-link" href="${path}/community-review.html">후기</a></li>
							</ul>
						</div>

						<!-- Link block -->
						<div class="col-4">
							<h5 class="mb-2 mb-md-4">개발자</h5>
							<ul class="nav">
								<li class="mb-2 pe-3">권수경</li>
								<li class="mb-2">김대훈</li>
							</ul>
							<ul class="nav">
								<li class="mb-2 pe-3">김상혁</li>
								<li class="mb-2">오정민</li>
							</ul>
							<ul class="nav">
								<li class="mb-2 pe-3">전승민</li>
								<li class="mb-2">지석환</li>
							</ul>
							<ul class="nav">
								<li class="mb-2 pe-3">천보영</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- Widget 2 END -->
			</div>

			<!-- Divider -->
			<hr class="mt-4 mb-0">

			<!-- Bottom footer -->
			<div class="container py-3 px-0">
				<div class="d-md-flex justify-content-between align-items-center text-center text-md-left">
					<!-- copyright text -->
					<div class="text-reset text-primary-hover">© 2023. 주말일기. All rights reserved. </div>
					<!-- copyright links-->
					<div class="mt-3 mt-md-0">
						<ul class="nav text-primary-hover justify-content-center justify-content-md-end">
							<li class="nav-item">
								<a class="nav-link" href="#"><i class="fab fa-facebook-f"></i></a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="#"><i class="fab fa-twitter"></i></a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="#"><i class="fab fa-instagram"></i></a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="#"><i class="fab fa-linkedin-in"></i></a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="#"><i class="fab fa-github"></i></a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</footer>
<!-- =======================
Footer END -->

<!-- Back to top -->
<div class="back-top"></div>

<!-- Bootstrap JS -->
<script src="${path}/resources/assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

<!-- ThemeFunctions -->
<script src="${path}/resources/assets/js/functions.js"></script>

</body>
</html>