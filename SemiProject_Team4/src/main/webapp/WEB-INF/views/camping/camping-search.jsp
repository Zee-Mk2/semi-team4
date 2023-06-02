<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!-- Plugins CSS -->
<link rel="stylesheet" type="text/css"
	href="${path}/resources/assets/vendor/font-awesome/css/all.min.css" />
<link rel="stylesheet" type="text/css"
	href="${path}/resources/assets/vendor/bootstrap-icons/bootstrap-icons.css" />
<link rel="stylesheet" type="text/css"
	href="${path}/resources/assets/vendor/tiny-slider/tiny-slider.css" />
<link rel="stylesheet" type="text/css"
	href="${path}/resources/assets/vendor/glightbox/css/glightbox.css" />
<link rel="stylesheet" type="text/css"
	href="${path}/resources/assets/vendor/choices/css/choices.min.css" />
<link rel="stylesheet" type="text/css"
	href="${path}/resources/assets/vendor/flatpickr/css/flatpickr.min.css" />
<link rel="stylesheet" type="text/css"
	href="${path}/resources/assets/vendor/nouislider/nouislider.css" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />



<!-- **************** MAIN CONTENT START **************** -->
<main>
	<!-- =======================
		Main Banner START -->
	<section class="pt-0">
		<!-- The slideshow/carousel -->
		<div class="carousel-inner">
			<div class="carousel-item active">
				<div class="p-4 p-sm-5"
					style="background-image: url(${path}/resources/assets/images/campsite/01.png); background-position: center center; background-repeat: no-repeat; background-size: cover; height: 600px">
					<div class="container">
						<div class="justify-content-between">
							<div class="pt-9 text-start ps-5">
								<div class="h1 text-white title">캠핑장 검색</div>
								<div class="h4 text-white mb-0 title">이름,지역,일정으로 캠핑장을
									검색해보세요</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="container position-relative">


			<!-- Search START -->
			<div class="row mt-n4 mt-sm-n9">
				<div class="col-11 mx-auto">
					<!-- Booking from START -->
					<div class="bg-mode shadow p-5 rounded-3">
						<!-- Main search START -->
						<form class="form-control-bg-transparent bg-mode rounded-3" action="${path}/camp-search" method="get" name="searchForm">
							<input type="hidden" name="page" value="1">
							<div class="row g-4 align-items-center">
								<div class="col-xl-10">
									<div class="row g-4">
										<!-- Location -->
										<div class="col-md-6 col-lg-4">
											<!-- Input field -->
											<div
												class="form-border-bottom form-control-transparent form-fs-lg">
												<c:set var="doNm" value="${param.doNm}"/>
												<select name="doNm" class="form-select js-choice z-index-99" data-search-enabled="true">
													<option value="">지역 선택</option>
													<option ${doNm == '서울시' ? 'selected' : ''}>서울시</option>
													<option ${doNm == '부산시' ? 'selected' : ''}>부산시</option>
													<option ${doNm == '대구시' ? 'selected' : ''}>대구시</option>
													<option ${doNm == '대전시' ? 'selected' : ''}>대전시</option>
													<option ${doNm == '광주시' ? 'selected' : ''}>광주시</option>
													<option ${doNm == '전라남도' ? 'selected' : ''}>전라남도</option>
													<option ${doNm == '전라북도' ? 'selected' : ''}>전라북도</option>
													<option ${doNm == '경상남도' ? 'selected' : ''}>경상남도</option>
													<option ${doNm == '경상북도' ? 'selected' : ''}>경상북도</option>
													<option ${doNm == '강원도' ? 'selected' : ''}>강원도</option>
													<option ${doNm == '제주도' ? 'selected' : ''}>제주도</option>
													<option ${doNm == '충청북도' ? 'selected' : ''}>충청북도</option>
													<option ${doNm == '충청남도' ? 'selected' : ''}>충청남도</option>
													<option ${doNm == '경기도' ? 'selected' : ''}>경기도</option>
													<option ${doNm == '인천시' ? 'selected' : ''}>인천시</option>
													<option ${doNm == '울산시' ? 'selected' : ''}>울산시</option>
													<option ${doNm == '세종시' ? 'selected' : ''}>세종시</option>
												</select>
											</div>
										</div>

										<!-- Check in -->
										<div class="col-md- col-lg-4">
											<!-- Input field -->
											<c:set var="terms" value="${param.terms}"/>
											<div class="form-border-bottom form-control-transparent form-fs-lg">
												<input name="terms" type="date" class="form-control flatpickr py-2" data-mode="range" data-date-format="m-d" placeholder="일정 선택">
											</div>
										</div>

										<!-- Keyword -->
										<div class="col-md-6 col-lg-4">
											<!-- Input field -->
											<div class="form-border-bottom form-control-transparent form-fs-lg">
												<c:set var="campNm" value="${param.campNm}"/>
												<input class="form-control border-0 shadow-0" type="text" name="campNm" placeholder="캠핑장 이름으로 검색" value="${param.campNm}"/>
											</div>
										</div>
									</div>
								</div>

								<!-- Button -->
								<div class="col-xl-2 pt-2">
									<div class="d-grid">
										<button class="btn btn-lg btn-dark" type="submit"><i class="fa-solid fa-search fs-5"></i></button>
									</div>
								</div>
								
								<!-- Collapse button -->
								<div class="d-grid mt-4">
									<input type="checkbox" class="btn-check" id="btn-check-soft" />
									<label class="btn btn-primary-soft btn-primary-check mb-0"
										for="btn-check-soft" data-bs-toggle="collapse"
										data-bs-target="#collapseExample"
										aria-controls="collapseExample"> <i
										class="bi fa-fe bi-sliders me-2"></i>상세 검색
									</label>
								</div>
		
								<div class="container">
									<div class="row">
										<div class="col-6 order-md-1">
											<!-- 가격대 -->
											<div class="form-control-bg-light form-size-lg">
												<label class="form-label mt-3">가격대</label>
												<div class="position-relative">
													<div class="noui-wrapper">
														<div class="d-flex justify-content-between">
															<input type="text" class="text-body input-with-range-min" />
															<input type="text" class="text-body input-with-range-max" />
														</div>
														<div class="noui-slider-range mt-2" data-range-min="10000"
															data-range-max="300000" data-range-selected-min="10000"
															data-range-selected-max="1000000"></div>
													</div>
												</div>
											</div>
		
											<!-- 테마 -->
											<div class="form-control-bg-light form-size-lg mt-4">
												<c:set var="location" value="${param.location}"/>
												<label class="form-label">테마</label>
												<select name="location" class="form-select js-choice">
													<option value="">선택 옵션</option>
													<option ${location == '세종시' ? 'selected' : ''}>해변</option>
													<option ${location == '산' ? 'selected' : ''}>산</option>
													<option ${location == '섬' ? 'selected' : ''}>섬</option>
													<option ${location == '숲' ? 'selected' : ''}>숲</option>
													<option ${location == '계곡' ? 'selected' : ''}>계곡</option>
													<option ${location == '강' ? 'selected' : ''}>강</option>
													<option ${location == '호수' ? 'selected' : ''}>호수</option>
													<option ${location == '도심' ? 'selected' : ''}>도심</option>
												</select>
											</div>
										</div>
		
										<div class="col-6 order-md-2">
											<!-- 주요 시설 -->
											<div class="form-control-bg-light form-size-lg">
												<c:set var="induType" value="${param.induType}"/>
												<label class="form-label mt-3">주요 시설</label>
												<select name="induType" class="form-select js-choice">
													<option value="">선택 옵션</option>
													<option ${induType == '일반야영장' ? 'selected' : ''}>일반야영장</option>
													<option ${induType == '카라반' ? 'selected' : ''}>카라반</option>
													<option ${induType == '글램핑' ? 'selected' : ''}>글램핑</option>
													<option ${induType == '자동차야영장' ? 'selected' : ''}>자동차야영장</option>
												</select>
											</div>
		
											<!-- 동물 동반 가능 여부 -->
											<div class="form-control-bg-light form-size-lg mt-3">
												<c:set var="animalEntry" value="${param.animalEntry}"/>
												<label class="form-label">반려동물 동반</label>
												<select name="animalEntry" class="form-select js-choice">
													<option value="">선택 옵션</option>
													<option ${animalEntry == '가능' ? 'selected' : ''}>가능</option>
													<option ${animalEntry == '불가능' ? 'selected' : ''}>불가능</option>
												</select>
											</div>
										</div>
									</div>
								</div>
							</div>
						</form>
						<!-- Main search END -->
					</div>
					<!-- Advance filter END -->
				</div>
				<!-- Booking from END -->
			</div>
		</div>
		<!-- Search END -->
		</div>
	</section>
	<!-- =======================
		Main Banner END -->

	<!-- =======================
		Tour grid START -->
	<section class="pt-0">
		<div class="container">
			<!-- Filter and content START -->
			<div class="row g-4 align-items-center justify-content-between mb-4">
				<!-- Content -->
				<div class="col-12 col-xl-8">
					<h5 class="mb-0">총 ${numOfResult}개의 결과가 검색되었습니다.</h5>
				</div>

				<!-- Select option -->
				<div class="col-xl-2">
					<form class="form-control-bg-light">
						<select class="form-select js-choice">
							<option name="orderBy" value="">정렬 기준</option>
							<option selected>추천순</option>
							<option>조회순</option>
							<option>별점순</option>
						</select>
					</form>
				</div>
			</div>
			<!-- Filter and content END -->

			<div class="row g-4" id="packages">
				<c:forEach var="item" items="${list}">
					<div class="col-4 col-md-6 col-xl-4">
						<!-- Card item START -->
						<div class="w-100 h-100 hover-animate">
							<div class="card card-img-scale h-100 border-0 shadow">
								<!-- Card content -->
								<div class="card-img-top overflow-hidden">
									<!-- Card image -->
									<img class="img-fluid" src="${item.img}" />
									<!-- Overlay -->
									<div class="card-img-overlay-top">
										<div class="d-flex justify-content-between">
											<span class="badge text-bg-dark mt-2" style="height: 1.5rem">${item.location}</span>
											<span class="mt-n2"> <img
												src="${path}/resources/assets/images/amcharts_weather_icons_1.0.0/animated/cloudy-day-1.svg">
											</span>
										</div>

										<!-- 하트 -->
										<a class="btn ms-n2 heart-btn"
											style="position: absolute; left: 0.5rem; top: 11rem;"> <i
											class="far fa-heart fs-5 ms-n2 heart-icon"
											style="color: red;"></i>
										</a>
									</div>
								</div>
								<div class="card-body d-flex align-items-center">
									<div class="w-100">
										<h5 class="card-title text-decoration-none text-dark">
											<a href="${path}/camp-detail" class="stretched-link title">
												${item.campNm} </a>
										</h5>
										${item.doNm} ${item.sigunguNm}
										<div class="d-flex card-subtitle mb-n7 pt-2">
											<p class="card-text col-7">
												<span class="h5 text-secondary">₩ 150,000 ~</span>
											</p>
											<p class="flex-shrink-1 mt-1 card-stars text-end col-5"
												style="font-size: 0.7rem;">
												<i class="fa fa-star text-warning"></i> <i
													class="fa fa-star text-warning"></i> <i
													class="fa fa-star text-warning"></i> <i
													class="fa fa-star-half-alt text-warning"></i> <i
													class="far fa-star text-warning"></i>
											</p>
										</div>
									</div>
								</div>
								<!-- Card body -->
								<div class="card-body">
									<!-- Add card body content -->
								</div>
							</div>
						</div>
						<!-- Card item END -->
					</div>
				</c:forEach>


			<!-- Pagination -->
			<div class="row">
				<div class="col-12">
					<nav class="mt-4 d-flex justify-content-center"
						aria-label="navigation">
						<ul class="pagination pagination-primary-soft d-inline-block d-md-flex rounded mb-0">
							<li class="page-item mb-0" style="margin-top: 0.4rem !important;">
								<a class="page-link" href="javascript:movePage(1)" tabindex="-1"><i class="fas fa-angle-double-left"></i></a>
							</li>
							<li class="page-item mb-0" style="margin-top: 0.4rem !important;">
								<a class="page-link" href="javascript:movePage(${pageInfo.prevPage})" tabindex="-1"><i class="fa-solid fa-angle-left"></i></a>
							</li>
							<c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" varStatus="status" step="1">
								<c:if test="${status.current == pageInfo.currentPage}">
									<li class="page-item mb-0 active">
										<a class="page-link" href="javascript:movePage(${status.current})">${status.current}</a>
									</li>
								</c:if>
								<c:if test="${status.current != pageInfo.currentPage}">
									<li class="page-item mb-0">
										<a class="page-link" href="javascript:movePage(${status.current})">${status.current}</a>
									</li>
								</c:if>
							</c:forEach>
							<li class="page-item mb-0" style="margin-top: 0.4rem !important;">
								<a class="page-link" href="javascript:movePage(${pageInfo.nextPage})"><i class="fa-solid fa-angle-right"></i></a>
							</li>
							<li class="page-item mb-0" style="margin-top: 0.4rem !important;">
								<a class="page-link" href="javascript:movePage(${pageInfo.maxPage})" tabindex="-1"><i class="fas fa-angle-double-right"></i></a>
							</li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!-- =======================
		Tour grid END -->
</main>
<!-- **************** MAIN CONTENT END **************** -->

<!-- Vendors -->
<script src="${path}/resources/assets/vendor/tiny-slider/tiny-slider.js"></script>
<script src="${path}/resources/assets/vendor/glightbox/js/glightbox.js"></script>
<script src="${path}/resources/assets/vendor/choices/js/choices.min.js"></script>
<script src="${path}/resources/assets/vendor/flatpickr/js/flatpickr.min.js"></script>
<script src="${path}/resources/assets/vendor/nouislider/nouislider.min.js"></script>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />

<script type="text/javascript">
	function movePage(page){
		searchForm.page.value = page;
		searchForm.submit();
	}
</script>