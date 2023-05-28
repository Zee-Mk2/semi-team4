<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/stepper/css/bs-stepper.min.css">

<main>
	<!-- =======================
Page Banner START -->
	<section class="py-0">
		<div class="container">
			<div class="row mt-4 align-items-center">
				<div class="col-12">
					<!-- Card START -->
					<div class="card bg-light overflow-hidden px-sm-5">
						<div class="row align-items-center g-4">

							<!-- Content -->
							<div class="col-sm-9">
								<div class="card-body">
									<!-- Breadcrumb -->
									<nav aria-label="breadcrumb">
										<ol class="breadcrumb breadcrumb-dark mb-0">
											<li class="breadcrumb-item"><a href="">메인</a></li>
											<li class="breadcrumb-item"><a href="camping-detail.html">캠핑장 상세</a>
											</li>
											<li class="breadcrumb-item active">예약하기</li>
										</ol>
									</nav>
									<!-- Title -->
									<div class="m-0 h3 title">캠핑장 예약하기</div>
								</div>
							</div>

							<!-- Image -->
							<div class="col-sm-3 text-end d-none d-sm-block">
								<img src="${path}/resources/assets/images/element/17.svg" class="mt-4 mb-n5">
							</div>
						</div>
					</div>
					<!-- Card END -->
				</div>
			</div>
		</div>
	</section>
	<!-- =======================
Page Banner END -->

	<!-- =======================
