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
													src="${path}/resources/assets/images/avatar/01.jpg" alt="">
											</div>
											<h6 class="mb-0">테스트계정</h6>
											<a href="${path}/MyProfile" class="text-reset text-primary-hover small">test@email.com</a>
											<hr>
										</div>

										<!-- Sidebar menu item START -->
										<ul class="nav nav-pills-primary-soft flex-column">
											<li class="nav-item">
												<a class="nav-link" href="${path}/MyProfile"><i
														class="bi bi-person fa-fw me-2"></i>회원정보</a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="${path}/booking-info"><i
														class="bi bi-ticket-perforated fa-fw me-2"></i>나의 예약정보</a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="${path}/MyWishList"><i
														class="bi bi-heart fa-fw me-2"></i>북마크</a>
											</li>
											<li class="nav-item">
												<a class="nav-link active" href="${path}/myReview"><i
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

						<!-- Wishlist START -->
						<div class="card border bg-transparent">
							<!-- Card header -->
							<div class="card-header bg-transparent border-bottom">
								<h4 class="card-header-title">내 리뷰</h4>
							</div>

							<!-- Card body START -->
							<div class="card-body vstack gap-4">
								<!-- Select and button -->
								<form class="d-flex justify-content-between">
									<div class="col-6 col-xl-3">
										<select class="form-select form-select-sm js-choice border-0">
											<option value="">정렬 기준</option>
											<option>최신순</option>
											<option>인기순</option>
											<option>추천순</option>
										</select>
									</div>
								</form>

								<!-- Wishlist item START -->
								<div class="card shadow p-2">
									<div class="row g-0">
										<!-- Card img -->
										<div class="col-md-3">
											<img src="https://th.bing.com/th/id/OIP.4lsYU8yh5_Bw3J9JKNaRkQHaE8?w=257&h=180&c=7&r=0&o=5&dpr=1.1&pid=1.7"
												class="card-img rounded-2" alt="Card image">
										</div>

										<!-- Card body -->
										<div class="col-md-9">
											<div class="card-body py-md-2 d-flex flex-column h-100">

												<!-- Rating and buttons -->
												<div class="d-flex justify-content-between align-items-center">
													<ul class="list-inline small mb-0">
														<li class="list-inline-item me-0"><i
																class="fa-solid fa-star text-warning"></i></li>
														<li class="list-inline-item me-0"><i
																class="fa-solid fa-star text-warning"></i></li>
														<li class="list-inline-item me-0"><i
																class="fa-solid fa-star text-warning"></i></li>
														<li class="list-inline-item me-0"><i
																class="fa-solid fa-star text-warning"></i></li>
														<li class="list-inline-item"><i
																class="fa-solid fa-star-half-alt text-warning"></i></li>
													</ul>

													<ul class="list-inline mb-0">
														<!-- Heart icon -->
														<li class="list-inline-item">
															<a href="${path}/#" class="btn btn-sm btn-round btn-danger mb-0"><i
																	class="fa-solid fa-fw fa-heart"></i></a>
														</li>
														<!-- Share icon -->
														<li class="list-inline-item dropdown">
															<!-- Share button -->
															<a href="${path}/#" class="btn btn-sm btn-round btn-light mb-0"
																role="button" id="dropdownShare2"
																data-bs-toggle="dropdown" aria-expanded="false">
																<i class="fa-solid fa-fw fa-share-alt"></i>
															</a>
															<!-- dropdown button -->
															<ul class="dropdown-menu dropdown-menu-end min-w-auto shadow rounded"
																aria-labelledby="dropdownShare2">
																<li><a class="dropdown-item" href="${path}/#"><i
																			class="fab fa-twitter-square me-2"></i>트위터</a>
																</li>
																<li><a class="dropdown-item" href="${path}/#"><i
																			class="fab fa-facebook-square me-2"></i>페이스북</a>
																</li>
																<li><a class="dropdown-item" href="${path}/#"><i
																			class="fa-solid fa-copy me-2"></i>링크복사</a>
																</li>
															</ul>
														</li>
													</ul>
												</div>

												<!-- Title -->
												<h5 class="card-title mb-1"><a href="${path}/camp-detail">정읍시 내장산
														국민여가캠프장</a></h5>
												<small><i class=""></i>주변 시설도 좋고 주차도 깔끔합니다. 더위 시작될 때는 그냥 가지 마시고요. 대비하고
													가셔야 합니다. 날씨가 꽤 덥습니다. 더위 대비만 잘하셔서 가시면 좋습니다.</small>

												<!-- Price and Button -->
												<div
													class="d-sm-flex justify-content-sm-between align-items-center mt-3 mt-md-auto">
													<!-- Button -->
													<div class="d-flex align-items-center">
														<span class="fw-bold mb-0 me-1">작성일: </span>
														<span class="mb-0 me-2">2023.03.22</span>
													</div>

												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- Wishlist item END -->

								<!-- Wishlist item START -->
								<div class="card shadow p-2">
									<div class="row g-0">
										<!-- Card img -->
										<div class="col-md-3">
											<img src="https://th.bing.com/th/id/OIP.UTkLKzzmLO-QIk5Mn0ZfZgHaE8?w=263&h=180&c=7&r=0&o=5&dpr=1.1&pid=1.7"
												class="card-img rounded-2" alt="Card image">
										</div>

										<!-- Card body -->
										<div class="col-md-9">
											<div class="card-body d-flex flex-column h-100 py-md-2">

												<!-- Rating and buttons -->
												<div class="d-flex justify-content-between align-items-center">
													<ul class="list-inline small mb-0">
														<li class="list-inline-item me-0"><i
																class="fa-solid fa-star text-warning"></i></li>
														<li class="list-inline-item me-0"><i
																class="fa-solid fa-star text-warning"></i></li>
														<li class="list-inline-item me-0"><i
																class="fa-solid fa-star text-warning"></i></li>
														<li class="list-inline-item me-0"><i
																class="fa-solid fa-star text-warning"></i></li>
														<li class="list-inline-item"><i
																class="fa-solid fa-star-half-alt text-warning"></i></li>
													</ul>

													<ul class="list-inline mb-0">
														<!-- Heart icon -->
														<li class="list-inline-item">
															<a href="${path}/#" class="btn btn-sm btn-round btn-danger mb-0"><i
																	class="fa-solid fa-fw fa-heart"></i></a>
														</li>
														<!-- Share icon -->
														<li class="list-inline-item dropdown">
															<a href="${path}/#" class="btn btn-sm btn-round btn-light mb-0"
																role="button" id="dropdownShare3"
																data-bs-toggle="dropdown" aria-expanded="false">
																<i class="fa-solid fa-fw fa-share-alt"></i>
															</a>
															<!-- dropdown button -->
															<ul class="dropdown-menu dropdown-menu-end min-w-auto shadow rounded"
																aria-labelledby="dropdownShare2">
																<li><a class="dropdown-item" href="${path}/#"><i
																			class="fab fa-twitter-square me-2"></i>트위터</a>
																</li>
																<li><a class="dropdown-item" href="${path}/#"><i
																			class="fab fa-facebook-square me-2"></i>페이스북</a>
																</li>
																<li><a class="dropdown-item" href="${path}/#"><i
																			class="fa-solid fa-copy me-2"></i>링크복사</a>
																</li>
															</ul>
														</li>
													</ul>
												</div>

												<!-- Title -->
												<h5 class="card-title mb-1"><a href="${path}/camp-detail">안산 화랑 오토캠핑장</a>
												</h5>
												<small><i class="bi bi-geo-alt me-2"></i>깔끔해요. 가격도 너무 착하고요! 코로나 때문에 샤워
													안되는 게 아쉽지만, 다시방문할 것 같아요. 산책로도 너무 잘되어있고, 화장실 안에 따듯한 물이 빵빵! 짚라인은 아이들도
													너무 좋아했어요. 다음엔 글램핑장으로 가보려 해요! 잘 놀다 가네요ㅎㅎ</small>

												<!-- Price and Button -->
												<div
													class="d-sm-flex justify-content-sm-between align-items-center mt-3 mt-md-auto">
													<!-- Button -->
													<div class="d-flex align-items-center">
														<span class="fw-bold mb-0 me-1">작성일: </span>
														<span class="mb-0 me-2">2023.04.02</span>
													</div>

												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- Wishlist item END -->

								<!-- Wishlist item START -->
								<div class="card shadow p-2">
									<div class="row g-0">
										<!-- Card img -->
										<div class="col-md-3">
											<img src="https://th.bing.com/th/id/OIP.vgSymy1NAU_B8lSPTizC3AHaE8?w=280&h=187&c=7&r=0&o=5&dpr=1.1&pid=1.7"
												class="card-img rounded-2" alt="Card image">
										</div>

										<!-- Card body -->
										<div class="col-md-9">
											<div class="card-body d-flex flex-column h-100 py-md-2">

												<!-- Rating and buttons -->
												<div class="d-flex justify-content-between align-items-center">
													<ul class="list-inline small mb-0">
														<li class="list-inline-item me-0"><i
																class="fa-solid fa-star text-warning"></i></li>
														<li class="list-inline-item me-0"><i
																class="fa-solid fa-star text-warning"></i></li>
														<li class="list-inline-item me-0"><i
																class="fa-solid fa-star text-warning"></i></li>
														<li class="list-inline-item me-0"><i
																class="fa-solid fa-star text-warning"></i></li>
														<li class="list-inline-item"><i
																class="fa-solid fa-star-half-alt text-warning"></i></li>
													</ul>

													<ul class="list-inline mb-0">
														<!-- Heart icon -->
														<li class="list-inline-item">
															<a href="${path}/#" class="btn btn-sm btn-round btn-danger mb-0"><i
																	class="fa-solid fa-fw fa-heart"></i></a>
														</li>
														<!-- Share icon -->
														<li class="list-inline-item dropdown">
															<a href="${path}/#" class="btn btn-sm btn-round btn-light mb-0"
																role="button" id="dropdownShare3"
																data-bs-toggle="dropdown" aria-expanded="false">
																<i class="fa-solid fa-fw fa-share-alt"></i>
															</a>
															<!-- dropdown button -->
															<ul class="dropdown-menu dropdown-menu-end min-w-auto shadow rounded"
																aria-labelledby="dropdownShare2">
																<li><a class="dropdown-item" href="${path}/#"><i
																			class="fab fa-twitter-square me-2"></i>트위터</a>
																</li>
																<li><a class="dropdown-item" href="${path}/#"><i
																			class="fab fa-facebook-square me-2"></i>페이스북</a>
																</li>
																<li><a class="dropdown-item" href="${path}/#"><i
																			class="fa-solid fa-copy me-2"></i>링크복사</a>
																</li>
															</ul>
														</li>
													</ul>
												</div>

												<!-- Title -->
												<h5 class="card-title mb-1"><a href="${path}/hotel-detail.html">인삼골 오토캠핑장</a>
												</h5>
												<small><i class="bi bi-geo-alt me-2"></i>좋아요! 캠핑 장소로 그만이에요 아름다운 금강을 끼고
													있어 경치도 그만이고 화장실이나 샤워실 등도 잘 갖추어져 있네요 솔직히 이런 내용 올리기 싫습니다. 사람들이 너무 많이
													몰릴까봐 나만 알고 있어야 하는데, 설거지하는데도 온수가 나오고 있어요 자주 가고 싶은...</small>

												<!-- Price and Button -->
												<div
													class="d-sm-flex justify-content-sm-between align-items-center mt-3 mt-md-auto">
													<!-- Button -->
													<div class="d-flex align-items-center">
														<span class="fw-bold mb-0 me-1">작성일: </span>
														<span class="mb-0 me-2">2023.04.25</span>
													</div>

												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- Wishlist item END -->

							</div>
							<!-- Card body END -->
						</div>
						<!-- Wishlist END -->

					</div>
					<!-- Main content END -->
				</div>
			</div>
		</section>
		<!-- =======================
Content END -->

	</main>
	<!-- **************** MAIN CONTENT END **************** -->

<script src="${path}/resources/assets/vendor/stepper/js/bs-stepper.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>