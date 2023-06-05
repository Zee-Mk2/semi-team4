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

<jsp:include page="/WEB-INF/views/common/concert-header.jsp"/>
<script src="http://code.jquery.com/jquery-latest.js"></script>

<main>
	<!-- =======================
		Main Banner START -->
	<section class="pt-0">
		<!-- The slideshow/carousel -->
		<div class="carousel-inner">
			<div class="carousel-item active">
				<div class="p-4 p-sm-5"
					style="background-image: url(${path}/resources/assets/images/bg/salon.jpg); background-position: center center; background-repeat: no-repeat; background-size: cover; height: 600px">
					<div class="container">
						<div class="justify-content-between">
							<div class="pt-9 text-start ps-5">
								<div class="h1 text-white title">공연 검색</div>
								<div class="h4 text-white mb-0 title">이름,지역,일정으로 공연을
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
						<form class="form-control-bg-transparent bg-mode rounded-3" name="searchForm">
							<input type="hidden" name="page" value="1">
							<div class="row g-4 align-items-center">
								<div class="col-xl-10">
									<div class="row g-4">
										<!-- Location -->
										<div class="col-md-6 col-lg-4">
											<!-- Input field -->
											<div
												class="form-border-bottom form-control-transparent form-fs-lg">
												<c:set var="searchType" value="${param.searchType}"/>
												<select class="form-select js-choice" name="searchType"
													data-search-enabled="true">
													<option value="concKeyword" ${param.searchType == 'concKeyword' || param.searchType == '' || param.searcyType == null ? 'selected' : ''}>공연 이름으로 검색</option>
													<option value="hallKeyword" ${param.searchType == 'hallKeyword' ? 'selected' : ''}>공연장 이름으로 검색</option>
												</select>
											</div>
										</div>

										<!-- Check in -->
										<div class="col-md- col-lg-4">
											<!-- Input field -->
											<div
												class="form-border-bottom form-control-transparent form-fs-lg">
												<input type="date" class="form-control flatpickr py-2" name="reservDate" value="${param.reservDate}"
													data-date-format="Y-m-d" placeholder="예매일 선택">
											</div>
										</div>

										<!-- Guest -->
										<div class="col-md-6 col-lg-4">
											<!-- Input field -->
											<div
												class="form-border-bottom form-control-transparent form-fs-lg">
												<input class="form-control border-0 shadow-0" type="text" value="${param.keyword}"
													name="keyword" placeholder="키워드 입력" />
											</div>
										</div>
									</div>
								</div>

								<!-- Button -->
								<div class="col-xl-2 pt-2">
									<div class="d-grid">
										<button type="submit" class="btn btn-lg btn-dark"><i
											class="fa-solid fa-search fs-5"></i></button>
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
	
								<!-- Advance filter START -->
								<div class="row">
									<!-- nouislider item -->
									<div class="col-6 mt-3">
										<label class="form-label">가격대</label>
										<div class="position-relative">
											<div class="noui-wrapper me-3">
												<div class="d-flex justify-content-between">
													<input type="text" class="text-body input-with-range-min" name="min" value="${param.min}"/>
													<input type="text" class="text-body input-with-range-max" name="max" value="${param.max}"/>
												</div>
												<div class="noui-slider-range mt-2" data-range-min="0"
													data-range-max="300000" data-range-selected-min="0"
													data-range-selected-max="300000"></div>
											</div>
										</div>
									</div>
		
									<!-- Select item -->
									<div class="col-6 mt-3">
										<div class="form-control-bg-light form-size-lg">
											<label class="form-label">장르</label>
											<select class="form-select js-choice" name="genre">
												<option value="">선택 옵션</option>
												<option ${param.genre == '연극' ? 'selected' : ''}>연극</option>
												<option ${param.genre == '뮤지컬' ? 'selected' : ''}>뮤지컬</option>
												<option ${param.genre == '클래식' ? 'selected' : ''}>클래식</option>
												<option ${param.genre == '국악' ? 'selected' : ''}>국악</option>
												<option ${param.genre == '대중음악' ? 'selected' : ''}>대중음악</option>
												<option ${param.genre == '무용' ? 'selected' : ''}>무용</option>
												<option ${param.genre == '대중무용' ? 'selected' : ''}>대중무용</option>
												<option ${param.genre == '서커스/마술' ? 'selected' : ''}>서커스/마술</option>
												<option ${param.genre == '복합' ? 'selected' : ''}>복합</option>
												<option ${param.genre == '아동' ? 'selected' : ''}>아동</option>
											</select>
										</div>
									</div>
									<div class="col-6 mt-3">
										<div class="form-control-bg-light form-size-lg">
											<label class="form-label">관람연령</label>
											<select class="form-select js-choice" name="viewAge">
												<option value="">선택 옵션</option>
												<option value="0" ${param.viewAge == 0 ? 'selected' : ''}>전체 관람가</option>
												<option value="7" ${param.viewAge == 7 ? 'selected' : ''}>만 7세 이상</option>
												<option value="12" ${param.viewAge == 12 ? 'selected' : ''}>만 12세 이상</option>
												<option value="15" ${param.viewAge == 15 ? 'selected' : ''}>만 15세 이상</option>
											</select>
										</div>
									</div>
									<div class="col-6 mt-3">
										<div class="form-control-bg-light form-size-lg">
											<label class="form-label">공연 상태</label>
											<select class="form-select js-choice" name="conState">
												<option value="">선택 옵션</option>
												<option ${param.conState == '공연예정' ? 'selected' : ''}>공연예정</option>
												<option ${param.conState == '공연중' ? 'selected' : ''}>공연중</option>
												<option ${param.conState == '공연완료' ? 'selected' : ''}>공연완료</option>
												<option ${param.conState == '오픈런' ? 'selected' : ''}>오픈런</option>
												<option ${param.conState == '리미티드런' ? 'selected' : ''}>리미티드런</option>
												<option ${param.conState == '마감임박' ? 'selected' : ''}>마감임박</option>
											</select>
										</div>
									</div>
								</div>
								<!-- Advance filter END -->
							</div>
						</form>
						<!-- Main search END -->
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
							<option value="">추천 많은 순</option>
							<option>인기순</option>
							<option>별점순</option>
						</select>
					</form>
				</div>
			</div>
			<!-- Filter and content END -->

			<div class="row g-4" id="packages">

				<c:forEach var="item" items="${items}">
					<!-- Card item START -->
					<div class="col-3">
						<!-- place item-->
						<div class="w-100 h-100 hover-animate">
							<div class="card card-img-scale h-100 border-0 shadow">
								<div class="card-img-top overflow-hidden position-relative"
									style="height: 24rem;">
									<img class="img-fluid"
										src="${item.posterImg}" />
									<div class="card-img-overlay-top">
										<div class="d-flex justify-content-between">
											<span class="badge text-bg-dark mt-2" style="height: 1.5rem">${item.genre}</span>
										</div>
									</div>
								</div>
								<!-- 하트 -->
								<a class="btn heart-btn mx-2 mt-n5" data-conid="${item.conId}">
									<c:if test="${sessionScope.loginMember != null}">
										<c:if test="${bookmarks[item.conId] != 1}">
											<i class="far fa-heart fs-5 ms-n2 heart-icon concert" style="color: red;"></i>
										</c:if>
										<c:if test="${bookmarks[item.conId] == 1}">
											<i class="fas fa-heart fs-5 ms-n2 heart-icon concert" style="color: red;"></i>
										</c:if>
									</c:if>
								</a>
								<div class="card-body d-flex align-items-center">
									<div class="w-100">
										<h5 class="card-title text-decoration-none text-dark">
											<a href="${path}/conc-detail?conId=${item.conId}" class="stretched-link title">
												${item.conNm} </a>
										</h5>
										<div class="overflow-ellipsis" style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">${item.conHallNm}</div>
										<div class="my-1"><fmt:formatDate value="${item.startDate}" pattern="yyyy.MM.dd"/> ~ <fmt:formatDate value="${item.endDate}" pattern="yyyy.MM.dd"/></div>
										<div class="d-flex card-subtitle mb-n4 pt-2">
											<p class="card-text col-7">
												<c:if test="${item.minPrice != 0}">
													<span class="h5 text-secondary">₩ <fmt:formatNumber value="${item.minPrice}" pattern="#,###" /> ~</span>
												</c:if>
												<c:if test="${item.minPrice == 0}">
													<span class="h5 text-secondary">전석무료</span>
												</c:if>
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
							</div>
						</div>
					</div>
					<!-- Card item END -->
				</c:forEach>
			</div>
			<!-- Row END -->

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

<!-- Vendors -->
<script src="${path}/resources/assets/vendor/tiny-slider/tiny-slider.js"></script>
<script src="${path}/resources/assets/vendor/glightbox/js/glightbox.js"></script>
<script src="${path}/resources/assets/vendor/choices/js/choices.min.js"></script>
<script
	src="${path}/resources/assets/vendor/flatpickr/js/flatpickr.min.js"></script>
<script
	src="${path}/resources/assets/vendor/nouislider/nouislider.min.js"></script>

<jsp:include page="/WEB-INF/views/common/concert-footer.jsp"/>


<script type="text/javascript">
	function movePage(page){
		searchForm.page.value = page;
		searchForm.submit();
	}
</script>