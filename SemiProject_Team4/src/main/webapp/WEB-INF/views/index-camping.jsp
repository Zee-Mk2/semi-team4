<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<!-- Plugins CSS -->
<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/font-awesome/css/all.min.css">
<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/bootstrap-icons/bootstrap-icons.css">
<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/tiny-slider/tiny-slider.css">
<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/glightbox/css/glightbox.css">
<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/choices/css/choices.min.css">
<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/flatpickr/css/flatpickr.min.css">

<!-- Vendors -->
<script src="${path}/resources/assets/vendor/tiny-slider/tiny-slider.js"></script>
<script src="${path}/resources/assets/vendor/glightbox/js/glightbox.js"></script>
<script src="${path}/resources/assets/vendor/choices/js/choices.min.js"></script>
<script src="${path}/resources/assets/vendor/flatpickr/js/flatpickr.min.js"></script>

<!-- **************** MAIN CONTENT START **************** -->
<main>

<!-- =======================
Main Banner START -->
<section class="pt-0">
	<!-- 카로셀 시작 -->
	<div id="carousel" class="carousel slide" data-bs-ride="carousel" style="background-position: center center; background-repeat: no-repeat; background-size: cover;">
		<!-- Indicators/dots -->
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carousel" data-bs-slide-to="0" class="active"></button>
			<button type="button" data-bs-target="#carousel" data-bs-slide-to="1"></button>
		</div>
	
		<!-- The slideshow/carousel -->
		<div class="carousel-inner">
			<div class="carousel-item active">
				<div class="p-4 p-sm-5" style="background-image: url(${path}/resources/assets/images/campsite/01.png); background-position: center center; background-repeat: no-repeat; background-size: cover; height: 600px">
					<div class="container">
						<div class="justify-content-between"> 
							<div class="pt-8 text-start">
								<div class="h1 text-white title">날씨 좋은 여기로</div>
								<div class="h1 text-white title">주말에 캠핑 어때요?</div>
								<div class="h4 text-white mb-0 title">
									동강전망휴양림오토캠핑장
									<a href="${path}/camp-detail" class="btn btn-primary mx-3 text-white">상세보기</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="carousel-inner">
				<div class="carousel-item ">
					<div class="p-4 p-sm-5" style="background-image: url(${path}/resources/assets/images/campsite/02.jpg); background-position: center center; background-repeat: no-repeat; background-size: cover; height: 600px">
						<div class="container">
							<div class="justify-content-between"> 
								<div class="pt-8 text-start"> 
									<div class="h1 text-white title">날씨 좋은 여기로</div>
									<div class="h1 text-white title">주말에 캠핑 어때요?</div>
									<div class="h4 text-white mb-0 title">
										사천비토솔섬오토캠핑장
										<a href="${path}/camp-detail" class="btn btn-primary mx-3 text-white">상세보기</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
		</div>
	
		<!-- Left and right controls/icons -->
		<button class="carousel-control-prev" type="button" data-bs-target="#carousel" data-bs-slide="prev">
			<span class="carousel-control-prev-icon"></span>
		</button>
		<button class="carousel-control-next" type="button" data-bs-target="#carousel" data-bs-slide="next">
			<span class="carousel-control-next-icon"></span>
		</button>
	</div>
	<!-- 카로셀 끝 -->

	<div class="container position-relative">

		<!-- Search START -->
		<div class="col-12 mt-n8 pb-5">
				<!-- Booking from START -->
				<form class="bg-mode shadow rounded-5 px-3 py-1">
					<div class="row g-4 align-items-center">
						<div class="col-xl-11">
							<div class="row g-4">
								<!-- Location -->
								<div class="col-md-6 col-lg-3">
									<!-- Input field -->
									<div class="form-border-bottom form-control-transparent form-fs-lg" style="height: 85%;">
										<select class="form-select js-choice" data-search-enabled="true">
											<option value="">지역 선택</option>
											<option>서울/인천/경기</option>
											<option>부산/울산/경남</option>
											<option>대구/경북</option>
											<option>대전/충청</option>
											<option>광주/전남</option>
											<option>전북</option>
											<option>강원</option>
											<option>제주</option>
										</select>
									</div>
								</div>

								<!-- Check in -->
								<div class="col-md-6 col-lg-3">
									<!-- Date input -->
									<!-- <div class="form-control-border form-control-transparent form-fs-md">
										<input type="text" class="form-control flatpickr" data-mode="range" placeholder="Select date"
											value="19 Sep to 28 Sep">
									</div> -->
									<div class="form-border-bottom form-control-transparent form-fs-lg">
										<input type="text" class="form-control flatpickr py-2" data-mode="range" data-date-format="m-d" placeholder="일정 선택">
									</div>
								</div>

								<!-- Guest -->
								<div class="col-md-6 col-lg-6">
									<!-- Input field -->
									<div class="form-border-bottom form-control-transparent form-fs-lg">
										<input class="form-control border-0 shadow-0" type="text" name="search" placeholder="캠핑장 이름으로 검색">
									</div>
								</div>
							</div>
						</div>

						<!-- Button -->
						<div class="col-lg-1">
							<div class="d-grid">
								<a href="#" class="btn btn-lg mb-n1">
									<i class="fa-solid fa-search fs-4"></i>
								</a>
							</div>
						</div>
					</div>
				</form>
				<!-- Booking from END -->
		</div>
		<!-- Search END -->
	</div>
