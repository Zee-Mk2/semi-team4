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
												<li class="breadcrumb-item"><a href="index-concert.html">메인</a></li>
												<li class="breadcrumb-item"><a href="concert-detail.html">공연장 상세</a>
												</li>
												<li class="breadcrumb-item active">예약하기</li>
											</ol>
										</nav>
										<!-- Title -->
										<div class="m-0 h3 title">공연장 예약하기</div>
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
								<h6 class="bs-stepper-label d-none d-md-block">공연 선택</h6>
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
								<h6 class="bs-stepper-label d-none d-md-block">좌석 선택</h6>
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
													<img src="https://image.toast.com/aaaaab/ticketlink/TKL_8/main0518(1).jpg"
														class="rounded-2 w-100">
													<!-- Glightbox image -->
													<a href="https://image.toast.com/aaaaab/ticketlink/TKL_8/main0518(1).jpg"
														class="stretched-link overflow-hidden" data-glightbox=""
														data-gallery="banner">
													</a>
												</div>

											</div>
											<aside class="col-5">
												<!-- Cancellation & Date change START -->
												<div class="card border">
													<!-- Card header -->
													<div class="card-header border-bottom">
														<!-- Title -->
														<h5 class="title mb-0">뮤지컬<레드북></h5>
													</div>

													<!-- Card body START -->
													<div class="card-body">
														<ul class="list-group list-group-borderless">
															<li
																class="list-group-item d-flex justify-content-between align-items-center pt-0">
																<span class="fs-6 fw-bold">장소</span>
																<span class="h6 mb-0 fw-bold">홍익대 대학로 아트센터 대극장</span>
															</li>
															<li
																class="list-group-item d-flex justify-content-between align-items-center pt-0">
																<span class="fs-6 fw-bold">기간</span>
																<span class="h6 mb-0 fw-bold">2023.03.14 - 2023.05.28</span>
															</li>
															<li
																class="list-group-item d-flex justify-content-between align-items-center pt-0">
																<span class="fs-6 fw-bold">관람시간</span>
																<span class="h6 mb-0 fw-bold">160분(인터미션:15분)</span>
															</li>
															<li
																class="list-group-item d-flex justify-content-between align-items-center pt-0">
																<span class="fs-6 fw-bold">관람등급</span>
																<span class="h6 mb-0 fw-bold">중학생이상관람가</span>
															</li>
														</ul>
															<br>
														<div class="text-black">
															<ul>
															<li>
																<h6 class="strong">공연시간</h6>
																<p>화, 목, 금 19시 30분 / 수 15시, 19시 30분 / 주말 14시, 18시 30분 (월요일 공연 없음)<br>
																	※ 05월 19일(금), 05월 22일(월), 05월 23일(화), 05월 26일(금) 15시, 19시 30분 공연​</p>
															</li>
															<li>
																<h6 class="strong">가격</h6>
																<p>VIP석 <b>110,000</b>원 <br>R석 <b>90,000</b>원 <br>S석 <b>65,000</b>원</p>
															</li>
														</ul>
														</div>	
													</div>
													<!-- Card body END -->
												</div>
												<button class="btn btn-warning w-250px offset-8 mt-3" type="button"
													data-bs-toggle="collapse" data-bs-target="#collapseOne"
													aria-expanded="true" aria-controls="collapseOne">
													예매/취소 안내
												</button>
												<div id="collapseOne" class="accordion-collapse collapse mb-4"
													aria-labelledby="headingOne" data-bs-parent="#accordionExample">
													<div class="accordion-body">
														<h5>티켓 수령안내</h5>​
														<b>1) 일반배송</b>​<br>
														예매 완료(결제 완료)확인 후, 인편배송으로 영업일 기준 10일 이내 티켓을 수령하실 수 있습니다.​<br>
														티켓을 배송하기 위한 배송료는 고객이 부담합니다.​<br>
														행사 또는 관람일에 따라 일반배송 선택이 제한될 수 있습니다.​<br>
														<b>2) 현장수령</b>​<br>
														행사 당일 공연 시작 시간 1시간 전 ~ 30분 전까지 행사장 매표소에서 티켓을 수령하실 수 있습니다.​<br>
														현장 매표소에서 예매 완료 SMS 또는 예매번호 및 예매자 정보 확인 후 티켓을 수령할 수 있습니다.​<br>
														기획사 정책 또는 행사일에 따라 현장 수령 방법의 선택이 제한될 수 있습니다.​​<br><br>
														
														<h5>예매 취소 안내</h5>​
														예매 당일 취소하는 경우 이외에는 예매수수료는 환불되지 않습니다.​<br>
														티켓 예매 후 7일 이내 취소 시 취소수수료는 부과되지 않습니다.​<br>
														단, 예매 후 7일 이내라도 취소시점이 관람일로부터 10일 이내라면 그에 해당하는 취소수수료가 부과됩니다.​<br>
														배송 받은 티켓의 반품 접수는 취소가능시간 이내(영업일 기준)에 우편(빠른 등기) 또는 본사 반품을 통해서 입고 완료 건에 한하여 취소 가능하며, 입고 일을 기준으로 취소수수료 적용됩니다.​<br>
														일반우편 또는 택배로 반송 시 발생되는 분실, 지연 도착 등의 문제는 티켓링크에서 책임지지 않으니 이점 유의하시기 바랍니다.​<br>
														<b>취소가능시간​</b><br>
														일반 관람일인 경우: 1일전 17:00시까지​<br>
														​관람일이 연휴기간이거나 연휴 다음날인 경우:​ 연휴 시작일 1일전 17:00시까지​<br>
														(연휴기간이 '토요일~화요일'인 경우: 금요일 17시까지 취소가능)​<br>
														일부 공연의 경우 취소 가능 시간이 상이할 수 있습니다.​​​​<br><br>
														
														<h5>티켓 환불 안내</h5>
														예매취소 시 취소수수료와 배송료를 제외한 나머지 금액이 환불 됩니다.​<br>
														취소수수료는 상품별로 상이할 수 있으며 상품 상세정보 하단에서 확인할 수 있습니다.​<br>
														무통장입금으로 결제한 경우 환불처리를 위해 예매자 본인명의의 계좌정보(예금주, 은행, 계좌번호)를 입력해야 하며 접수일로부터 3~5일(영업일기준)이내 환불 받을 수 있습니다.​<br>
														상품에 따라 환불 시 송금수수료 500원이 부과될 수 있습니다. ​<br>​
														신용카드로 결제한 경우 취소일로부터 3~6일(영업일기준)이내 카드사에서 승인취소를 확인할 수 있습니다.​<br>
														계좌이체, 실시간 계좌출금으로 결제한 경우 취소 시 1~2일(영업일 기준)이내 환불 됩니다.​<br>
														휴대폰결제로 결제한 경우 당월 취소 시 즉시 환불되나 익월 취소 시에는 최대 60일까지 소요됩니다.​<br>
														PAYCO포인트, 예매권, 상품권으로 결제한 경우 취소 시 즉시 계정으로 환불 됩니다.​<br>
													</div>
												</div>
											</aside>
											
										</div>


										<div class="row mt-4 mb-4">
											<div class="col-6">
												<div class="card border p-3">
													<div class="h5 title mt-3">1. 날짜 선택</div>
													<div class="form-control flatpickr">
													</div>
												</div>
											</div>

											<div class="col-6">
												<div class="card border p-3">
												
													<div class="h5 title mt-3">2. 회차 선택</div>
													<input class="form-check-input card-radio" type="radio" name="area-select">
													<div class="card border mb-3"> 
														<div class="h6 title pt-2">15시 00분</div>
														<p>
														<span class="fs-6">출연진</span>
														<span class="h6">옥주현, 신성민, 조풍래, 김국희, 원종환, 안창용, 허순미, 김연진, 이다정</span>
														</p>
													</div>
													<input class="form-check-input card-radio" type="radio" name="area-select">
													<div class="card border"> 
														<div class="h6 title pt-2">19시 30분</div>
														<p>
														<span class="fs-6">출연진</span>
														<span class="h6"> 박진주, 신성민, 박영수, 김국희, 원종환, 안창용, 허순미, 김연진, 이다정</span>
														</p>
													</div>
															
													<div>
														<div class="h5 title mt-3">잔여 좌석</div>
														<div class="row">
															<p class="col">
																<span class="fs-6">VIP석</span>
																<span class="h6"> 45석</span>
															</p>
															<p class="col">
																<span class="fs-6">R석</span>
																<span class="h6"> 60석</span>
															</p>
															<p class="col">
																<span class="fs-6">S석</span>
																<span class="h6"> 3석</span>
															</p>
														</div>
													</div>
												</div>
												
											</div>
										</div>

										<div class="h5 title mt-3 mb-2">출연진</div>
										<div class="row mb-5">
											<div class="col">
												<img src="http://image.toast.com/aaaaab/ticketlink/TKL_4/안나_옥주현.jpg" class="rounded-circle">
												<h6 class="text-center">배우명</h6>
												<h6 class="text-center">배역명</h6>
											</div>
											<div class="col">
												<img src="http://image.toast.com/aaaaab/ticketlink/TKL_4/안나_옥주현.jpg" class="rounded-circle">
												<h6 class="text-center">배우명</h6>
												<h6 class="text-center">배역명</h6>
											</div>
											<div class="col">
												<img src="http://image.toast.com/aaaaab/ticketlink/TKL_4/안나_옥주현.jpg" class="rounded-circle">
												<h6 class="text-center">배우명</h6>
												<h6 class="text-center">배역명</h6>
											</div>
											<div class="col">
												<img src="http://image.toast.com/aaaaab/ticketlink/TKL_4/안나_옥주현.jpg" class="rounded-circle">
												<h6 class="text-center">배우명</h6>
												<h6 class="text-center">배역명</h6>
											</div>
											<div class="col">
												<img src="http://image.toast.com/aaaaab/ticketlink/TKL_4/안나_옥주현.jpg" class="rounded-circle">
												<h6 class="text-center">배우명</h6>
												<h6 class="text-center">배역명</h6>
											</div>
											<div class="col">
												<img src="http://image.toast.com/aaaaab/ticketlink/TKL_4/안나_옥주현.jpg" class="rounded-circle">
												<h6 class="text-center">배우명</h6>
												<h6 class="text-center">배역명</h6>
											</div>
											<div class="col">
												<img src="http://image.toast.com/aaaaab/ticketlink/TKL_4/안나_옥주현.jpg" class="rounded-circle">
												<h6 class="text-center">배우명</h6>
												<h6 class="text-center">배역명</h6>
											</div>
											<div class="col">
												<img src="http://image.toast.com/aaaaab/ticketlink/TKL_4/안나_옥주현.jpg" class="rounded-circle">
												<h6 class="text-center">배우명</h6>
												<h6 class="text-center">배역명</h6>
											</div>
										</div>

										<!-- Step 1 button -->
										<div class="row">
											<div class="text-start col-6">
												<button class="btn btn-info prev-btn mb-0">이전 페이지</button>
											</div>
											<div class="text-end col-6">
												<button class="btn btn-warning next-btn mb-0">다음 페이지</button>
											</div>
										</div>
									</div>
									<!-- Step 1 content END -->

									<!-- Step 2 content start -->
									<div id="step-2" role="tabpanel" class="content fade"
										aria-labelledby="steppertrigger1">
										<div class="row mb-2">
											<div class="col-8">
												<!-- Glightbox image -->
												<div class="mb-4" style="position: relative;">
													<img src="${path}https://www.tliart.co.kr/assets/images/seat/seat_bg.png" class="rounded-2 w-100">
													<!--A-->
													<label class="select-seat position-absolute r-class" style="top: 15.8rem; left: 4.6rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 15.8rem; left: 6.8rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 15.8rem; left: 12.2rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 15.8rem; left: 14.4rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 15.8rem; left: 33.9rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 15.8rem; left: 39.3rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<!--B-->
													<label class="select-seat position-absolute r-class" style="top: 18rem; left: 6.8rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 18rem; left: 14.3rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 18rem; left: 20.9rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 18rem; left: 31.7rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 18rem; left: 41.5rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<!--C-->
													<label class="select-seat position-absolute r-class" style="top: 20.2rem; left: 4.6rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 20.2rem; left: 12.2rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 20.2rem; left: 23.1rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 20.2rem; left: 33.9rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 20.2rem; left: 41.5rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<!--D-->
													<label class="select-seat position-absolute r-class" style="top: 22.3rem; left: 14.4rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 22.3rem; left: 16.5rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 22.3rem; left: 25.2rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 22.3rem; left: 31.7rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 22.3rem; left: 41.5rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<!--E-->
													<label class="select-seat position-absolute r-class" style="top: 24.5rem; left: 6.8rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 24.5rem; left: 12.2rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 24.5rem; left: 18.7rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 24.5rem; left: 20.9rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 24.5rem; left: 27.4rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 24.5rem; left: 29.6rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 24.5rem; left: 31.7rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 24.5rem; left: 33.9rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<!--F-->
													<label class="select-seat position-absolute r-class" style="top: 26.7rem; left: 6.8rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 26.7rem; left: 12.2rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 26.7rem; left: 14.4rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 26.7rem; left: 16.5rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 26.7rem; left: 25.2rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 26.7rem; left: 29.6rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 26.7rem; left: 31.7rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 26.7rem; left: 33.9rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 26.7rem; left: 39.3rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 26.7rem; left: 41.5rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<!--G-->
													<label class="select-seat position-absolute r-class" style="top: 28.9rem; left: 4.6rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 28.9rem; left: 6.8rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 28.9rem; left: 12.2rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 28.9rem; left: 14.4rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 28.9rem; left: 18.7rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 28.9rem; left: 20.9rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 28.9rem; left: 25.2rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 28.9rem; left: 27.4rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 28.9rem; left: 33.9rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 28.9rem; left: 39.3rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 28.9rem; left: 41.5rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<!--H-->
													<label class="select-seat position-absolute s-class" style="top: 31rem; left: 4.6rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 31rem; left: 6.8rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 31rem; left: 12.2rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 31rem; left: 14.4rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 31rem; left: 16.5rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 31rem; left: 18.7rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 31rem; left: 20.9rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 31rem; left: 27.4rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 31rem; left: 29.6rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 31rem; left: 31.7rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 31rem; left: 39.3rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 31rem; left: 41.5rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<!--I-->
													<label class="select-seat position-absolute s-class" style="top: 33.2rem; left: 4.6rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 33.2rem; left: 6.8rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 33.2rem; left: 12.2rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 33.2rem; left: 14.4rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 33.2rem; left: 18.7rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 33.2rem; left: 20.9rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 33.2rem; left: 23.1rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 33.2rem; left: 25.2rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 33.2rem; left: 29.6rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 33.2rem; left: 33.9rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 33.2rem; left: 41.5rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<!--J-->
													<label class="select-seat position-absolute s-class" style="top: 35.4rem; left: 6.8rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 35.4rem; left: 12.2rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 35.4rem; left: 14.4rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 35.4rem; left: 16.5rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 35.4rem; left: 18.7rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 35.4rem; left: 20.9rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 35.4rem; left: 23.1rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 35.4rem; left: 25.2rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 35.4rem; left: 29.6rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 35.4rem; left: 33.9rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 35.4rem; left: 39.3rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<!--K-->
													<label class="select-seat position-absolute s-class" style="top: 37.6rem; left: 4.6rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 37.6rem; left: 12.2rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 37.6rem; left: 16.5rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 37.6rem; left: 18.7rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 37.6rem; left: 20.9rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 37.6rem; left: 23.1rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 37.6rem; left: 27.4rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 37.6rem; left: 29.6rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 37.6rem; left: 31.7rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 37.6rem; left: 33.9rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 37.6rem; left: 39.3rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 37.6rem; left: 41.5rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<!--L-->
													<label class="select-seat position-absolute s-class" style="top: 39.7rem; left: 4.6rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 39.7rem; left: 12.2rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 39.7rem; left: 14.4rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 39.7rem; left: 18.7rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 39.7rem; left: 20.9rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 39.7rem; left: 23.1rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 39.7rem; left: 25.2rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 39.7rem; left: 27.4rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 39.7rem; left: 29.6rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 39.7rem; left: 31.7rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 39.7rem; left: 41.5rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<!--M-->
													<label class="select-seat position-absolute s-class" style="top: 41.9rem; left: 12.2rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 41.9rem; left: 14.4rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 41.9rem; left: 16.5rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 41.9rem; left: 18.7rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 41.9rem; left: 23.1rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 41.9rem; left: 25.2rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 41.9rem; left: 27.4rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 41.9rem; left: 33.9rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<!--N-->
													<label class="select-seat position-absolute a-class" style="top: 44rem; left: 12.2rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute a-class" style="top: 44rem; left: 14.4rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute a-class" style="top: 44rem; left: 16.5rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute a-class" style="top: 44rem; left: 18.7rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute a-class" style="top: 44rem; left: 20.9rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute a-class" style="top: 44rem; left: 25.2rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute a-class" style="top: 44rem; left: 27.4rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute a-class" style="top: 44rem; left: 29.6rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute a-class" style="top: 44rem; left: 31.7rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute a-class" style="top: 44rem; left: 33.9rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<!--O-->
													<label class="select-seat position-absolute a-class" style="top: 46.2rem; left: 12.2rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute a-class" style="top: 46.2rem; left: 14.4rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute a-class" style="top: 46.2rem; left: 16.5rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute a-class" style="top: 46.2rem; left: 23.1rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute a-class" style="top: 46.2rem; left: 25.2rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute a-class" style="top: 46.2rem; left: 27.4rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute a-class" style="top: 46.2rem; left: 29.6rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute a-class" style="top: 46.2rem; left: 31.7rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute a-class" style="top: 46.2rem; left: 33.9rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<!--P-->
													<label class="select-seat position-absolute a-class" style="top: 48.4rem; left: 12.2rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute a-class" style="top: 48.4rem; left: 14.4rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute a-class" style="top: 48.4rem; left: 16.5rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute a-class" style="top: 48.4rem; left: 18.7rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute a-class" style="top: 48.4rem; left: 20.9rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute a-class" style="top: 48.4rem; left: 23.1rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute a-class" style="top: 48.4rem; left: 25.2rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute a-class" style="top: 48.4rem; left: 27.4rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute a-class" style="top: 48.4rem; left: 29.6rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute a-class" style="top: 48.4rem; left: 31.7rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute a-class" style="top: 48.4rem; left: 33.9rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<!--Q-->
													<label class="select-seat position-absolute a-class" style="top: 50.6rem; left: 12.2rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute a-class" style="top: 50.6rem; left: 14.4rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute a-class" style="top: 50.6rem; left: 16.5rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute a-class" style="top: 50.6rem; left: 18.7rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute a-class" style="top: 50.6rem; left: 20.9rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute a-class" style="top: 50.6rem; left: 23.1rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute a-class" style="top: 50.6rem; left: 25.2rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute a-class" style="top: 50.6rem; left: 27.4rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute a-class" style="top: 50.6rem; left: 29.6rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute a-class" style="top: 50.6rem; left: 33.9rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<!--R-->
													<label class="select-seat position-absolute a-class" style="top: 52.8rem; left: 12.2rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute a-class" style="top: 52.8rem; left: 14.4rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute a-class" style="top: 52.8rem; left: 18.7rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute a-class" style="top: 52.8rem; left: 20.9rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute a-class" style="top: 52.8rem; left: 23.1rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute a-class" style="top: 52.8rem; left: 25.2rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute a-class" style="top: 52.8rem; left: 27.4rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute a-class" style="top: 52.8rem; left: 29.6rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute a-class" style="top: 52.8rem; left: 31.7rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
													<label class="select-seat position-absolute a-class" style="top: 52.8rem; left: 33.9rem;">
														<input type="checkbox" class="seat-checkbox">
													</label>
												</div>
											</div>
												</div>
											</div>
											
											<div class="col-7">
												<div class="card border p-3">
													<div class="row">
														<div class="col">
															<div class="h5 title mt-3 mb-3">좌석등급</div>
															<div class="card border mb-3 p-2"> 
																<li class="list-group-item d-flex justify-content-between align-items-center pt-0">
																	<span class="h6 title mb-0" style="color:#7C68EE">R석</span>
																	<span class="fs-6 fw-bold p-2">99,000원</span>
																</li>
																<li class="list-group-item d-flex justify-content-between align-items-center pt-0">
																	<span class="h6 title mb-0" style="color:#1CA814">S석</span>
																	<span class="fs-6 fw-bold p-2">77,000원</span>
																</li>
																<li class="list-group-item d-flex justify-content-between align-items-center pt-0">
																	<span class="h6 title mb-0" style="color:#17B3FF">A석</span>
																	<span class="fs-6 fw-bold p-2">44,000원</span>
																</li>
															</div>	
														</div>
														
														<div class="col">
															<div class="h5 title mt-3 mb-3">선택좌석</div>
															<div class="card border mb-3 p-2"> 
																<li class="list-group-item d-flex justify-content-between align-items-center pt-0">
																<span class="fs-6 fw-bold p-2">좌석등급</span>
																<span class="h6 mb-0 fw-bold">R석</span>
																</li>
																<li class="list-group-item d-flex justify-content-between align-items-center pt-0">
																	<span class="fs-6 fw-bold p-2">좌석번호</span>
																	<span class="h6 mb-0 fw-bold">1층-10열-31</span>
																</li>
																<br><br><br><br><br>
																<h6 style="text-align:right">총 1석 선택되었습니다</h6>
															</div>	
														</div>
													</div>
												</div>
											</div>
										</div>	
										<img src="${path}/resources/assets/images/concert-stage2.png" style="width: 1200px; height: 1200px;"></img>
											<!-- Step 2 button -->
											<div class="row mt-4">
												<div class="text-start col-6">
													<button class="btn btn-info prev-btn mb-0">이전 페이지</button>
												</div>
												<div class="text-end col-6">
													<button class="btn btn-warning next-btn mb-0">다음 페이지</button>
												</div>
											</div>
										</div>
									</div>

									<!-- Step 3 content START -->
									<div id="step-3" role="tabpanel" class="content fade" aria-labelledby="steppertrigger3">
										<div class="row">
											<!-- 예매자 정보 시작 -->
											<div class="card border col-6">
												<!-- Card header -->
												<div class="card-header border-bottom d-sm-flex justify-content-between align-items-center">
													<h4 class="mb-2 mb-sm-0 title">예매자 정보</h5>
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
														<div class="h4 title mb-0">뮤지컬<레드북></div>
													</div>

													<!-- Card body START -->
													<div class="card-body row">
														<div class="col-6">일시</div>
														<div class="col-6 text-end">2023년 6월 1일(목) 19:00</div>
														<div class="col-6">선택좌석</div>
														<div class="col-6 text-end">R석 1층-10열-31</div>
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
													<a onclick="window.open('permit.html', '_blank', 'width=800,height=600')" class="text-black-50 text-decoration-underline">
														숙소이용규칙 및 취소/환불규정 동의<span class="text-danger">*</span>
													</a>
												</div>

												<div class="form-check my-2">
													<input class="form-check-input" type="checkbox" name="permit">
													<a onclick="window.open('permit.html', '_blank', 'width=800,height=600')" class="text-black-50 text-decoration-underline">
														개인정보 수집 및 이용 동의<span class="text-danger">*</span>
													</a>
												</div>

												<div class="form-check my-2">
													<input class="form-check-input" type="checkbox" name="permit">
													<a onclick="window.open('permit.html', '_blank', 'width=800,height=600')" class="text-black-50 text-decoration-underline">
														개인정보 제 3자 제공 동의<span class="text-danger">*</span>
													</a>
												</div>

												<div class="form-check my-2">
													<input class="form-check-input" type="checkbox" name="permit">
													<a onclick="window.open('permit.html', '_blank', 'width=800,height=600')" class="text-black-50 text-decoration-underline">
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
	<!-- **************** MAIN CONTENT END **************** -->
	
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>