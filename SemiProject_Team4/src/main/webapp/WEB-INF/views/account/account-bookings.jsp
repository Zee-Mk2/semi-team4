<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/camping-header.jsp"/>

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
Content START -->
		<section class="pt-3">
			<div class="container">
				<div class="row">

					<!-- Sidebar START -->
					<div class="col-lg-4 col-xl-3">
						<!-- Responsive offcanvas body START -->
						<div class="offcanvas-lg offcanvas-end" tabindex="-1" id="offcanvasSidebar">
							<!-- Offcanvas header -->
							<div class="offcanvas-header justify-content-end pb-2">
								<button type="button" class="btn-close" data-bs-dismiss="offcanvas"
									data-bs-target="#offcanvasSidebar" aria-label="Close"></button>
							</div>

							<!-- Offcanvas body -->
							<div class="offcanvas-body p-3 p-lg-0">
								<div class="card bg-light w-100">

									<!-- Edit profile button -->
									<div class="position-absolute top-0 end-0 p-3">
										<a href="${path}/MyProfile" class="text-primary-hover" data-bs-toggle="tooltip"
											data-bs-title="Edit profile">
											<i class="bi bi-pencil-square"></i>
										</a>
									</div>

									<!-- Card body START -->
									<div class="card-body p-3">
										<!-- Avatar and content -->
										<div class="text-center mb-3">
											<!-- Avatar -->
											<div class="avatar avatar-xl mb-2">
												<img class="avatar-img rounded-circle border border-2 border-white"
													src="${path}/resources/upload/profile/${sessionScope.loginMember.reFileNm}" alt="">
											</div>
											<h6 class="mb-0">${sessionScope.loginMember.name}</h6>
											<a href="${path}/#" class="text-reset text-primary-hover small">${sessionScope.loginMember.id}</a>
											<hr>
										</div>

										<!-- Sidebar menu item START -->
										<ul class="nav nav-pills-primary-soft flex-column">
											<li class="nav-item">
												<a class="nav-link" href="${path}/MyProfile"><i
														class="bi bi-person fa-fw me-2"></i>회원정보</a>
											</li>
											<li class="nav-item">
												<a class="nav-link active" href="${path}/booking-info"><i
														class="bi bi-ticket-perforated fa-fw me-2"></i>나의 예약정보</a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="${path}/MyWishList"><i
														class="bi bi-heart fa-fw me-2"></i>북마크</a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="${path}/myReview"><i
														class="bi bi-pencil-square fa-fw me-2"></i>내 리뷰</a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="${path}/pro-setting"><i
														class="bi bi-gear fa-fw me-2"></i>설정</a>
											</li>
											<li class="nav-item">
												<a class="nav-link text-danger bg-danger-soft-hover" href="${path}/sign-in"><i
														class="fas fa-sign-out-alt fa-fw me-2"></i>로그아웃</a>
											</li>
										</ul>
										<!-- Sidebar menu item END -->
									</div>
									<!-- Card body END -->
								</div>
							</div>
						</div>
						<!-- Responsive offcanvas body END -->
					</div>
					<!-- Sidebar END -->

					<!-- Main content START -->
					<div class="col-lg-8 col-xl-9">

						<!-- Offcanvas menu button -->
						<div class="d-grid mb-0 d-lg-none w-100">
							<button class="btn btn-primary mb-4" type="button" data-bs-toggle="offcanvas"
								data-bs-target="#offcanvasSidebar" aria-controls="offcanvasSidebar">
								<i class="fas fa-sliders-h"></i> Menu
							</button>
						</div>

						<div class="card border bg-transparent">
							<!-- Card header -->
							<div class="card-header bg-transparent border-bottom">
								<h4 class="card-header-title">나의 예약정보</h4>
							</div>

							<!-- Card body START -->
							<div class="card-body p-0">

								<!-- Tabs -->
								<ul class="nav nav-tabs nav-bottom-line nav-responsive nav-justified">
									<li class="nav-item">
										<a class="nav-link mb-0 active" data-bs-toggle="tab" href="#tab-1"><i
												class="bi bi-briefcase-fill fa-fw me-1"></i>다가오는 예약</a>
									</li>
									<li class="nav-item">
										<a class="nav-link mb-0" data-bs-toggle="tab" href="#tab-2"><i
												class="bi bi-x-octagon fa-fw me-1"></i>취소된 예약</a>
									</li>
									<li class="nav-item">
										<a class="nav-link mb-0" data-bs-toggle="tab" href="#tab-3"><i
												class="bi bi-patch-check fa-fw me-1"></i>완료된 예약</a>
									</li>
								</ul>

								<!-- Tabs content START -->
								<div class="tab-content p-2 p-sm-4" id="nav-tabContent">

									<!-- Tab content item START -->
									<div class="tab-pane fade show active" id="tab-1">
										<h6>다가오는 예약 (2)</h6>
										<!-- Card item START -->
										<div class="card border mb-4">
											<!-- Card header -->
											<div
												class="card-header border-bottom d-md-flex justify-content-md-between align-items-center">
												<!-- Icon and Title -->
												<div class="d-flex align-items-center">
													<div class="icon-lg bg-light rounded-circle flex-shrink-0">
														<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https:%2F%2Fblog.kakaocdn.net%2Fdn%2FbWjYtg%2Fbtq05oTANNg%2FhjdZjtkLe8DcOWc3PZIToK%2Fimg.jpg"
															alt="변산반도국립공원 고사포"
															style="height: 55px; border-radius: 50%;">
														</img>
													</div>
													<!-- Title -->
													<div class="ms-2">
														<h6 class="card-title mb-0">변산반도국립공원 고사포</h6>
														<ul class="nav nav-divider small">
															<li class="nav-item">예약 ID: testID123</li>
															<li class="nav-item">가격: 15,000원</li>
														</ul>
													</div>
												</div>

												<!-- Button -->
												<div class="mt-2 mt-md-0">
													<a href="${path}/camp-detail" class="btn btn-custom2 mb-0">예약 정보</a>
												</div>
											</div>

											<!-- Card body -->
											<div class="card-body">
												<div class="row g-3">
													<div class="col-sm-6 col-md-5">
														<span>예약 날짜</span>
														<h6 class="mb-0">2023.05.13(토) ~ 2023.05.14(일)</h6>
													</div>

													<div class="col-sm-6 col-md-3">
														<span>체크인/체크아웃</span>
														<h6 class="mb-0">15:00 ~ 11:00</h6>
													</div>

													<div class="col-md-4">
														<span>예약자</span>
														<h6 class="mb-0">테스트계정</h6>
													</div>
												</div>
											</div>
										</div>
										<!-- Card item END -->

										<!-- Card item START -->
										<div class="card border">
											<!-- Card header -->
											<div
												class="card-header border-bottom d-md-flex justify-content-md-between align-items-center">
												<!-- Icon and Title -->
												<div class="d-flex align-items-center">
													<div class="icon-lg bg-light rounded-circle flex-shrink-0">
														<img src="https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRXb5MorGuSWtVYCOPO4ZlIqKXZudP51MCJFCFiaOcoOKDsNTLm"
															alt="장수상회"
															style="width: 100px; height: 59px; border-radius: 50%;"></img>
													</div>
													<!-- Title -->
													<div class="ms-2">
														<h6 class="card-title mb-0">장수상회</h6>
														<ul class="nav nav-divider small">
															<li class="nav-item">예약 ID: testID123</li>
															<li class="nav-item">가격: 15,000원</li>
														</ul>
													</div>
												</div>

												<!-- Button -->
												<div class="mt-2 mt-md-0">
													<a href="${path}/conc-detail" class="btn btn-custom2 mb-0">예약 정보</a>
												</div>
											</div>

											<!-- Card body -->
											<div class="card-body">
												<div class="row g-3">
													<div class="col-sm-6 col-md-5">
														<span>예약 날짜 및 시간</span>
														<h6 class="mb-0">2023.05.20(토) 14:00</h6>
													</div>

													<div class="col-sm-6 col-md-3">
														<span>장소</span>
														<h6 class="mb-0">두산아트센터</h6>
													</div>

													<div class="col-md-4">
														<span>예약자</span>
														<h6 class="mb-0">테스트계정</h6>
													</div>
												</div>
											</div>
										</div>
										<!-- Card item END -->
									</div>
									<!-- Tabs content item END -->

									<!-- Tab content item START -->
									<div class="tab-pane fade" id="tab-2">
										<h6>취소된 예약 (1)</h6>

										<!-- Card item START -->
										<div class="card border">
											<!-- Card header -->
											<div
												class="card-header border-bottom d-md-flex justify-content-md-between align-items-center">
												<!-- Icon and Title -->
												<div class="d-flex align-items-center">
													<div class="icon-lg bg-light rounded-circle flex-shrink-0">
														<img src="https://th.bing.com/th/id/OIP.f8QBQEZR9s2YqgQAomRHAgHaE7?w=293&h=195&c=7&r=0&o=5&dpr=1.1&pid=1.7"
															alt="사천 비토솔섬 캠핑장"
															style="width: 110px; height: 55px; border-radius: 50%;"></img>
													</div>
													<!-- Title -->
													<div class="ms-2">
														<h6 class="card-title mb-0">사천 비토솔섬 캠핑장</h6>
														<ul class="nav nav-divider small">
															<li class="nav-item">예약 ID : testID123 · 가격 : 15,000원</li>
														</ul>
													</div>
												</div>

												<!-- Button -->
												<div class="mt-2 mt-md-0">
													<a href="${path}/camp-detail" class="btn btn-custom2 mb-0">예약 정보</a>
													<p class="text-danger text-sm-end mb-0">취소 됨</p>
												</div>
											</div>

											<!-- Card body -->
											<div class="card-body">
												<div class="row g-3">
													<div class="col-sm-6 col-md-5">
														<span>예약 날짜</span>
														<h6 class="mb-0">2023.05.13(토) ~ 2023.05.14(일)</h6>
													</div>

													<div class="col-sm-6 col-md-3">
														<span>체크인/체크아웃</span>
														<h6 class="mb-0">15:00 ~ 11:00</h6>
													</div>

													<div class="col-md-4">
														<span>예약자</span>
														<h6 class="mb-0">테스트계정</h6>
													</div>
												</div>
											</div>
										</div>
										<!-- Card item END -->
									</div>
									<!-- Tabs content item END -->

									<!-- Tab content item START -->
									<div class="tab-pane fade" id="tab-3">
										<div class="bg-custom shadow p-4 rounded overflow-hidden">
											<div class="row g-4 align-items-center">
												<!-- Content -->
												<div class="col-md-9">
													<h6 class="Orange">현재까지 예약한 적이 없습니다.</h6>
													<h4 class="mb-2">예약을 하면 여기에 표시됩니다.</h4>
													<a href="${path}/hotel-list.html" class="btn btn-custom mb-0">지금 예약 시작</a>
												</div>
												<!-- Image -->
												<div class="col-md-3 text-end">
													<img src="${path}/resources/assets/images/element/17.svg" class="mb-n5" alt="">
												</div>
											</div>
										</div>

									</div>
									<!-- Tabs content item END -->
								</div>

							</div>
							<!-- Card body END -->
						</div>

					</div>
					<!-- Main content END -->
				</div>
			</div>
		</section>
		<!-- =======================
Content END -->

	</main>
	<!-- **************** MAIN CONTENT END **************** -->

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>