</section>
<!-- =======================
Main Banner END -->

<!-- =======================
Packages START -->
<section class="pt-0 pt-md-5">
	<div class="container">
		<!-- Title -->
		<div class="row mb-4">
			<a href="${path}/#">
				<div class="title">
					<span class="mb-0 text-secondary fs-2">테마별 BEST 캠핑장</span>
					<span class="mb-0 px-3 text-info fs-4">해변, 섬, 산, 숲, 계곡... 당신이 원하는 곳 어디든!</span>
				</div>
			</a>
		</div>

		

		<div class="row g-4 mb-5" id="packages">
			<c:forEach var="item" items="${bestList}">
				<div class="col-3">
					<!-- place item-->
					<div class="w-100 h-100">
						<div class="card card-img-scale h-100 border-0 shadow">
							<div class="card-img-top overflow-hidden">
								<img class="img-fluid" src="${item.img}" />
								<div class="card-img-overlay-top">
									<div class="d-flex justify-content-between">
										<span class="badge text-bg-dark mt-2" style="height: 1.5rem">${item.location}</span>
										<span class="mt-n2">
											<img src="${path}/resources/assets/images/amcharts_weather_icons_1.0.0/animated/day.svg">
										</span>
									</div>
								</div>
							</div>
							<!-- 하트 -->
							<a class="btn heart-btn mx-2 mt-n5">
								<i class="fas fa-heart fs-5 ms-n2 heart-icon" style="color: red;"></i>
							</a>
							<div class="card-body d-flex align-items-center">
								<div class="w-100">
									<h5 class="card-title text-decoration-none text-dark">
										<a href="${path}/camp-detail" class="stretched-link title">
											${item.campNm}
										</a>
									</h5>
									${item.doNm} ${item.sigunguNm}
									<div class="d-flex card-subtitle mb-n4 pt-2">
										<p class="card-text col-7">
											<span class="h5 text-secondary">₩ 150,000 ~</span>
										</p>
										<p class="flex-shrink-1 mt-1 card-stars text-end col-5" style="font-size: 0.7rem;">
											<i class="fa fa-star text-warning"></i>
											<i class="fa fa-star text-warning"></i>
											<i class="fa fa-star text-warning"></i>
											<i class="fa fa-star-half-alt text-warning"></i>
											<i class="far fa-star text-warning"></i>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>

	</div>
</section>
<!-- =======================
Packages END -->

