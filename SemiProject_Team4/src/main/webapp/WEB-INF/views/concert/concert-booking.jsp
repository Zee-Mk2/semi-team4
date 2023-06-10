<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/concert-header.jsp"/>

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
<script src="${path}/resources/assets/vendor/flatpickr/ko.js"></script>
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
												<li class="breadcrumb-item"><a href="${path}/conc-home">메인</a></li>
												<li class="breadcrumb-item"><a href="${path}/conc-detail?conId=${conc.conId}">공연장 상세</a>
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
			<div class="container-fluid" style="width: 1200px;">
				<div id="stepper" class="bs-stepper stepper-outline">
					<!-- Step Buttons START -->
					<div class="bs-stepper-header" role="tablist">
						<!-- Step 1 -->
						<div class="step" data-target="#step-1">
							<div class="text-center">
								<button type="button" class="btn btn-link step-trigger mb-0" role="tab" disabled="true" style="opacity: 1 !important;"
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
								<button type="button" class="btn btn-link step-trigger mb-0" role="tab" disabled="true" style="opacity: 1 !important;"
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
								<button type="button" class="btn btn-link step-trigger mb-0" role="tab" disabled="true" style="opacity: 1 !important;"
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

								<form name="payForm" action="${path}/kakaoPayConc" method="post" >
									<input type="hidden" value="${conc.conHallId}" name="conHallId">
									<input type="hidden" value="${conc.conId}" name="conId">
									<input type="hidden" value="${sessionScope.loginMember.mno}" name="mno">

									<!-- Step 1 content START -->
									<div id="step-1" role="tabpanel" class="content fade"
										aria-labelledby="steppertrigger1">
										<div class="row">
											<div class="col-6">
												<!-- Glightbox image -->
												<div class="mb-4" style="position: relative;">
													<img src="${conc.posterImg}"
														class="rounded-2 w-100">
													<!-- Glightbox image -->
													<a href="${conc.posterImg}"
														class="stretched-link overflow-hidden" data-glightbox=""
														data-gallery="banner">
													</a>
												</div>

											</div>
											<aside class="col-6">
												<!-- Cancellation & Date change START -->
												<div class="card border">
													<!-- Card header -->
													<div class="card-header border-bottom">
														<!-- Title -->
														<h5 class="title mb-0">${conc.genre} <${conc.conNm}></h5>
													</div>

													<!-- Card body START -->
													<div class="card-body">
														<ul class="list-group list-group-borderless">
															<li
																class="list-group-item d-flex justify-content-between align-items-center py-1">
																<span class="fs-6 fw-bold">장소</span>
																<span class="h6 mb-0 fw-bold">${conc.conHallNm}</span>
															</li>
															<li
																class="list-group-item d-flex justify-content-between align-items-center py-1">
																<span class="fs-6 fw-bold">기간</span>
																<span class="h6 mb-0 fw-bold">
																	<fmt:formatDate var="fmtStartDate" value="${conc.startDate}" pattern="yyyy.MM.dd"/>
																	<fmt:formatDate var="fmtEndDate" value="${conc.endDate}" pattern="yyyy.MM.dd"/>
																	${fmtStartDate} ~ ${fmtEndDate}
																 </span>
															</li>
															<li
																class="list-group-item d-flex justify-content-between align-items-center py-1">
																<span class="fs-6 fw-bold">관람시간</span>
																<span class="h6 mb-0 fw-bold">${conc.runtime}</span>
															</li>
															<li
																class="list-group-item d-flex justify-content-between align-items-center py-1">
																<span class="fs-6 fw-bold">관람등급</span>
																<c:if test="${conc.viewAge == 0}">
																	<span class="h6 mb-0 fw-bold">전체관람가</span>
																</c:if>
																<c:if test="${conc.viewAge != 0}">
																	<span class="h6 mb-0 fw-bold">${conc.viewAge}세 이상 관람가</span>
																</c:if>
															</li>
															<li
																class="list-group-item d-flex justify-content-between align-items-center py-1">
																<span class="fs-6 fw-bold">공연시간</span>
																<span class="h6 mb-0 fw-bold text-end">${conc.startTime}</span>
															</li>
															<li
																class="list-group-item d-flex justify-content-between align-items-center py-1">
																<span class="fs-6 fw-bold">가격</span>
																<span class="h6 mb-0 fw-bold text-end">${conc.ticketPrice}</span>
															</li>
														</ul>
													</div>
													<!-- Card body END -->
												</div>
												<button class="btn btn-outline-warning w-100 my-3" type="button"
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
													<div class="form-border-bottom form-control-transparent form-fs-lg mt-2">
														<input id="datePicker" type="text" class="form-control py-2" data-date-format="Y-m-d" placeholder="예매일자를 선택해주세요">
													    <script>
													        flatpickr("#datePicker", {
													        	locale: Korean,
													        	minDate: "${fmtStartDate}",
													        	maxDate: "${fmtEndDate}",
													        });
													    </script>
													</div>
												</div>
											</div>

											<div class="col-6">
												<div class="card border p-3">
												
													<div class="h5 title mt-3">2. 회차 선택</div>
													<div id="selectSchedule">예매일자를 선택해주세요</div>
												</div>
												
											</div>
										</div>

										<!-- Step 1 button -->
										<div class="row">
											<div class="text-start col-6">
												<a class="btn btn-info prev-btn mb-0" href="${path}/conc-detail?conId=${conc.conId}">이전 페이지</a>
											</div>
											<div class="text-end col-6">
												<button type="button" class="btn btn-warning next-btn mb-0" id="seatsPage" disabled="true">다음 페이지</button>
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
												<div class="mb-4 position-relative">
													<img src="${path}/resources/assets/images/hall_seat/seat_bg.png" class="rounded-2 w-100">
													<!--A-->
													<label class="select-seat position-absolute r-class" style="top: 15.8em; left: 4.6rem;" id="A-1">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="A-1" data-seattype="R석" data-price="60000" value="A-1 R석">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 15.8rem; left: 6.8rem;" id="A-2">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="A-2" data-seattype="R석" data-price="60000" value="A-2 R석">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 15.8rem; left: 12.2rem;" id="A-3">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="A-3" data-seattype="R석" data-price="60000" value="A-3 R석">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 15.8rem; left: 14.4rem;" id="A-4">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="A-4" data-seattype="R석" data-price="60000" value="A-4 R석">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 15.8rem; left: 16.5rem;" id="A-5">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="A-5" data-seattype="R석" data-price="60000" value="A-5 R석">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 15.8rem; left: 18.7rem;" id="A-6">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="A-6" data-seattype="R석" data-price="60000" value="A-6 R석">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 15.8rem; left: 20.9rem;" id="A-7">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="A-7" data-seattype="R석" data-price="60000" value="A-7 R석">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 15.8rem; left: 23.0rem;" id="A-8">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="A-8" data-seattype="R석" data-price="60000" value="A-8 R석">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 15.8rem; left: 25.2rem;" id="A-9">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="A-9" data-seattype="R석" data-price="60000" value="A-9 R석">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 15.8rem; left: 27.4rem;" id="A-10">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="A-10" data-seattype="R석" data-price="60000" value="A-10 R석">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 15.8rem; left: 29.5rem;" id="A-11">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="A-11" data-seattype="R석" data-price="60000" value="A-11 R석">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 15.8rem; left: 31.7rem;" id="A-12">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="A-12" data-seattype="R석" data-price="60000" value="A-12 R석">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 15.8rem; left: 33.9rem;" id="A-13">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="A-13" data-seattype="R석" data-price="60000" value="A-13 R석">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 15.8rem; left: 39.3rem;" id="A-14">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="A-14" data-seattype="R석" data-price="60000" value="A-14 R석">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 15.8rem; left: 41.5rem;" id="A-15">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="A-15" data-seattype="R석" data-price="60000" value="A-15 R석">
													</label>
													<!--B-->
													<label class="select-seat position-absolute r-class" style="top: 18rem; left: 4.6rem;" id="B-1">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="B-1" data-seattype="R석" data-price="60000" value="B-1 R석">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 18rem; left: 6.8rem;" id="B-2">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="B-2" data-seattype="R석" data-price="60000" value="B-2 R석">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 18rem; left: 12.2rem;" id="B-3">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="B-3" data-seattype="R석" data-price="60000" value="B-3 R석">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 18rem; left: 14.4rem;" id="B-4">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="B-4" data-seattype="R석" data-price="60000" value="B-4 R석">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 18rem; left: 16.5rem;" id="B-5">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="B-5" data-seattype="R석" data-price="60000" value="B-5 R석">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 18rem; left: 18.7rem;" id="B-6">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="B-6" data-seattype="R석" data-price="60000" value="B-6 R석">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 18rem; left: 20.9rem;" id="B-7">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="B-7" data-seattype="R석" data-price="60000" value="B-7 R석">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 18rem; left: 23.0rem;" id="B-8">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="B-8" data-seattype="R석" data-price="60000" value="B-8 R석">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 18rem; left: 25.2rem;" id="B-9">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="B-9" data-seattype="R석" data-price="60000" value="B-9 R석">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 18rem; left: 27.4rem;" id="B-10">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="B-10" data-seattype="R석" data-price="60000" value="B-10 R석">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 18rem; left: 29.5rem;" id="B-11">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="B-11" data-seattype="R석" data-price="60000" value="B-11 R석">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 18rem; left: 31.7rem;" id="B-12">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="B-12" data-seattype="R석" data-price="60000" value="B-12 R석">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 18rem; left: 33.9rem;" id="B-13">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="B-13" data-seattype="R석" data-price="60000" value="B-13 R석">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 18rem; left: 39.3rem;" id="B-14">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="B-14" data-seattype="R석" data-price="60000" value="B-14 R석">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 18rem; left: 41.5rem;" id="B-15">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="B-15" data-seattype="R석" data-price="60000" value="B-15 R석">
													</label>
													<!-- C -->
													<label class="select-seat position-absolute r-class" style="top: 20.15rem; left: 4.6rem;" id="C-1">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="C-1" data-seattype="R석" data-price="60000" value="C-1 R석">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 20.15rem; left: 6.8rem;" id="C-2">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="C-2" data-seattype="R석" data-price="60000" value="C-2 R석">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 20.15rem; left: 12.2rem;" id="C-3">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="C-3" data-seattype="R석" data-price="60000" value="C-3 R석">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 20.15rem; left: 14.4rem;" id="C-4">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="C-4" data-seattype="R석" data-price="60000" value="C-4 R석">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 20.15rem; left: 16.5rem;" id="C-5">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="C-5" data-seattype="R석" data-price="60000" value="C-5 R석">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 20.15rem; left: 18.7rem;" id="C-6">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="C-6" data-seattype="R석" data-price="60000" value="C-6 R석">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 20.15rem; left: 20.9rem;" id="C-7">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="C-7" data-seattype="R석" data-price="60000" value="C-7 R석">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 20.15rem; left: 23.0rem;" id="C-8">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="C-8" data-seattype="R석" data-price="60000" value="C-8 R석">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 20.15rem; left: 25.2rem;" id="C-9">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="C-9" data-seattype="R석" data-price="60000" value="C-9 R석">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 20.15rem; left: 27.4rem;" id="C-10">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="C-10" data-seattype="R석" data-price="60000" value="C-10 R석">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 20.15rem; left: 29.5rem;" id="C-11">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="C-11" data-seattype="R석" data-price="60000" value="C-11 R석">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 20.15rem; left: 31.7rem;" id="C-12">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="C-12" data-seattype="R석" data-price="60000" value="C-12 R석">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 20.15rem; left: 33.9rem;" id="C-13">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="C-13" data-seattype="R석" data-price="60000" value="C-13 R석">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 20.15rem; left: 39.3rem;" id="C-14">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="C-14" data-seattype="R석" data-price="60000" value="C-14 R석">
													</label>
													<label class="select-seat position-absolute r-class" style="top: 20.15rem; left: 41.5rem;" id="C-15">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="C-15" data-seattype="R석" data-price="60000" value="C-15 R석">
													</label>
													<!-- D -->
													<label class="select-seat position-absolute s-class" style="top: 22.35rem; left: 4.6rem;" id="D-1">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="D-1" data-seattype="S석" data-price="50000" value="D-1 S석">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 22.35rem; left: 6.8rem;" id="D-2">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="D-2" data-seattype="S석" data-price="50000" value="D-2 S석">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 22.35rem; left: 12.2rem;" id="D-3">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="D-3" data-seattype="S석" data-price="50000" value="D-3 S석">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 22.35rem; left: 14.4rem;" id="D-4">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="D-4" data-seattype="S석" data-price="50000" value="D-4 S석">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 22.35rem; left: 16.5rem;" id="D-5">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="D-5" data-seattype="S석" data-price="50000" value="D-5 S석">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 22.35rem; left: 18.7rem;" id="D-6">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="D-6" data-seattype="S석" data-price="50000" value="D-6 S석">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 22.35rem; left: 20.9rem;" id="D-7">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="D-7" data-seattype="S석" data-price="50000" value="D-7 S석">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 22.35rem; left: 23.0rem;" id="D-8">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="D-8" data-seattype="S석" data-price="50000" value="D-8 S석">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 22.35rem; left: 25.2rem;" id="D-9">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="D-9" data-seattype="S석" data-price="50000" value="D-9 S석">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 22.35rem; left: 27.4rem;" id="D-10">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="D-10" data-seattype="S석" data-price="50000" value="D-10 S석">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 22.35rem; left: 29.5rem;" id="D-11">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="D-11" data-seattype="S석" data-price="50000" value="D-11 S석">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 22.35rem; left: 31.7rem;" id="D-12">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="D-12" data-seattype="S석" data-price="50000" value="D-12 S석">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 22.35rem; left: 33.9rem;" id="D-13">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="D-13" data-seattype="S석" data-price="50000" value="D-13 S석">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 22.35rem; left: 39.3rem;" id="D-14">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="D-14" data-seattype="S석" data-price="50000" value="D-14 S석">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 22.35rem; left: 41.5rem;" id="D-15">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="D-15" data-seattype="S석" data-price="50000" value="D-15 S석">
													</label>
													<!-- E -->
													<label class="select-seat position-absolute s-class" style="top: 24.55rem; left: 4.6rem;" id="E-1">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="E-1" data-seattype="S석" data-price="50000" value="E-1 S석">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 24.55rem; left: 6.8rem;" id="E-2">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="E-2" data-seattype="S석" data-price="50000" value="E-2 S석">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 24.55rem; left: 12.2rem;" id="E-3">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="E-3" data-seattype="S석" data-price="50000" value="E-3 S석">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 24.55rem; left: 14.4rem;" id="E-4">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="E-4" data-seattype="S석" data-price="50000" value="E-4 S석">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 24.55rem; left: 16.5rem;" id="E-5">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="E-5" data-seattype="S석" data-price="50000" value="E-5 S석">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 24.55rem; left: 18.7rem;" id="E-6">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="E-6" data-seattype="S석" data-price="50000" value="E-6 S석">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 24.55rem; left: 20.9rem;" id="E-7">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="E-7" data-seattype="S석" data-price="50000" value="E-7 S석">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 24.55rem; left: 23.0rem;" id="E-8">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="E-8" data-seattype="S석" data-price="50000" value="E-8 S석">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 24.55rem; left: 25.2rem;" id="E-9">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="E-9" data-seattype="S석" data-price="50000" value="E-9 S석">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 24.55rem; left: 27.4rem;" id="E-10">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="E-10" data-seattype="S석" data-price="50000" value="E-10 S석">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 24.55rem; left: 29.5rem;" id="E-11">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="E-11" data-seattype="S석" data-price="50000" value="E-11 S석">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 24.55rem; left: 31.7rem;" id="E-12">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="E-12" data-seattype="S석" data-price="50000" value="E-12 S석">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 24.55rem; left: 33.9rem;" id="E-13">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="E-13" data-seattype="S석" data-price="50000" value="E-13 S석">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 24.55rem; left: 39.3rem;" id="E-14">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="E-14" data-seattype="S석" data-price="50000" value="E-14 S석">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 24.55rem; left: 41.5rem;" id="E-15">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="E-15" data-seattype="S석" data-price="50000" value="E-15 S석">
													</label>
													<!-- F -->
													<label class="select-seat position-absolute s-class" style="top: 26.7rem; left: 4.6rem;" id="F-1">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="F-1" data-seattype="S석" data-price="50000" value="F-1 S석">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 26.7rem; left: 6.8rem;" id="F-2">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="F-2" data-seattype="S석" data-price="50000" value="F-2 S석">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 26.7rem; left: 12.2rem;" id="F-3">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="F-3" data-seattype="S석" data-price="50000" value="F-3 S석">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 26.7rem; left: 14.4rem;" id="F-4">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="F-4" data-seattype="S석" data-price="50000" value="F-4 S석">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 26.7rem; left: 16.5rem;" id="F-5">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="F-5" data-seattype="S석" data-price="50000" value="F-5 S석">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 26.7rem; left: 18.7rem;" id="F-6">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="F-6" data-seattype="S석" data-price="50000" value="F-6 S석">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 26.7rem; left: 20.9rem;" id="F-7">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="F-7" data-seattype="S석" data-price="50000" value="F-7 S석">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 26.7rem; left: 23.0rem;" id="F-8">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="F-8" data-seattype="S석" data-price="50000" value="F-8 S석">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 26.7rem; left: 25.2rem;" id="F-9">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="F-9" data-seattype="S석" data-price="50000" value="F-9 S석">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 26.7rem; left: 27.4rem;" id="F-10">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="F-10" data-seattype="S석" data-price="50000" value="F-10 S석">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 26.7rem; left: 29.5rem;" id="F-11">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="F-11" data-seattype="S석" data-price="50000" value="F-11 S석">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 26.7rem; left: 31.7rem;" id="F-12">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="F-12" data-seattype="S석" data-price="50000" value="F-12 S석">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 26.7rem; left: 33.9rem;" id="F-13">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="F-13" data-seattype="S석" data-price="50000" value="F-13 S석">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 26.7rem; left: 39.3rem;" id="F-14">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="F-14" data-seattype="S석" data-price="50000" value="F-14 S석">
													</label>
													<label class="select-seat position-absolute s-class" style="top: 26.7rem; left: 41.5rem;" id="F-15">
														<input type="checkbox" class="seat-checkbox" name="seatNo" data-seatno="F-15" data-seattype="S석" data-price="50000" value="F-15 S석">
													</label>
												</div>
											</div>
											
											<div class="col-4">
												<div class="card border p-3">
													<div class="row">
														<div class="col-12">
															<div class="h5 title mt-3 mb-3">좌석등급</div>
															<div class="card border mb-3 p-2">
																<c:if test="${prices.r != 0}">
																	<li class="list-group-item d-flex justify-content-between align-items-center pt-0">
																		<span class="h6 title mb-0" style="color:#7C68EE">R석</span>
																		<span class="fs-6 fw-bold p-2"><fmt:formatNumber value="${prices.r}" pattern="#,###" />원</span>
																	</li>
																</c:if>
																<c:if test="${prices.s != 0}">
																	<li class="list-group-item d-flex justify-content-between align-items-center pt-0">
																		<span class="h6 title mb-0" style="color:#1CA814">S석</span>
																		<span class="fs-6 fw-bold p-2"><fmt:formatNumber value="${prices.s}" pattern="#,###" />원</span>
																	</li>
																</c:if>
																<c:if test="${prices.a != 0}">
																	<li class="list-group-item d-flex justify-content-between align-items-center pt-0">
																		<span class="h6 title mb-0" style="color:#17B3FF">A석</span>
																		<span class="fs-6 fw-bold p-2"><fmt:formatNumber value="${prices.a}" pattern="#,###" />원</span>
																	</li>
																</c:if>
															</div>	
														</div>
														
														<div class="col-12">
															<div class="h5 title mt-3 mb-3">선택좌석</div>
															<div id="selected-seat"></div>
														</div>
														
														<div class="text-center title text-primary fs-3" id="totalPrice" val="">₩ 0</div>
													</div>
												</div>
											</div>
										</div>	
										<!-- Step 2 button -->
										<div class="row mt-4">
											<div class="text-start col-6">
												<a class="btn btn-info mb-0" href="${path}/conc-booking?conId=${conc.conId}&conHallId=${conc.conHallId}">이전 페이지</a>
											</div>
											<div class="text-end col-6">
												<button type="button" class="btn btn-warning next-btn mb-0" id="goto3" disabled="true">다음 페이지</button>
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
														<label class="form-label">이름</label><span class="text-danger">*</span>
														<div class="position-relative form-control-bg-light">
															<input type="text" class="form-control" maxlength="14" placeholder="" name="userName">
														</div>
													</div>
													<br>
													<!-- 전화번호 -->
													<div>
														<label class="form-label">전화번호</label><span class="text-danger">*</span>
														<div class="form-control-bg-light">
															<input type="text" class="form-control" maxlength="11" placeholder="- 없이 입력해주세요 ex. 01012341234" name="tel">
														</div>
													</div>
												</div>
											</div>
											<!-- 예약자 정보 끝 -->

											<div class="col-6">
												<div class="card border">
													<!-- Title -->
													<div class="card-header border-bottom">
														<div class="h4 title mb-0">${conc.genre} <${conc.conNm}></div>
													</div>

													<!-- Card body START -->
													<div class="card-body row">
														<div class="col-6">일시</div>
														<div class="col-6 text-end" id="submitCardTime">-</div>
														<div class="col-6">선택좌석</div>
														<div class="col-6 text-end" id="submitCardSeatInfo"></div>
													</div>
													<!-- Card body END -->

													<hr class="my-n1">

													<!-- 결제금액 -->
													<div class="card-body row h4 title text-black">
														<div class="col-6">결제금액</div>
														<div class="col-6 text-end" id="submitCardPrice">-</div>
													</div>

													<input type="hidden" name="item_name" value="${conc.conNm}"><br>
													<input type="hidden" name="total_amount" value="">
													<input type="hidden" name="quantity" value="1"><br>
											
													<button type="button" onclick="submitCheck();" class="btn btn-primary col-11 align-self-center mb-3">결제하기</button>
												</div>
											</div>
											<script type="text/javascript">
											function submitCheck(){
												var name = $('input[name="userName"]').val();
												var tel = $('input[name="tel"]').val();
												var isChecked = true;
												$('input[type="checkbox"][name="permit"]').each(function () {
													if (!$(this).is(':checked')) {
														isChecked = false;
														return;
													}
												});
												if (name == '' || tel == '' || !isChecked) {
													alert('필수입력사항을 확인해주세요.');
													return;
												}
												console.log('submitCheck called');
												payForm.total_amount.value = $('#totalPrice').val();
												payForm.submit();
												
											}
											</script>
											
											<div class="col-6 mt-4">
												<div class="h4 title">결제수단 선택</div>
												<!-- Select option -->
												<div class="">
													<form class="form-control-bg-light my-3">
														<select class="form-select js-choice">
															<option>카카오페이</option>
														</select>
													</form>
												</div>

												<div class="form-check my-2">
													<input class="form-check-input" type="checkbox" name="permit">
													<a onclick="window.open('permit.html', '_blank', 'width=800,height=600')" class="text-black-50 text-decoration-underline">
														취소/환불규정 동의<span class="text-danger">*</span>
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
											<button type="button" class="btn btn-info prev-btn mb-0">이전 페이지</button>
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

