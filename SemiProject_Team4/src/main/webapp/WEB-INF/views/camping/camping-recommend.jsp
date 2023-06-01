<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>


<!-- Plugins CSS -->
<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/font-awesome/css/all.min.css">
<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/bootstrap-icons/bootstrap-icons.css">
<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/splide-master/dist/css/splide.min.css">
<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/tiny-slider/tiny-slider.css">
<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/glightbox/css/glightbox.css">
<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/choices/css/choices.min.css">
<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/flatpickr/css/flatpickr.min.css">
<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/stepper/css/bs-stepper.min.css">

<!-- Vendors -->
<script src="${path}/resources/assets/vendor/tiny-slider/tiny-slider.js"></script>
<script src="${path}/resources/assets/vendor/glightbox/js/glightbox.js"></script>
<script src="${path}/resources/assets/vendor/choices/js/choices.min.js"></script>
<script src="${path}/resources/assets/vendor/flatpickr/js/flatpickr.min.js"></script>
<script src="${path}/resources/assets/vendor/stepper/js/bs-stepper.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>


<!-- **************** MAIN CONTENT START **************** -->
<main>

	<!-- Category Select Section 시작 -->
	<section class="pt-0 pt-md-5">
		<div class="container">
			<!-- Title -->
			<div class="row mb-3 mb-sm-4">
				<div class="col-12 text-center">
					<h1 class="mb-0 text-info">요즘 뜨는 핫한 캠핑장</h1>
					<h1 class="mb-0 text-info">테마별로 모아보기</h1>
				</div>
			</div>
			<!-- Category Items -->
			<div class="row g-4 g-xl-5">
				<!-- Category Item 1 -->
				<div class="col-sm-6 col-lg-4 col-xl-3">
					<div class="row g-2 g-md-3 align-items-center position-relative">
						<!-- Image -->
						<div class="col-md-6">
							<img src="${path}/resources/assets/images/category/camping/01.jpg"
								class="rounded-3" alt>
						</div>
						<!-- Content -->
						<div class="col-md-6">
							<div class="p-2 p-md-0">
								<h5 class="mb-1">
									<a href="#" class="stretched-link"> 해변 </a>
								</h5>
								<span>4,568 Places</span>
							</div>
						</div>
					</div>
				</div>
				<!-- Category Item 2 -->
				<div class="col-sm-6 col-lg-4 col-xl-3">
					<div class="row g-2 g-md-3 align-items-center position-relative">
						<!-- Image -->
						<div class="col-md-6">
							<img src="${path}/resources/assets/images/category/camping/02.jpg"
								class="rounded-3" alt>
						</div>
						<!-- Content -->
						<div class="col-md-6">
							<div class="p-2 p-md-0">
								<h5 class="mb-1">
									<a href="#" class="stretched-link"> 섬 </a>
								</h5>
								<span>4,568 Places</span>
							</div>
						</div>
					</div>
				</div>
				<!-- Category Item 3 -->
				<div class="col-sm-6 col-lg-4 col-xl-3">
					<div class="row g-2 g-md-3 align-items-center position-relative">
						<!-- Image -->
						<div class="col-md-6">
							<img src="${path}/resources/assets/images/category/camping/03.jpg"
								class="rounded-3" alt>
						</div>
						<!-- Content -->
						<div class="col-md-6">
							<div class="p-2 p-md-0">
								<h5 class="mb-1">
									<a href="#" class="stretched-link"> 산 </a>
								</h5>
								<span>4,568 Places</span>
							</div>
						</div>
					</div>
				</div>
				<!-- Category Item 4 -->
				<div class="col-sm-6 col-lg-4 col-xl-3">
					<div class="row g-2 g-md-3 align-items-center position-relative">
						<!-- Image -->
						<div class="col-md-6">
							<img src="${path}/resources/assets/images/category/camping/04.jpg"
								class="rounded-3" alt>
						</div>
						<!-- Content -->
						<div class="col-md-6">
							<div class="p-2 p-md-0">
								<h5 class="mb-1">
									<a href="#" class="stretched-link"> 숲 </a>
								</h5>
								<span>4,568 Places</span>
							</div>
						</div>
					</div>
				</div>
				<!-- Category Item 5 -->
				<div class="col-sm-6 col-lg-4 col-xl-3">
					<div class="row g-2 g-md-3 align-items-center position-relative">
						<!-- Image -->
						<div class="col-md-6">
							<img src="${path}/resources/assets/images/category/camping/05.jpg"
								class="rounded-3" alt>
						</div>
						<!-- Content -->
						<div class="col-md-6">
							<div class="p-2 p-md-0">
								<h5 class="mb-1">
									<a href="#" class="stretched-link"> 계곡 </a>
								</h5>
								<span>4,568 Places</span>
							</div>
						</div>
					</div>
				</div>
				<!-- Category Item 6 -->
				<div class="col-sm-6 col-lg-4 col-xl-3">
					<div class="row g-2 g-md-3 align-items-center position-relative">
						<!-- Image -->
						<div class="col-md-6">
							<img src="${path}/resources/assets/images/category/camping/06.jpg"
								class="rounded-3" alt>
						</div>
						<!-- Content -->
						<div class="col-md-6">
							<div class="p-2 p-md-0">
								<h5 class="mb-1">
									<a href="#" class="stretched-link"> 강 </a>
								</h5>
								<span>4,568 Places</span>
							</div>
						</div>
					</div>
				</div>
				<!-- Category Item 7 -->
				<div class="col-sm-6 col-lg-4 col-xl-3">
					<div class="row g-2 g-md-3 align-items-center position-relative">
						<!-- Image -->
						<div class="col-md-6">
							<img src="${path}/resources/assets/images/category/camping/07.jpg"
								class="rounded-3" alt>
						</div>
						<!-- Content -->
						<div class="col-md-6">
							<div class="p-2 p-md-0">
								<h5 class="mb-1">
									<a href="#" class="stretched-link"> 호수 </a>
								</h5>
								<span>4,568 Places</span>
							</div>
						</div>
					</div>
				</div>
				<!-- Category Item 8 -->
				<div class="col-sm-6 col-lg-4 col-xl-3">
					<div class="row g-2 g-md-3 align-items-center position-relative">
						<!-- Image -->
						<div class="col-md-6">
							<img src="${path}/resources/assets/images/category/camping/08.jpg"
								class="rounded-3" alt>
						</div>
						<!-- Content -->
						<div class="col-md-6">
							<div class="p-2 p-md-0">
								<h5 class="mb-1">
									<a href="#" class="stretched-link"> 도심 </a>
								</h5>
								<span>4,568 Places</span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Row END -->
		</div>
	</section>
	<!-- Category Select Section 끝 -->

	<!-- =======================
	Steps START -->
	<section class="bg-light">
		<div class="container">
			<div id="stepper" class="bs-stepper stepper-outline">
				<!-- Step Buttons START -->
				<div class="bs-stepper-header" role="tablist">
					<!-- Step 1 -->
					<div class="step" data-target="#step-1">
						<div class="text-center">
							<button type="button" class="btn btn-link step-trigger mb-0"
								role="tab" id="steppertrigger1" aria-controls="step-1">

							</button>

						</div>
					</div>

					<!-- Step Buttons END -->

					<!-- Step content START -->
					<div class="bs-stepper-content p-0 pt-4">
						<div class="row g-4">

							<!-- Main content START -->
							<div class="col-12">


								<!-- Step 1 content START -->
								<div id="step-1" role="tabpanel" class="content"
									aria-labelledby="steppertrigger1">

									<div class="vstack gap-4 mb-4">
										<!-- Title -->
										<div class="row mb-4">
											<a href="#">
												<div class="title">
													<span class="mb-0 text-info fs-2">숲이 있는 캠핑장 <span
														class="text-secondary">TOP 10</span></span> <span
														class="mb-0 px-3 text-info fs-4">해변, 섬, 산, 숲, 계곡...
														당신이 원하는 곳 어디든!</span>
												</div>
											</a>
										</div>

										<!-- AREA ITEM START -->
										<label class="card-label card area-card"> <input
											class="form-check-input card-radio" type="radio"
											name="area-select">

											<div class="card shadow overflow-hidden">
												<div class="row" style="height: 250px">
													<!-- Image -->
													<div class="col-4 card-img-side">
														<img
															src="https://image.goodchoice.kr/resize_490x348/affiliate/2021/03/29/60615a76c8d58.jpg"
															class="img-fluid">
													</div>
													<!-- Card Body START -->
													<div class="col-8">
														<div class="card-body p-3">
															<!-- Card Content -->
															<div class="h4 card-title my-3 title">백양사 가인야영장</div>
															<ul class="nav nav-divider small mb-0 mt-2">
																<li class="nav-item mb-1"><i
																	class="far fa-thumbs-up pe-1"></i>123</li>
																<li class="nav-item mb-1"><i class="nav-icon"></i>리뷰
																	21개</li>
															</ul>
															<div>
																백양사의 아름다운 풍광과 함께하는 백양사 가인야영장 <br>주소 전라남도 장성군 북하면
																약수리 108 <br>문의 061-393-3088
															</div>
															<p class="position-absolute" style="bottom: 0;">
																<a href="test.html"> <span
																	class="h5 card-title mb-1 title text-primary">
																		자세히 보러가기 </span>
																</a>
															</p>
														</div>
													</div>
													<!-- Card body END -->
												</div>
											</div>
										</label>
										<!-- AREA ITEM END -->

										<!-- AREA ITEM START -->
										<label class="card-label card area-card"> <input
											class="form-check-input card-radio" type="radio"
											name="area-select">

											<div class="card shadow overflow-hidden">
												<div class="row" style="height: 250px">
													<!-- Image -->
													<div class="col-4 card-img-side">
														<img
															src="https://www.insiseol.or.kr/park/songdo/img/contents/camping_reserve.jpg"
															class="img-fluid">
													</div>
													<!-- Card Body START -->
													<div class="col-8">
														<div class="card-body p-3">
															<!-- Card Content -->
															<div class="h4 card-title my-3 title">백양사 가인야영장</div>
															<ul class="nav nav-divider small mb-0 mt-2">
																<li class="nav-item mb-1"><i
																	class="far fa-thumbs-up pe-1"></i>123</li>
																<li class="nav-item mb-1"><i class="nav-icon"></i>리뷰
																	21개</li>
															</ul>
															<div>
																백양사의 아름다운 풍광과 함께하는 백양사 가인야영장 <br>주소 전라남도 장성군 북하면
																약수리 108 <br>문의 061-393-3088
															</div>
															<p class="position-absolute" style="bottom: 0;">
																<a href="test.html"> <span
																	class="h5 card-title mb-1 title text-primary">
																		자세히 보러가기 </span>
																</a>
															</p>
														</div>
													</div>
													<!-- Card body END -->
												</div>
											</div>
										</label>
										<!-- AREA ITEM END -->

										<!-- AREA ITEM START -->
										<label class="card-label card area-card"> <input
											class="form-check-input card-radio" type="radio"
											name="area-select">

											<div class="card shadow overflow-hidden">
												<div class="row" style="height: 250px">
													<!-- Image -->
													<div class="col-4 card-img-side">
														<img
															src="https://www.insiseol.or.kr/park/songdo/img/contents/camping_reserve.jpg"
															class="img-fluid">
													</div>
													<!-- Card Body START -->
													<div class="col-8">
														<div class="card-body p-3">
															<!-- Card Content -->
															<div class="h4 card-title my-3 title">백양사 가인야영장</div>
															<ul class="nav nav-divider small mb-0 mt-2">
																<li class="nav-item mb-1"><i
																	class="far fa-thumbs-up pe-1"></i>123</li>
																<li class="nav-item mb-1"><i class="nav-icon"></i>리뷰
																	21개</li>
															</ul>
															<div>
																백양사의 아름다운 풍광과 함께하는 백양사 가인야영장 <br>주소 전라남도 장성군 북하면
																약수리 108 <br>문의 061-393-3088
															</div>
															<p class="position-absolute" style="bottom: 0;">
																<a href="test.html"> <span
																	class="h5 card-title mb-1 title text-primary">
																		자세히 보러가기 </span>
																</a>
															</p>
														</div>
													</div>
													<!-- Card body END -->
												</div>
											</div>
										</label>
										<!-- AREA ITEM END -->
										<!-- AREA ITEM START -->
										<label class="card-label card area-card"> <input
											class="form-check-input card-radio" type="radio"
											name="area-select">

											<div class="card shadow overflow-hidden">
												<div class="row" style="height: 250px">
													<!-- Image -->
													<div class="col-4 card-img-side">
														<img
															src="https://www.insiseol.or.kr/park/songdo/img/contents/camping_reserve.jpg"
															class="img-fluid">
													</div>
													<!-- Card Body START -->
													<div class="col-8">
														<div class="card-body p-3">
															<!-- Card Content -->
															<div class="h4 card-title my-3 title">백양사 가인야영장</div>
															<ul class="nav nav-divider small mb-0 mt-2">
																<li class="nav-item mb-1"><i
																	class="far fa-thumbs-up pe-1"></i>123</li>
																<li class="nav-item mb-1"><i class="nav-icon"></i>리뷰
																	21개</li>
															</ul>
															<div>
																백양사의 아름다운 풍광과 함께하는 백양사 가인야영장 <br>주소 전라남도 장성군 북하면
																약수리 108 <br>문의 061-393-3088
															</div>
															<p class="position-absolute" style="bottom: 0;">
																<a href="test.html"> <span
																	class="h5 card-title mb-1 title text-primary">
																		자세히 보러가기 </span>
																</a>
															</p>
														</div>
													</div>
													<!-- Card body END -->
												</div>
											</div>
										</label>
										<!-- AREA ITEM END -->
										<!-- AREA ITEM START -->
										<label class="card-label card area-card"> <input
											class="form-check-input card-radio" type="radio"
											name="area-select">

											<div class="card shadow overflow-hidden">
												<div class="row" style="height: 250px">
													<!-- Image -->
													<div class="col-4 card-img-side">
														<img
															src="https://www.insiseol.or.kr/park/songdo/img/contents/camping_reserve.jpg"
															class="img-fluid">
													</div>
													<!-- Card Body START -->
													<div class="col-8">
														<div class="card-body p-3">
															<!-- Card Content -->
															<div class="h4 card-title my-3 title">백양사 가인야영장</div>
															<ul class="nav nav-divider small mb-0 mt-2">
																<li class="nav-item mb-1"><i
																	class="far fa-thumbs-up pe-1"></i>123</li>
																<li class="nav-item mb-1"><i class="nav-icon"></i>리뷰
																	21개</li>
															</ul>
															<div>
																백양사의 아름다운 풍광과 함께하는 백양사 가인야영장 <br>주소 전라남도 장성군 북하면
																약수리 108 <br>문의 061-393-3088
															</div>
															<p class="position-absolute" style="bottom: 0;">
																<a href="test.html"> <span
																	class="h5 card-title mb-1 title text-primary">
																		자세히 보러가기 </span>
																</a>
															</p>
														</div>
													</div>
													<!-- Card body END -->
												</div>
											</div>
										</label>
										<!-- AREA ITEM END -->
										<!-- AREA ITEM START -->
										<label class="card-label card area-card"> <input
											class="form-check-input card-radio" type="radio"
											name="area-select">

											<div class="card shadow overflow-hidden">
												<div class="row" style="height: 250px">
													<!-- Image -->
													<div class="col-4 card-img-side">
														<img
															src="https://www.insiseol.or.kr/park/songdo/img/contents/camping_reserve.jpg"
															class="img-fluid">
													</div>
													<!-- Card Body START -->
													<div class="col-8">
														<div class="card-body p-3">
															<!-- Card Content -->
															<div class="h4 card-title my-3 title">백양사 가인야영장</div>
															<ul class="nav nav-divider small mb-0 mt-2">
																<li class="nav-item mb-1"><i
																	class="far fa-thumbs-up pe-1"></i>123</li>
																<li class="nav-item mb-1"><i class="nav-icon"></i>리뷰
																	21개</li>
															</ul>
															<div>
																백양사의 아름다운 풍광과 함께하는 백양사 가인야영장 <br>주소 전라남도 장성군 북하면
																약수리 108 <br>문의 061-393-3088
															</div>
															<p class="position-absolute" style="bottom: 0;">
																<a href="test.html"> <span
																	class="h5 card-title mb-1 title text-primary">
																		자세히 보러가기 </span>
																</a>
															</p>
														</div>
													</div>
													<!-- Card body END -->
												</div>
											</div>
										</label>
										<!-- AREA ITEM END -->
										<!-- AREA ITEM START -->
										<label class="card-label card area-card"> <input
											class="form-check-input card-radio" type="radio"
											name="area-select">

											<div class="card shadow overflow-hidden">
												<div class="row" style="height: 250px">
													<!-- Image -->
													<div class="col-4 card-img-side">
														<img
															src="https://www.insiseol.or.kr/park/songdo/img/contents/camping_reserve.jpg"
															class="img-fluid">
													</div>
													<!-- Card Body START -->
													<div class="col-8">
														<div class="card-body p-3">
															<!-- Card Content -->
															<div class="h4 card-title my-3 title">백양사 가인야영장</div>
															<ul class="nav nav-divider small mb-0 mt-2">
																<li class="nav-item mb-1"><i
																	class="far fa-thumbs-up pe-1"></i>123</li>
																<li class="nav-item mb-1"><i class="nav-icon"></i>리뷰
																	21개</li>
															</ul>
															<div>
																백양사의 아름다운 풍광과 함께하는 백양사 가인야영장 <br>주소 전라남도 장성군 북하면
																약수리 108 <br>문의 061-393-3088
															</div>
															<p class="position-absolute" style="bottom: 0;">
																<a href="test.html"> <span
																	class="h5 card-title mb-1 title text-primary">
																		자세히 보러가기 </span>
																</a>
															</p>
														</div>
													</div>
													<!-- Card body END -->
												</div>
											</div>
										</label>
										<!-- AREA ITEM END -->
										<!-- AREA ITEM START -->
										<label class="card-label card area-card"> <input
											class="form-check-input card-radio" type="radio"
											name="area-select">

											<div class="card shadow overflow-hidden">
												<div class="row" style="height: 250px">
													<!-- Image -->
													<div class="col-4 card-img-side">
														<img
															src="https://www.insiseol.or.kr/park/songdo/img/contents/camping_reserve.jpg"
															class="img-fluid">
													</div>
													<!-- Card Body START -->
													<div class="col-8">
														<div class="card-body p-3">
															<!-- Card Content -->
															<div class="h4 card-title my-3 title">백양사 가인야영장</div>
															<ul class="nav nav-divider small mb-0 mt-2">
																<li class="nav-item mb-1"><i
																	class="far fa-thumbs-up pe-1"></i>123</li>
																<li class="nav-item mb-1"><i class="nav-icon"></i>리뷰
																	21개</li>
															</ul>
															<div>
																백양사의 아름다운 풍광과 함께하는 백양사 가인야영장 <br>주소 전라남도 장성군 북하면
																약수리 108 <br>문의 061-393-3088
															</div>
															<p class="position-absolute" style="bottom: 0;">
																<a href="test.html"> <span
																	class="h5 card-title mb-1 title text-primary">
																		자세히 보러가기 </span>
																</a>
															</p>
														</div>
													</div>
													<!-- Card body END -->
												</div>
											</div>
										</label>
										<!-- AREA ITEM END -->
										<!-- AREA ITEM START -->
										<label class="card-label card area-card"> <input
											class="form-check-input card-radio" type="radio"
											name="area-select">

											<div class="card shadow overflow-hidden">
												<div class="row" style="height: 250px">
													<!-- Image -->
													<div class="col-4 card-img-side">
														<img
															src="https://www.insiseol.or.kr/park/songdo/img/contents/camping_reserve.jpg"
															class="img-fluid">
													</div>
													<!-- Card Body START -->
													<div class="col-8">
														<div class="card-body p-3">
															<!-- Card Content -->
															<div class="h4 card-title my-3 title">백양사 가인야영장</div>
															<ul class="nav nav-divider small mb-0 mt-2">
																<li class="nav-item mb-1"><i
																	class="far fa-thumbs-up pe-1"></i>123</li>
																<li class="nav-item mb-1"><i class="nav-icon"></i>리뷰
																	21개</li>
															</ul>
															<div>
																백양사의 아름다운 풍광과 함께하는 백양사 가인야영장 <br>주소 전라남도 장성군 북하면
																약수리 108 <br>문의 061-393-3088
															</div>
															<p class="position-absolute" style="bottom: 0;">
																<a href="test.html"> <span
																	class="h5 card-title mb-1 title text-primary">
																		자세히 보러가기 </span>
																</a>
															</p>
														</div>
													</div>
													<!-- Card body END -->
												</div>
											</div>
										</label>
										<!-- AREA ITEM END -->
										<!-- AREA ITEM START -->
										<label class="card-label card area-card"> <input
											class="form-check-input card-radio" type="radio"
											name="area-select">

											<div class="card shadow overflow-hidden">
												<div class="row" style="height: 250px">
													<!-- Image -->
													<div class="col-4 card-img-side">
														<img
															src="https://www.insiseol.or.kr/park/songdo/img/contents/camping_reserve.jpg"
															class="img-fluid">
													</div>
													<!-- Card Body START -->
													<div class="col-8">
														<div class="card-body p-3">
															<!-- Card Content -->
															<div class="h4 card-title my-3 title">백양사 가인야영장</div>
															<ul class="nav nav-divider small mb-0 mt-2">
																<li class="nav-item mb-1"><i
																	class="far fa-thumbs-up pe-1"></i>123</li>
																<li class="nav-item mb-1"><i class="nav-icon"></i>리뷰
																	21개</li>
															</ul>
															<div>
																백양사의 아름다운 풍광과 함께하는 백양사 가인야영장 <br>주소 전라남도 장성군 북하면
																약수리 108 <br>문의 061-393-3088
															</div>
															<p class="position-absolute" style="bottom: 0;">
																<a href="test.html"> <span
																	class="h5 card-title mb-1 title text-primary">
																		자세히 보러가기 </span>
																</a>
															</p>
														</div>
													</div>
													<!-- Card body END -->
												</div>
											</div>
										</label>
										<!-- AREA ITEM END -->
									</div>
								</div>
								<!-- Step 1 content END -->


							</div>
							<!-- Main content END -->

						</div>

					</div>
					<!-- Step content END -->
				</div>
			</div>
	</section>
	<!-- =======================
	Steps END -->

	<!-- =======================
    Recommend Banner START -->
	<section class="pt-0">

		<!-- 카로셀 시작 -->
		<div id="carousel" class="carousel slide" data-bs-ride="carousel"
			style="background-position: center center; background-repeat: no-repeat; background-size: cover;">
			<!-- Indicators/dots -->
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carousel"
					data-bs-slide-to="0" class="active"></button>
				<button type="button" data-bs-target="#carousel"
					data-bs-slide-to="1"></button>
			</div>

			<!-- The slideshow/carousel -->
			<div class="carousel-inner">
				<div class="carousel-item active">
					<div class="p-4 p-sm-5"
						style="background-image: url(${path}/resources/assets/images/bg/01.jpg); background-position: center center; background-repeat: no-repeat; background-size: cover; height: 600px">
						<div class="row justify-content-between pt-0 pb-5">
							<div class="p-8 mx-8">
								<h1 class="text-white">당신의 가족</h1>
								<h1 class="text-white">반려동물과 함께 가요</h1>
								<h4 class="text-white mb-0">
									누리파크 캠핑장 <a href="test.html" class="btn btn-primary mx-3">상세보기</a>
								</h4>
							</div>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<div class="p-4 p-sm-5"
						style="background-image: url(${path}/resources/assets/images/bg/02.jpg); background-position: center center; background-repeat: no-repeat; background-size: cover; height: 600px">
						<div class="row justify-content-between pt-0 pb-5">
							<div class="p-8 mx-8">
								<h1 class="text-white">아이와 함께</h1>
								<h1 class="text-white">편안하게, 즐겁게</h1>
								<h4 class="text-white mb-0">
									하늘바다오토캠핑장 <a href="test.html" class="btn btn-primary mx-3">상세보기</a>
								</h4>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Left and right controls/icons -->
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carousel" data-bs-slide="prev">
				<span class="carousel-control-prev-icon"></span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carousel" data-bs-slide="next">
				<span class="carousel-control-next-icon"></span>
			</button>
		</div>
		<!-- 카로셀 끝 -->

		<div class="container-fluid position-relative">

			<!-- Search START -->
			<div class="row mt-n8 pb-5">
				<div class="col-9 mx-auto">
					<!-- Booking from START -->
					<form class="bg-mode shadow rounded-5 px-3 py-1">
						<div class="row g-4 align-items-center">

							<div class="col-xl-11">
								<div class="row g-4">
									<!-- Location -->
									<div class="col-md-6 col-lg-3">
										<!-- Input field -->
										<div
											class="form-border-bottom form-control-transparent form-fs-lg mt-1">
											<select class="form-select js-choice"
												data-search-enabled="true">
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
										<div
											class="form-border-bottom form-control-transparent form-fs-lg mt-1">
											<input type="text" class="form-control flatpickr py-2"
												data-mode="range" data-date-format="m-d" placeholder="일정 선택">
										</div>
									</div>

									<!-- Guest -->
									<div class="col-md-6 col-lg-6">
										<!-- Input field -->
										<div
											class="form-border-bottom form-control-transparent form-fs-lg mt-1">
											<input class="form-control border-0 shadow-0" type="text"
												name="search" placeholder="캠핑장 이름으로 검색">
										</div>
									</div>
								</div>
							</div>

							<!-- Button -->
							<div class="col-lg-1">
								<div class="d-grid">
									<a href="#" class="btn btn-lg mb-n1"> <i
										class="fa-solid fa-search fs-4"></i>
									</a>
								</div>
							</div>
						</div>
					</form>
					<!-- Booking from END -->
				</div>
			</div>
			<!-- Search END -->
		</div>
	</section>
	<!-- =======================
    Recommend Banner END -->

	<!-- 지역별 BEST 캠핑장 시작 -->
	<section class="pt-0 pt-md-5 bg-light" style="height: 550px;">

		<div class="container position-relative">
			<a href="test.html">
				<div class="text-center pb-3 title h2 text-info">지역별 BEST 캠핑장</div>
			</a>

			<div class="row g-4 mb-n7">
				<!-- 이달의픽 카드 1 -->
				<div class="col-4">
					<!-- place item-->
					<div class="w-100 h-100">
						<div class="card card-img-scale w-100 h-100 border-0 shadow">
							<div class="card-img-top overflow-hidden">
								<img class="img-fluid"
									src="https://www.doosanartcenter.com/images/content/img-intro-area1.jpg">
							</div>
							<div class="card-body d-flex align-items-center">
								<div class="w-100">
									<h5 class="card-title text-decoration-none text-dark">
										<a href="test.html" class="stretched-link title"> 연포분교야영장
										</a>
									</h5>
									강원 정선군 신동읍 연포길 544-6
									<div class="fw-bold text-black text-end">
										<a href="test.html"><i class="fas fa-paper-plane"></i> 자세히
											보러가기</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- 이달의픽 카드 2 -->
				<div class="col-4">
					<!-- place item-->
					<div class="w-100 h-100">
						<div class="card card-img-scale h-100 border-0 shadow">
							<div class="card-img-top overflow-hidden">
								<img class="img-fluid"
									src="https://auditorium.kr/wp-content/uploads/2020/01/22_2020%EB%85%84-%ED%95%B4%EC%99%B8-%EC%A3%BC%EC%9A%94-%EA%B3%B5%EC%97%B0%EC%9E%A5-%EC%83%81%EB%B0%98%EA%B8%B0-%EA%B3%B5%EC%97%B0-%EC%9D%BC%EC%A0%95-%EC%B4%9D%EC%A0%95%EB%A6%AC-3-4-1024x907.jpg" />
							</div>
							<div class="card-body d-flex align-items-center">
								<div class="w-100">
									<h5 class="card-title text-decoration-none text-dark">
										<a href="test.html" class="stretched-link title"> 전원일기마을
											오토캠핑장 </a>
									</h5>
									경기도 양주시 장흥면 삼하리 210-1
									<div class="fw-bold text-black text-end">
										<a href="test.html"><i class="fas fa-paper-plane"></i> 자세히
											보러가기</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- 이달의픽 카드 3 -->
				<div class="col-4">
					<!-- place item-->
					<div class="w-100 h-100">
						<div class="card card-img-scale h-100 border-0 shadow">
							<div class="card-img-top overflow-hidden">
								<img class="img-fluid"
									src="https://www.sejongpac.or.kr/cmmn/file/imageSrc.do?fileStreCours=4a41d05067da9407e684ceabd772c74d&streFileNm=e1ff329cb8e226ee4bdc31dfaa4c1ebc24078277cccf491c8dad44ed96e373b4" />
							</div>
							<div class="card-body d-flex align-items-center">
								<div class="w-100">
									<h5 class="card-title text-decoration-none text-dark">
										<a href="test.html" class="stretched-link title"> 한강공원
											난지캠핑장 </a>
									</h5>
									서울특별시 마포구 한강난지로 28
									<div class="fw-bold text-end">
										<a href="test.html"><i class="fas fa-paper-plane"></i> 자세히
											보러가기</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- 지역별 BEST 캠핑장 끝 -->

</main>
<!-- **************** MAIN CONTENT END **************** -->

<jsp:include page="/WEB-INF/views/common/footer.jsp" />