<!-- 이달의픽 시작 -->
<section class="pt-0 pt-md-5 bg-light">
	
	<div class="container position-relative">
		<a href="${path}/community-info.html">
			<div class="text-center pb-3 title h2">캠핑정보 이달의 Pick!</div>
		</a>

		<div class="row g-4 mb-n8">
			<!-- 이달의픽 카드 1 -->
			<div class="col-6">
				<!-- place item-->
				<div class="w-100 h-75">
					<div class="card card-img-scale h-100 border-0 shadow">
						<div class="card-img-top overflow-hidden">
							<img class="img-fluid" src="${path}/resources/assets/images/blog/blog01.jpeg" />
						</div>
						<div class="card-body d-flex align-items-center">
							<div class="w-100">
								<h5 class="card-title text-decoration-none text-dark">
									<a href="${path}/camp-detail" class="stretched-link title">
										애견 캠퍼 분들 주목! 윈드스크린 추천
									</a>
								</h5>
								애견 캠퍼의 내돈내산 캠핑템 찐 후기
								<div class="d-flex align-items-center mt-2 mb-n2" href="${path}/profile.html">
									<!-- Avatar -->
									<div class="avatar me-3" style="width: 2rem; height: 2rem;">
										<img class="avatar-img rounded-circle shadow" src="${path}/resources/assets/images/avatar/01.jpg" alt="avatar">
									</div>
									<div class="fw-bold text-black">
										지석환
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<!-- 이달의픽 카드 2 -->
			<div class="col-6">
				<!-- place item-->
				<div class="w-100 h-75">
					<div class="card card-img-scale h-100 border-0 shadow">
						<div class="card-img-top overflow-hidden">
							<img class="img-fluid card-img-scale-wrapper" src="https://campingagains3.s3.ap-northeast-2.amazonaws.com/medium_tica1010005645_l_42b4f92e54.jpg" />
						</div>
						<div class="card-body d-flex align-items-center">
							<div class="w-100">
								<h5 class="card-title text-decoration-none text-dark">
									<a href="${path}/board-detail" class="stretched-link title">
										초보 캠퍼들의 오토캠핑 입문을 위한 가이드 2편
									</a>
								</h5>
								캠핑을 시작하고 싶지만 방법을 몰라 망설이는 초보 캠퍼를 위한 노하우
								<div class="d-flex align-items-center mt-2 mb-n2" href="${path}/profile.html">
									<!-- Avatar -->
									<div class="avatar me-3" style="width: 2rem; height: 2rem;">
										<img class="avatar-img rounded-circle shadow" src="${path}/resources/assets/images/avatar/01.jpg" alt="avatar">
									</div>
									<div class="fw-bold text-black">
										지석환
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
	</div>
</section>
<!-- 이달의픽 끝 -->