Steps START -->
	<section>
		<div class="container">
			<div id="stepper" class="bs-stepper stepper-outline">
				<!-- Step Buttons START -->
				<div class="bs-stepper-header" role="tablist">
					<!-- Step 1 -->
					<div class="step" data-target="#step-1">
						<div class="text-center">
							<button type="button" class="btn btn-link step-trigger mb-0" role="tab"
								id="steppertrigger1" aria-controls="step-1">
								<span class="bs-stepper-circle">1</span>
							</button>
							<h6 class="bs-stepper-label d-none d-md-block">구역 선택</h6>
						</div>
					</div>
					<div class="line"></div>

					<!-- Step 2 -->
					<div class="step" data-target="#step-2">
						<div class="text-center">
							<button type="button" class="btn btn-link step-trigger mb-0" role="tab"
								id="steppertrigger2" aria-controls="step-2">
								<span class="bs-stepper-circle">2</span>
							</button>
							<h6 class="bs-stepper-label d-none d-md-block">사이트 선택</h6>
						</div>
					</div>
					<div class="line"></div>

					<!-- Step 3 -->
					<div class="step" data-target="#step-3">
						<div class="text-center">
							<button type="button" class="btn btn-link step-trigger mb-0" role="tab"
								id="steppertrigger3" aria-controls="step-3">
								<span class="bs-stepper-circle">3</span>
							</button>
							<h6 class="bs-stepper-label d-none d-md-block">결제하기</h6>
						</div>
					</div>
				</div>
				<!-- Step Buttons END -->

				<!-- Step content START -->
				<div class="bs-stepper-content p-0 pt-4">
					<div class="row g-4">

						<!-- Main content START -->
						<div class="col-12">

							<form onsubmit="return false">

								<!-- Step 1 content START -->
								<div id="step-1" role="tabpanel" class="content fade"
									aria-labelledby="steppertrigger1">
									<div class="row">
										<div class="col-7">
											<!-- Glightbox image -->
											<div class="mb-4" style="position: relative;">
												<img src="https://static.wixstatic.com/media/14e777_a45923488783473baa62300b9eb6a0d3~mv2.png/v1/fill/w_560,h_332,al_c,q_85,usm_0.33_1.00_0.00,enc_auto/%EC%BA%A0%ED%95%91%EC%9E%A51%EA%B5%AC%EC%97%AD%20%EB%B0%B0%EC%B9%98%EB%8F%84(%EC%88%98%EC%A0%95).png"
													class="rounded-2 w-100">
												<!-- Glightbox image -->
												<a href="https://static.wixstatic.com/media/14e777_a45923488783473baa62300b9eb6a0d3~mv2.png/v1/fill/w_560,h_332,al_c,q_85,usm_0.33_1.00_0.00,enc_auto/%EC%BA%A0%ED%95%91%EC%9E%A51%EA%B5%AC%EC%97%AD%20%EB%B0%B0%EC%B9%98%EB%8F%84(%EC%88%98%EC%A0%95).png"
													class="stretched-link overflow-hidden" data-glightbox=""
													data-gallery="banner">
												</a>
											</div>

										</div>
										<aside class="col-5">
											<button class="btn btn-outline-primary w-100 mb-4" type="button"
												data-bs-toggle="collapse" data-bs-target="#collapseOne"
												aria-expanded="true" aria-controls="collapseOne">
												캠핑장 안내사항
											</button>
											<div id="collapseOne" class="accordion-collapse collapse mb-4"
												aria-labelledby="headingOne" data-bs-parent="#accordionExample">
												<div class="accordion-body">
													<h5>캠핑장 안내사항</h5><br>
													※해여림빌리지는 가족 캠핑장 입니다. ※<br>
													- 가족은 부모 자녀 포함하여 예약 할 수 있습니다.<br>
													- 커플 또는 성인 2인만 예약가능합니다<br>
													.- 커플 2쌍 두가족 사이트 예약 가능합니다<br>
													.-방문객 입실 거절하며, 모르게 입실 시 발각 되면, 예약자 함께 가차 없이 퇴장조치 합니다.<br>
													※ 예약 불가 인원은 친구나 지인끼리 3인또는 4인은 예약이 불가 합니다.<br>
													- 캠핑장 사이트 2개를 예약해서 3인이상(남자3인이나,4인)모임은 절대 불가 합니다. 이를 어길 경우 환불 없이
													입실이 불가하며 가차없이 퇴실 조치합니다.<br><br>
													일부 사이트에서 차박이 가능합니다<br>
													곤지암, 양평, 이천 15KM 거리에 위치<br>
													1. 펜션, 캠핑장에서 만드는 연인, 가족과의 잊지못할 데이트<br>
													2. 자체 식물원에서 느끼는 사계절 힐링 산책<br>
													3. 각종 지역 연회 및 워크샵 장소<br>
													4. 서울 근교 데이트 장소로 좋은 여주 청정지역<br>
													5. 수목원 부지에 지어진 특별한 캠핑장<br>
													6. 전기 사용 600W 미만 사용(높은 왓트 전열기 사용시 캠핑장 전체 차단기 떨어집니다)<br>
													7. 저녁 7시 이후 입실 불가<br>
													8. 일부 사이트들은 차박이 가능하며 프라이빗한 공간을 제공합니다<br>
												</div>
											</div>
											<!-- Cancellation & Date change START -->
											<div class="card border">
												<!-- Card header -->
												<div class="card-header border-bottom">
													<!-- Title -->
													<h5 class="fw-bold mb-0">취소 환불 규정</h5>
												</div>

												<!-- Card body START -->
												<div class="card-body">
													<ul class="list-group list-group-borderless">
														<li
															class="list-group-item d-flex justify-content-between align-items-center pt-0">
															<span class="fs-6 fw-bold">당일 ~ 1일 전</span>
															<span class="h6 mb-0 fw-bold">0%</span>
														</li>
														<li
															class="list-group-item d-flex justify-content-between align-items-center pt-0">
															<span class="fs-6 fw-bold">2일 전</span>
															<span class="h6 mb-0 fw-bold">20%</span>
														</li>
														<li
															class="list-group-item d-flex justify-content-between align-items-center pt-0">
															<span class="fs-6 fw-bold">3일 전</span>
															<span class="h6 mb-0 fw-bold">30%</span>
														</li>
														<li
															class="list-group-item d-flex justify-content-between align-items-center pt-0">
															<span class="fs-6 fw-bold">4일 전</span>
															<span class="h6 mb-0 fw-bold">40%</span>
														</li>
														<li
															class="list-group-item d-flex justify-content-between align-items-center pt-0">
															<span class="fs-6 fw-bold">5일 전</span>
															<span class="h6 mb-0 fw-bold">50%</span>
														</li>
														<li
															class="list-group-item d-flex justify-content-between align-items-center pt-0">
															<span class="fs-6 fw-bold">6일 전</span>
															<span class="h6 mb-0 fw-bold">80%</span>
														</li>
														<li
															class="list-group-item d-flex justify-content-between align-items-center pt-0">
															<span class="fs-6 fw-bold">7일 ~</span>
															<span class="h6 mb-0 fw-bold">100%</span>
														</li>
													</ul>
												</div>
												<!-- Card body END -->
											</div>
											<!-- Cancellation & Date change END -->
										</aside>
									</div>

									<div class="vstack gap-4 mb-4">
										<!-- Title -->
										<div class="mt-2 mb-0 h3 title">구역 선택하기</div>

										<hr class="my-0"> <!-- Divider -->

										<!-- AREA ITEM START -->
										<label class="card-label card area-card">
											<input class="form-check-input card-radio" type="radio" name="area-select">
											
											<div class="card shadow overflow-hidden">
												<div class="row" style="height: 250px">
													<!-- Image -->
													<div class="col-4 card-img-side">
														<img src="https://image.goodchoice.kr/resize_490x348/affiliate/2021/03/29/60615a76c8d58.jpg"
															class="img-fluid">
													</div>
													<!-- Card Body START -->
													<div class="col-8">
														<div class="card-body p-3">
															<!-- Card Content -->
															<div class="h4 card-title my-3 title">힐 펜션</div>
															<ul class="nav nav-divider small mb-0 mt-2">
																<li class="nav-item mb-1"><i
																		class="nav-icon"></i>최대인원 6인</li>
																<li class="nav-item mb-1"><i
																		class="nav-icon"></i>전체객실수 1</li>
																<li class="nav-item mb-1"><i
																		class="nav-icon"></i>최소 1일 ~ 최대 7일</li>
															</ul>
															<div>
																산중턱에 위치해 해여림빌리지의 풍광이 한눈에 내려다 보이는 전망과 함께 하루를 머무를
																수 있는 별장형 독채 펜션입니다. 수목원 산림속에 자리 잡고 있어 한 여름에도 시원할
																수 밖에 없는 독채랍니다.
															</div>
															<p class="position-absolute" style="bottom: 0;">
																<span class="h4 card-title mb-1 title text-primary">
																	₩ 190,000
																</span>
																<span>/1박</span>
															</p>
														</div>
													</div>
													<!-- Card body END -->
												</div>
											</div>
										</label>
										<!-- AREA ITEM END -->

										<!-- AREA ITEM START -->
										<label class="card-label card area-card">
											<input class="form-check-input card-radio" type="radio" name="area-select">
											
											<div class="card shadow overflow-hidden">
												<div class="row" style="height: 250px">
													<!-- Image -->
													<div class="col-4 card-img-side">
														<img src="https://www.insiseol.or.kr/park/songdo/img/contents/camping_reserve.jpg"
															class="img-fluid">
													</div>
													<!-- Card Body START -->
													<div class="col-8">
														<div class="card-body p-3">
															<!-- Card Content -->
															<div class="h4 card-title my-3 title">A구역</div>
															<ul class="nav nav-divider small mb-0 mt-2">
																<li class="nav-item mb-1"><i
																		class="nav-icon"></i>최대인원 2인</li>
																<li class="nav-item mb-1"><i
																		class="nav-icon"></i>전체객실수 10</li>
																<li class="nav-item mb-1"><i
																		class="nav-icon"></i>최소 1일 ~ 최대 15일</li>
															</ul>
															<div>
																해여림빌리지내에 있는 대형잔디 사이트입니다. <br>
																ㅁ 애견 및 트레일러, 루프탑 텐트, 카라반 입장은 불가합니다. (차박불가)
															</div>
															<p class="position-absolute" style="bottom: 0;">
																<span class="h4 card-title mb-1 title text-primary">
																	₩ 20,000
																</span>
																<span>/1박</span>
															</p>
														</div>
													</div>
													<!-- Card body END -->
												</div>
											</div>
										</label>
										<!-- AREA ITEM END -->
									</div>


									<!-- Step 1 button -->
									<div class="row">
										<div class="text-start col-6">
											<button class="btn btn-info prev-btn mb-0">이전 페이지</button>
										</div>
										<div class="text-end col-6">
											<button class="btn btn-primary next-btn mb-0">다음 페이지</button>
										</div>
									</div>
								</div>
								<!-- Step 1 content END -->

								<!-- Step 2 content END -->
								<div id="step-2" role="tabpanel" class="content fade"
									aria-labelledby="steppertrigger1">
									<div class="row">
										<div class="col-7">
											<!-- Glightbox image -->
											<div class="mb-4" style="position: relative;">
												<img src="https://static.wixstatic.com/media/14e777_a45923488783473baa62300b9eb6a0d3~mv2.png/v1/fill/w_560,h_332,al_c,q_85,usm_0.33_1.00_0.00,enc_auto/%EC%BA%A0%ED%95%91%EC%9E%A51%EA%B5%AC%EC%97%AD%20%EB%B0%B0%EC%B9%98%EB%8F%84(%EC%88%98%EC%A0%95).png"
													class="rounded-2 w-100">
												<!-- Glightbox image -->
												<a href="https://static.wixstatic.com/media/14e777_a45923488783473baa62300b9eb6a0d3~mv2.png/v1/fill/w_560,h_332,al_c,q_85,usm_0.33_1.00_0.00,enc_auto/%EC%BA%A0%ED%95%91%EC%9E%A51%EA%B5%AC%EC%97%AD%20%EB%B0%B0%EC%B9%98%EB%8F%84(%EC%88%98%EC%A0%95).png"
													class="stretched-link overflow-hidden" data-glightbox=""
													data-gallery="banner">
												</a>
											</div>

										</div>
										<aside class="col-5">
											<button class="btn btn-outline-primary w-100 mb-4" type="button"
												data-bs-toggle="collapse" data-bs-target="#collapseOne"
												aria-expanded="true" aria-controls="collapseOne">
												캠핑장 안내사항
											</button>
											<div id="collapseOne" class="accordion-collapse collapse mb-4"
												aria-labelledby="headingOne" data-bs-parent="#accordionExample">
												<div class="accordion-body">
													<h5>캠핑장 안내사항</h5><br>
													※해여림빌리지는 가족 캠핑장 입니다. ※<br>
													- 가족은 부모 자녀 포함하여 예약 할 수 있습니다.<br>
													- 커플 또는 성인 2인만 예약가능합니다<br>
													.- 커플 2쌍 두가족 사이트 예약 가능합니다<br>
													.-방문객 입실 거절하며, 모르게 입실 시 발각 되면, 예약자 함께 가차 없이 퇴장조치 합니다.<br>
													※ 예약 불가 인원은 친구나 지인끼리 3인또는 4인은 예약이 불가 합니다.<br>
													- 캠핑장 사이트 2개를 예약해서 3인이상(남자3인이나,4인)모임은 절대 불가 합니다. 이를 어길 경우 환불 없이
													입실이 불가하며 가차없이 퇴실 조치합니다.<br><br>
													일부 사이트에서 차박이 가능합니다<br>
													곤지암, 양평, 이천 15KM 거리에 위치<br>
													1. 펜션, 캠핑장에서 만드는 연인, 가족과의 잊지못할 데이트<br>
													2. 자체 식물원에서 느끼는 사계절 힐링 산책<br>
													3. 각종 지역 연회 및 워크샵 장소<br>
													4. 서울 근교 데이트 장소로 좋은 여주 청정지역<br>
													5. 수목원 부지에 지어진 특별한 캠핑장<br>
													6. 전기 사용 600W 미만 사용(높은 왓트 전열기 사용시 캠핑장 전체 차단기 떨어집니다)<br>
													7. 저녁 7시 이후 입실 불가<br>
													8. 일부 사이트들은 차박이 가능하며 프라이빗한 공간을 제공합니다<br>
												</div>
											</div>
											<!-- Cancellation & Date change START -->
											<div class="card border">
												<!-- Card header -->
												<div class="card-header border-bottom">
													<!-- Title -->
													<h5 class="fw-bold mb-0">취소 환불 규정</h5>
												</div>

												<!-- Card body START -->
												<div class="card-body">
													<ul class="list-group list-group-borderless">
														<li
															class="list-group-item d-flex justify-content-between align-items-center pt-0">
															<span class="fs-6 fw-bold">당일 ~ 1일 전</span>
															<span class="h6 mb-0 fw-bold">0%</span>
														</li>
														<li
															class="list-group-item d-flex justify-content-between align-items-center pt-0">
															<span class="fs-6 fw-bold">2일 전</span>
															<span class="h6 mb-0 fw-bold">20%</span>
														</li>
														<li
															class="list-group-item d-flex justify-content-between align-items-center pt-0">
															<span class="fs-6 fw-bold">3일 전</span>
															<span class="h6 mb-0 fw-bold">30%</span>
														</li>
														<li
															class="list-group-item d-flex justify-content-between align-items-center pt-0">
															<span class="fs-6 fw-bold">4일 전</span>
															<span class="h6 mb-0 fw-bold">40%</span>
														</li>
														<li
															class="list-group-item d-flex justify-content-between align-items-center pt-0">
															<span class="fs-6 fw-bold">5일 전</span>
															<span class="h6 mb-0 fw-bold">50%</span>
														</li>
														<li
															class="list-group-item d-flex justify-content-between align-items-center pt-0">
															<span class="fs-6 fw-bold">6일 전</span>
															<span class="h6 mb-0 fw-bold">80%</span>
														</li>
														<li
															class="list-group-item d-flex justify-content-between align-items-center pt-0">
															<span class="fs-6 fw-bold">7일 ~</span>
															<span class="h6 mb-0 fw-bold">100%</span>
														</li>
													</ul>
												</div>
												<!-- Card body END -->
											</div>
											<br>
											<input type="text" class="form-control flatpickr py-2 btn btn-outline-light" data-mode="range" data-date-format="m-d" placeholder="일정 선택">
										</aside>

										<div class="row mt-4">
											<div class="col-6">
												<div class="card border">
													<!-- Card header -->
													<div class="card-header border-bottom">
														<!-- Title -->
														<div class="h4 title mb-0">사이트 선택하기</div>
													</div>

													<!-- Card body START -->
													<div class="card-body row g-4">
														<div class="col-4">
															<label class="card-label card area-card">
																<input class="form-check-input card-radio" type="radio" name="site-select">
																<div class="h4 text-center">A1</div>
																<div class="text-center">8m X 8m</div>
															</label>
														</div>
														
														<div class="col-4">
															<label class="card-label card area-card">
																<input class="form-check-input card-radio" type="radio" name="site-select">
																<div class="h4 text-center">A2</div>
																<div class="text-center">8m X 8m</div>
															</label>
														</div>

														<div class="col-4">
															<label class="card-label card area-card">
																<input class="form-check-input card-radio" type="radio" name="site-select">
																<div class="h4 text-center">A3</div>
																<div class="text-center">8m X 8m</div>
															</label>
														</div>

														<div class="col-4">
															<label class="card-label card area-card">
																<input class="form-check-input card-radio" type="radio" name="site-select">
																<div class="h4 text-center">A4</div>
																<div class="text-center">8m X 8m</div>
															</label>
														</div>

														<div class="col-4">
															<label class="card-label card area-card">
																<input class="form-check-input card-radio" type="radio" name="site-select">
																<div class="h4 text-center">A5</div>
																<div class="text-center">8m X 8m</div>
															</label>
														</div>
													</div>
													<!-- Card body END -->
												</div>
											</div>

											<div class="col-6">
												<div class="card border">
													<!-- Title -->
													<div class="card-header border-bottom">
														<div class="h4 title mb-0">A구역 - A1</div>
													</div>

													<!-- Card body START -->
													<div class="card-body row">
														<div class="col-6">일정</div>
														<div class="col-6 text-end">9.22 ~ 9.24</div>
														<div class="col-6">숙박일</div>
														<div class="col-6 text-end">2박 3일</div>
													</div>
													<!-- Card body END -->

													<hr class="my-n1">

													<!-- 결제금액 -->
													<div class="card-body row h4 title text-black">
														<div class="col-6">결제금액</div>
														<div class="col-6 text-end">₩ 80,000</div>
													</div>
												</div>
											</div>
										</div>

										<!-- Step 2 button -->
										<div class="row mt-4">
											<div class="text-start col-6">
												<button class="btn btn-info prev-btn mb-0">이전 페이지</button>
											</div>
											<div class="text-end col-6">
												<button class="btn btn-primary next-btn mb-0">다음 페이지</button>
											</div>
										</div>
									</div>
								</div>


								<!-- Step 3 content START -->
								<div id="step-3" role="tabpanel" class="content fade" aria-labelledby="steppertrigger3">
									<div class="row">
										<!-- 예약자 정보 시작 -->
										<div class="card border col-6">
											<!-- Card header -->
											<div class="card-header border-bottom d-sm-flex justify-content-between align-items-center">
												<h4 class="mb-2 mb-sm-0 title">예약자 정보</h5>
											</div>

											<!-- Card body -->
											<div class="card-body">
												<!-- 이름 -->
												<div>
													<label class="form-label">이름</label>
													<div class="position-relative form-control-bg-light">
														<input type="text" class="form-control" maxlength="14" placeholder="">
													</div>
												</div>
												<br>
												<!-- 전화번호 -->
												<div class="row">
													<label class="form-label">전화번호</label>
													<div class="form-control-bg-light col-9">
														<input type="text" class="form-control" maxlength="11" placeholder="- 없이 입력해주세요 ex. 01012341234">
													</div>
													<div class="btn btn-outline-light col-3">인증번호 전송</div>
												</div>
											</div>
										</div>
										<!-- 예약자 정보 끝 -->

										<div class="col-6">
											<div class="card border">
												<!-- Title -->
												<div class="card-header border-bottom">
													<div class="h4 title mb-0">A구역 - A1</div>
												</div>

												<!-- Card body START -->
												<div class="card-body row">
													<div class="col-6">일정</div>
													<div class="col-6 text-end">9.22 ~ 9.24</div>
													<div class="col-6">숙박일</div>
													<div class="col-6 text-end">2박 3일</div>
												</div>
												<!-- Card body END -->

												<hr class="my-n1">

												<!-- 결제금액 -->
												<div class="card-body row h4 title text-black">
													<div class="col-6">결제금액</div>
													<div class="col-6 text-end">₩ 80,000</div>
												</div>

												<div class="btn btn-primary col-11 align-self-center mb-3" href="#">결제하기</div>
											</div>
										</div>

										<form class="form-control-bg-light" >
										</form>
										
										<div class="col-6 mt-4">
											<div class="h4 title">결제수단 선택</div>
											<!-- Select option -->
											<div class="">
												<form class="form-control-bg-light my-3">
													<select class="form-select js-choice">
														<option>카카오페이</option>
														<option>네이버페이</option>
														<option>카드결제</option>
													</select>
												</form>
											</div>

											<div class="form-check my-2">
												<input class="form-check-input" type="checkbox" name="permit">
												<a onclick="window.open('${path}/permit', '_blank', 'width=800,height=600')" class="text-black-50 text-decoration-underline">
													숙소이용규칙 및 취소/환불규정 동의<span class="text-danger">*</span>
												</a>
											</div>

											<div class="form-check my-2">
												<input class="form-check-input" type="checkbox" name="permit">
												<a onclick="window.open('${path}/permit', '_blank', 'width=800,height=600')" class="text-black-50 text-decoration-underline">
													개인정보 수집 및 이용 동의<span class="text-danger">*</span>
												</a>
											</div>

											<div class="form-check my-2">
												<input class="form-check-input" type="checkbox" name="permit">
												<a onclick="window.open('${path}/permit', '_blank', 'width=800,height=600')" class="text-black-50 text-decoration-underline">
													개인정보 제 3자 제공 동의<span class="text-danger">*</span>
												</a>
											</div>

											<div class="form-check my-2">
												<input class="form-check-input" type="checkbox" name="permit">
												<a onclick="window.open('${path}/permit', '_blank', 'width=800,height=600')" class="text-black-50 text-decoration-underline">
													만 14세 이상 확인<span class="text-danger">*</span>
												</a>
											</div>
										</div>
									
									</div>


									<!-- Step 3 button -->
									<div class="d-flex justify-content-between mt-4">
										<button class="btn btn-info prev-btn mb-0">이전 페이지</button>
									</div>
								</div>
								<!-- Step 3 content END -->

							</form>
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

</main>

<script src="${path}/resources/assets/vendor/stepper/js/bs-stepper.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
