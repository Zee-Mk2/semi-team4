<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="ko">
<head>
	<title>주말일기</title>

	<!-- Meta Tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="author" content="Webestica.com">
	<meta name="description" content="Booking - Multipurpose Online Booking Theme">

	<!-- Dark mode -->
	<script type="text/javascript">
		var theme = localStorage.getItem('data-theme');
		var root = document.documentElement;
		if (theme === 'dark' && theme !== undefined) {
			root.classList.add('dark-mode');
		} else {
			root.classList.remove('dark-mode');
		}
	</script>

	<!-- Favicon -->
	<link rel="shortcut icon" href="${path}/resources/assets/images/favicon.ico">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

	<!-- Plugins CSS -->
	<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/font-awesome/css/all.min.css">
	<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/bootstrap-icons/bootstrap-icons.css">
	<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/tiny-slider/tiny-slider.css">
	<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/glightbox/css/glightbox.css">
	<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/choices/css/choices.min.css">
	<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/flatpickr/css/flatpickr.min.css">

	<!-- Theme CSS -->
	<link rel="stylesheet" type="text/css" href="${path}/resources/assets/css/style.css">

	<!-- 폰트 -->
	<!-- 노토산스 -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	<!-- 나눔스퀘어 -->
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@2.0/nanumsquare.css">
</head>

<body>

<!-- Header START -->
<header class="navbar-light header-sticky fs-5">
	<div class="container">
		<!-- Logo Nav START -->
		<nav class="navbar navbar-expand-xl">
			<div class="container-fluid">
				<!-- Logo START -->
				<a class="navbar-brand py-0" href="${path}/index-camping.html">
					<img src="${path}/resources/assets/images/logo-1.png" style="height: auto; width: 9rem;" class="py-1">
				</a>
				<!-- Logo END -->

				<!-- Responsive navbar toggler -->
				<button class="navbar-toggler ms-auto ms-sm-0 p-0 p-sm-2" type="button" data-bs-toggle="collapse"
					data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-animation">
						<span></span>
						<span></span>
						<span></span>
					</span>
					<span class="d-none d-sm-inline-block small">Menu</span>
				</button>

				<!-- Responsive category toggler -->
				<button class="navbar-toggler ms-sm-auto mx-3 me-md-0 p-0 p-sm-2" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarCategoryCollapse"
					aria-controls="navbarCategoryCollapse" aria-expanded="false" aria-label="Toggle navigation">
					<i class="bi bi-grid-3x3-gap-fill fa-fw"></i><span
						class="d-none d-sm-inline-block small">Category</span>
				</button>

				<!-- Main navbar START -->
				<div class="navbar-collapse collapse" id="navbarCollapse">
					<ul class="navbar-nav navbar-nav-scroll me-auto">

						<a class="nav-link fw-bold" href="${path}/camping-search.html" id="listingMenu" aria-haspopup="true"
							aria-expanded="false">캠핑장 검색</a>
						<a class="nav-link fw-bold" href="${path}/test.html" id="listingMenu" aria-haspopup="true"
							aria-expanded="false">캠핑장 추천</a>
						<a class="nav-link fw-bold" href="${path}/test.html" id="listingMenu" aria-haspopup="true"
							aria-expanded="false">캠핑몰</a>

						<!-- Nav item Pages -->
						<li class="nav-item dropdown">
							<a href="${path}/community.html">
								<div class="nav-link fw-bold dropdown-toggle" href="${path}/community.html" id="pagesMenu">
									커뮤니티</div>
							</a>
							<ul class="dropdown-menu" aria-labelledby="pagesMenu">
								<li> <a class="dropdown-item" href="${path}/community-free.html">자유게시판</a></li>
								<li> <a class="dropdown-item" href="${path}/community-info.html">정보공유</a></li>
								<li> <a class="dropdown-item" href="${path}/community-review-camp.html">후기</a></li>
							</ul>
						</li>
					</ul>
				</div>
				<!-- Main navbar END -->

				<!-- Nav category menu START -->
				<div class="navbar-collapse collapse" id="navbarCategoryCollapse">
					<ul class="navbar-nav navbar-nav-scroll nav-pills-primary-soft text-center ms-auto p-2 p-xl-0">
						<!-- Nav item 공연 -->
						<li class="nav-item"> <a class="nav-link fw-bold" href="${path}/index-concert.html"><i
									class="fa-solid fa-ghost me-2"></i>공연</a> </li>

						<!-- Nav item 캠핑 -->
						<li class="nav-item"> <a class="nav-link fw-bold active" href="${path}/index-camping.html"><i
									class="fa-solid fa-campground me-2"></i>캠핑</a> </li>
					</ul>
				</div>
				<!-- Nav category menu END -->

				<!-- Profile and Notification START -->
				<ul class="nav flex-row align-items-center list-unstyled ms-xl-auto">

					<!-- Profile dropdown START -->
					<li class="nav-item ms-3 dropdown">
						<!-- Avatar -->
						<a class="avatar avatar-sm p-0" href="${path}/#" id="profileDropdown" role="button"
							data-bs-auto-close="outside" data-bs-display="static" data-bs-toggle="dropdown"
							aria-expanded="false">
							<img class="avatar-img rounded-circle" src="${path}/resources/assets/images/avatar/01.jpg" alt="avatar">
						</a>

						<ul class="dropdown-menu dropdown-animation dropdown-menu-end shadow pt-3"
							aria-labelledby="profileDropdown">
							<!-- Profile info -->
							<li class="px-3 mb-3">
								<div class="d-flex align-items-center">
									<!-- Avatar -->
									<div class="avatar me-3">
										<img class="avatar-img rounded-circle shadow"
											src="${path}/resources/assets/images/avatar/01.jpg" alt="avatar">
									</div>
									<div>
										<a class="h6 mt-2 mt-sm-0" href="#">지석환</a>
										<p class="small m-0">example@gmail.com</p>
									</div>
								</div>
							</li>
							<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
							<!-- Links -->
							<li>
								<hr class="dropdown-divider">
							</li>
							<li><a class="dropdown-item" href="#"><i
										class="fas fa-address-card fa-fw me-2"></i>회원정보</a></li>
							<li><a class="dropdown-item" href="#"><i class="fas fa-ticket fa-fw me-2"></i>나의
									예약정보</a></li>
							<li><a class="dropdown-item" href="#"><i class="fas fa-heart fa-fw me-2"></i>북마크</a>
							</li>
							<li><a class="dropdown-item bg-danger-soft-hover" href="sign-in.html"><i
										class="fas fa-sign-out-alt fa-fw me-2"></i>로그아웃</a></li>
							<li>
								<hr class="dropdown-divider">
							</li>

							<!-- Dark mode switch START -->
							<li>
								<div class="modeswitch-wrap" id="darkModeSwitch">
									<div class="modeswitch-item">
										<div class="modeswitch-icon"></div>
									</div>
									<span>Dark mode</span>
								</div>
							</li>
							<!-- Dark mode switch END -->
						</ul>
					</li>
					<!-- Profile dropdown END -->
				</ul>
				<!-- Profile and Notification START -->

			</div>
		</nav>
		<!-- Logo Nav END -->
	</div>
</header>
<!-- Header END -->