<!-- 캠핑장 베스트 리뷰 시작 -->
<section>
	<div class="container">
		<!-- Title -->
		<a href="${path}/board-review" style="z-index: 99; height: 5rem;">
			<div class="title mb-4">
				<span class="text-secondary fs-2">캠핑장 BEST 후기</span>
				<span class="px-3 text-info fs-4">이 캠핑장 어땠어요? 생생하고 솔직한 후기만 모아서!</span>
			</div>
		</a>

		<div class="row">

			<div class="col-4">
				<!-- place item-->
				<div class="w-100 h-100" onmouseover="showOverlay(this)" onmouseout="hideOverlay(this)">
					<div class="card card-img-scale h-100 border-0 shadow">
						<div class="card-img-top overflow-hidden">
							<div class="overlay overflow-hidden p-4 card">
								<a href="${path}/board-detail" class="stretched-link">
									<div class="overlay-content text-white">
										<div class="h4 text-white title">엉클캠핑장</div>
										<div>경기도 포천시</div>
									</div>
								</a>
							</div>
							<img class="img-fluid" src="${path}/resources/assets/images/review/01.jpg"/>
						</div>
						<div class="card-body d-flex align-items-center">
							<div class="w-100">
								<h5 class="card-title text-decoration-none text-dark">
									자연에 녹아든 캠핑장
								</h5>
								공기가 정말 맑은 느낌이었어요. 서비스도 좋고 환경이 쾌적해 정말 만족스러운 여행이 ...
								<div class="d-flex">
									<span class="d-flex align-items-center mt-2 col-7" href="${path}/profile.html">
										<!-- Avatar -->
										<div class="avatar me-3" style="width: 2rem; height: 2rem;">
											<img class="avatar-img rounded-circle shadow" src="${path}/resources/assets/images/avatar/01.jpg" alt="avatar">
										</div>
										<div class="fw-bold text-black">
										지석환
									</div>
									</span>
									<span class="col-5 text-end mt-3">
										<i class="fa fa-star text-warning"></i>
										<i class="fa fa-star text-warning"></i>
										<i class="fa fa-star text-warning"></i>
										<i class="fa fa-star-half-alt text-warning"></i>
										<i class="far fa-star text-warning"></i>
									</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-4">
				<!-- place item-->
				<div class="w-100 h-100" onmouseover="showOverlay(this)" onmouseout="hideOverlay(this)">
					<div class="card card-img-scale h-100 border-0 shadow">
						<div class="card-img-top overflow-hidden">
							<div class="overlay overflow-hidden p-4 card">
								<a href="${path}/board-detail" class="stretched-link">
									<div class="overlay-content text-white">
										<div class="h4 text-white title">엉클캠핑장</div>
										<div>경기도 포천시</div>
									</div>
								</a>
							</div>
							<img class="img-fluid" src="${path}/resources/assets/images/review/02.jpg"/>
						</div>
						<div class="card-body d-flex align-items-center">
							<div class="w-100">
								<h5 class="card-title text-decoration-none text-dark">
									자연에 녹아든 캠핑장
								</h5>
								공기가 정말 맑은 느낌이었어요. 서비스도 좋고 환경이 쾌적해 정말 만족스러운 여행이 ...
								<div class="d-flex">
									<span class="d-flex align-items-center mt-2 col-7" href="${path}/profile.html">
										<!-- Avatar -->
										<div class="avatar me-3" style="width: 2rem; height: 2rem;">
											<img class="avatar-img rounded-circle shadow" src="${path}/resources/assets/images/avatar/01.jpg" alt="avatar">
										</div>
										<div class="fw-bold text-black">
										지석환
									</div>
									</span>
									<span class="col-5 text-end mt-3">
										<i class="fa fa-star text-warning"></i>
										<i class="fa fa-star text-warning"></i>
										<i class="fa fa-star text-warning"></i>
										<i class="fa fa-star-half-alt text-warning"></i>
										<i class="far fa-star text-warning"></i>
									</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-4">
				<!-- place item-->
				<div class="w-100 h-100" onmouseover="showOverlay(this)" onmouseout="hideOverlay(this)">
					<div class="card card-img-scale h-100 border-0 shadow">
						<div class="card-img-top overflow-hidden">
							<div class="overlay overflow-hidden p-4 card">
								<a href="${path}/board-detail" class="stretched-link">
									<div class="overlay-content text-white">
										<div class="h4 text-white title">엉클캠핑장</div>
										<div>경기도 포천시</div>
									</div>
								</a>
							</div>
							<img class="img-fluid" src="${path}/resources/assets/images/review/03.jpg"/>
						</div>
						<div class="card-body d-flex align-items-center">
							<div class="w-100">
								<h5 class="card-title text-decoration-none text-dark">
									자연에 녹아든 캠핑장
								</h5>
								공기가 정말 맑은 느낌이었어요. 서비스도 좋고 환경이 쾌적해 정말 만족스러운 여행이 ...
								<div class="d-flex">
									<span class="d-flex align-items-center mt-2 col-7" href="${path}/profile.html">
										<!-- Avatar -->
										<div class="avatar me-3" style="width: 2rem; height: 2rem;">
											<img class="avatar-img rounded-circle shadow" src="${path}/resources/assets/images/avatar/01.jpg" alt="avatar">
										</div>
										<div class="fw-bold text-black">
										지석환
									</div>
									</span>
									<span class="col-5 text-end mt-3">
										<i class="fa fa-star text-warning"></i>
										<i class="fa fa-star text-warning"></i>
										<i class="fa fa-star text-warning"></i>
										<i class="fa fa-star-half-alt text-warning"></i>
										<i class="far fa-star text-warning"></i>
									</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>


		</div>
	</div>
</section>
<!-- 캠핑장 베스트 리뷰 끝 -->