<script type="text/javascript">
$(document).ready(function () {
    $('#datePicker').on('input', function () {
        var selectedDate = new Date($(this).val());
        console.log('Selected date:', selectedDate);

        var requestData = JSON.stringify({
            "selectedDate": selectedDate,
        });

        $.ajax({
            url: '${path}/conc-getScheduleList',
            type: 'POST',
            contentType: 'application/json',
            data: requestData,
            success: function (resp) {
                console.log(resp);
                var target = $('#selectSchedule');
                var list = resp;
                var html = '';

                for (var i = 0; i < list.length; i++) {
                    var time = new Date(list[i].startTime);
                    var preStr = time.toLocaleDateString('ko-KR');
                    preStr = preStr.replaceAll('.', '').replaceAll(' ', '-');
                    var postStr = time.toLocaleTimeString('ko-KR', { hour: '2-digit', minute: '2-digit', hour12: false });
                    var fmtTime = preStr + ' ' + postStr;
                    html += '<div class="card border mb-3">' +
                                '<label class="card-label card area-card">' +
                                    '<input class="form-check-input card-radio" type="radio" name="time-select" value="' + fmtTime + '">' +
                                    '<div class="p-3 pb-0">' +
                                        '<div class="h4 title text-center">' + fmtTime + '</div>' +
                                        '<div class="row">' +
                                            '<p class="col text-center">' +
                                                '<span class="fs-6">R석 </span>' +
                                                '<span class="h6">' + list[i].r + '석</span>' +
                                            '</p>' +
                                            '<p class="col text-center">' +
                                                '<span class="fs-6">S석 </span>' +
                                                '<span class="h6">' + list[i].s + '석</span>' +
                                            '</p>' +
                                            '<p class="col text-center">' +
                                                '<span class="fs-6">A석 </span>' +
                                                '<span class="h6">' + list[i].a + '석</span>' +
                                            '</p>' +
                                        '</div>' +
                                    '</div>' +
                                '</label>' +
                            '</div>';
                }

                target.html(html);

                var selectedRadioCount = $('input[type="radio"]:checked').length;
        
                if (selectedRadioCount === 0) {
                    $('#seatsPage').prop('disabled', true);
                } else {
                    $('#seatsPage').prop('disabled', false);
                }

                $('input[type="radio"]').on('change', function () {
                    var selectedRadioCount = $('input[type="radio"]:checked').length;
            
                    if (selectedRadioCount === 0) {
                        $('#seatsPage').prop('disabled', true);
                    } else {
                        $('#seatsPage').prop('disabled', false);
                    }
                });
            },
            error: function (jqXHR, textStatus, errorThrown) {
            	alert('error!');
                console.log('jqXHR:', jqXHR);
                console.log('textStatus:', textStatus);
                console.log('errorThrown:', errorThrown);
            }
        });
    });

    $('#seatsPage').click(function () {
        var selectedDateTime = $('input[name="time-select"]:checked').val();
        var utcDate = new Date(selectedDateTime);
        var date = utcDate.toLocaleDateString('ko-KR');
        var time = utcDate.toLocaleTimeString('ko-KR', { hour: '2-digit', minute: '2-digit', hour12: false });
        console.log('Selected date:', date + ' ' + time);

        var requestData = JSON.stringify({
            "date": date,
            "time": time
        });

        $.ajax({
            url: '${path}/conc-bookedSeats',
            type: 'POST',
            contentType: 'application/json',
            data: requestData,
            success: function (resp) {
                $('.select-seat').css('display', 'block');
                for (var i = 0; i < resp.length; i++) {
                    var id = '#' + resp[i];
                    console.log(id);
                    $(id).css('display', 'none');
                }
                $('#submitCardTime').html(date + ' ' + time);
            },
            error: function (jqXHR, textStatus, errorThrown) {
                alert('error!');
                console.log('jqXHR:', jqXHR);
                console.log('textStatus:', textStatus);
                console.log('errorThrown:', errorThrown);
            }
        });
    });

    var totalPrice = 0;
    $('.seat-checkbox').change(function () {
        var seatNo = $(this).data('seatno');
        var seatType = $(this).data('seattype');
        var price = $(this).data('price');
        var targetId = '#' + seatNo + '-card';

        if ($(this).is(':checked')) {
            console.log('selected');

            $.ajax({
                success: function () {
                    console.log('append');
                    var target = $('#selected-seat');
                    var card = '';
                    card +=
                    '<div class="card border mb-3 p-2" id="' + seatNo +'-card">' +
                        '<li class="list-group-item d-flex justify-content-between align-items-center pt-0">' +
                            '<span class="fs-6 fw-bold p-2">좌석등급</span>' +
                            '<span class="h6 mb-0 fw-bold">' + seatType + '</span>' +
                        '</li>' +
                        '<li class="list-group-item d-flex justify-content-between align-items-center pt-0">' +
                            '<span class="fs-6 fw-bold p-2">좌석번호</span>' +
                            '<span class="h6 mb-0 fw-bold">' + seatNo + '</span>' +
                        '</li>' +
                    '</div>';
                    target.append(card);

                    totalPrice += price;
                    $('#totalPrice').html('₩ ' + totalPrice.toLocaleString('ko-KR'));
                    $('#totalPrice').val(totalPrice);
                    $('input[name="total_amount"]').val(totalPrice);
                    console.log($('#totalPrice').val());
                    $('#submitCardPrice').html('₩ ' + totalPrice.toLocaleString('ko-KR'));

                    var seatInfo = '';
                    seatInfo +=
                        '<div id ="' + seatType + seatNo + '">' +
                            seatType + ' ' + seatNo +
                        '</div>';
                    $('#submitCardSeatInfo').append(seatInfo);
                }
            });
        }
        if (!$(this).is(':checked')) {
            console.log('unselected');

            $.ajax({
                success: function () {
                    var target = $(targetId);

                    target.remove();

                    totalPrice -= price;
                    $('#totalPrice').html('₩ ' + totalPrice.toLocaleString('ko-KR'));
                    $('#totalPrice').val(totalPrice);
                    $('input[name="total_amount"]').val(totalPrice);
                    console.log($('#totalPrice').val());

                    var id = '#' + seatType + seatNo;
                    $(id).remove();
                }
            });
        }

        var selectedCheckCount = $('input[type="checkbox"]:checked').length;
        console.log(selectedCheckCount);
        
        if (selectedCheckCount == 0) {
            $('#goto3').prop('disabled', true);
            console.log('다음페이지 비활성화');
        } else {
            $('#goto3').prop('disabled', false);
            console.log('다음페이지 활성화');
        }
    });
});
</script>