<!-- 자유게시판 / 캠핑몰 시작 -->
<section>
	<div class="container">
		<div class="row g-6 nav">
			<!-- 자유게시판 시작 -->
			<span class="col-6">
				<!-- Title -->
				<a href="${path}/board-main">
					<div class="title mb-3">
						<span class="mb-0 text-secondary fs-2">자유게시판</span>
					</div>
				</a>

				<!-- 자유게시판 게시글 목록 -->
				<ul class="nav flex-column text-info">
					<li class="nav-item">
						<a class="nav-link py-1" href="${path}/board-detail">애견 캠퍼 분들 주목! 윈드스크린 추천
							<span class="ps-2 text-black-50" style="font-size: 0.9rem;">1분 전</span>
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link py-1" href="${path}/board-detail">초보 캠퍼들의 오토캠핑 입문을 위한 가이드 2편
							<span class="ps-2 text-black-50" style="font-size: 0.9rem;">1분 전</span>
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link py-1" href="${path}/board-detail">애견 캠퍼 분들 주목! 윈드스크린 추천
							<span class="ps-2 text-black-50" style="font-size: 0.9rem;">1분 전</span>
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link py-1" href="${path}/board-detail">초보 캠퍼들의 오토캠핑 입문을 위한 가이드 2편
							<span class="ps-2 text-black-50" style="font-size: 0.9rem;">1분 전</span>
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link py-1" href="${path}/board-detail">애견 캠퍼 분들 주목! 윈드스크린 추천
							<span class="ps-2 text-black-50" style="font-size: 0.9rem;">1분 전</span>
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link py-1" href="${path}/board-detail">초보 캠퍼들의 오토캠핑 입문을 위한 가이드 2편
							<span class="ps-2 text-black-50" style="font-size: 0.9rem;">1분 전</span>
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link py-1" href="${path}/board-detail">애견 캠퍼 분들 주목! 윈드스크린 추천
							<span class="ps-2 text-black-50" style="font-size: 0.9rem;">1분 전</span>
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link py-1" href="${path}/board-detail">초보 캠퍼들의 오토캠핑 입문을 위한 가이드 2편
							<span class="ps-2 text-black-50" style="font-size: 0.9rem;">1분 전</span>
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link py-1" href="${path}/board-detail">애견 캠퍼 분들 주목! 윈드스크린 추천
							<span class="ps-2 text-black-50" style="font-size: 0.9rem;">1분 전</span>
						</a>
					</li>
				</ul>
			</span>
			<!-- 자유게시판 끝 -->
			
			<!-- 캠핑몰 시작 -->
			<span class="col-6">
				<!-- Title -->
				<a href="${path}/#">
					<div class="title mb-3">
						<span class="mb-0 text-secondary fs-2">캠핑몰</span>
					</div>
				</a>
			
				<div id="ad-banner" class="carousel slide rounded-carousel" data-bs-ride="carousel">
					<!-- Indicators/dots -->
					<div class="carousel-indicators">
						<button type="button" data-bs-target="#ad-banner" data-bs-slide-to="0" class="active"></button>
						<button type="button" data-bs-target="#ad-banner" data-bs-slide-to="1"></button>
					</div>
			
					<!-- The slideshow/carousel -->
					<div class="carousel-inner">
						<div class="carousel-item active">
							<a href="${path}/#">
								<img src="${path}/resources/assets/images/ad_banner/banner1.jpg" class="d-block w-100 overflow-hidden">
							</a>
						</div>
						<div class="carousel-item">
							<a href="${path}/#">
								<img src="${path}/resources/assets/images/ad_banner/banner2.jpg" class="d-block w-100 overflow-hidden">
							</a>
						</div>
					</div>
			
					<!-- Left and right controls/icons -->
					<button class="carousel-control-prev" type="button" data-bs-target="#ad-banner" data-bs-slide="prev">
						<span class="carousel-control-prev-icon"></span>
					</button>
					<button class="carousel-control-next" type="button" data-bs-target="#ad-banner" data-bs-slide="next">
						<span class="carousel-control-next-icon"></span>
					</button>
				</div>
			</span>
			<!-- 캠핑몰 끝 -->
		</div>
	</div>
</section>
<!-- 자유게시판 / 캠핑몰 끝 -->

</main>
<!-- **************** MAIN CONTENT END **************** -->


<jsp:include page="/WEB-INF/views/common/footer.jsp"/>