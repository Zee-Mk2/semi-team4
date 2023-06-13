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

<!-- Vendors -->
<script src="${path}/resources/assets/vendor/tiny-slider/tiny-slider.js"></script>
<script src="${path}/resources/assets/vendor/glightbox/js/glightbox.js"></script>
<script src="${path}/resources/assets/vendor/choices/js/choices.min.js"></script>
<script src="${path}/resources/assets/vendor/flatpickr/ko.js"></script>
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
		<div class="carousel-inner" style="background-color: rgb(255, 242, 217);">
			<div class="carousel-item active">
				<div class="p-4" style="background-position: center center; background-repeat: no-repeat; background-size: cover; height: 600px">
					<div class="container">
						<div class="row">
						  <div class="col-5 text-center h-100 mt-2">
							<img src="https://www.kopis.or.kr/upload/pfmPoster/PF_PF217913_230504_124757.gif" style="max-width: 90%; height: 90%;">
						  </div>
						  <div class="col-7">
							<div class="justify-content-between">
							  <div class="pt-8 text-start">
								<div class="h3 text-orange title">지금 부산에서 뜨는 무용 공연!</div>
								<div class="h1 text-dark title">돈키호테</div>
								<div class="h5 text-dark mb-0 title">
								  부산시민회관 대극장
								  <a href="${path}/conc-detail?conId=PF217913" class="btn btn-orange mx-3 text-white">예매하기</a>
								</div>
								<div class="h5 text-dark mb-0 title">2023.09.16(토) ~ 2023.09.17(일)</div>
							  </div>
							</div>
						  </div>
						</div>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<div class="p-4" style="background-position: center center; background-repeat: no-repeat; background-size: cover; height: 600px">
					<div class="container">
						<div class="row">
						  <div class="col-5 text-center h-100 mt-2">
							<img src="https://www.kopis.or.kr/upload/pfmPoster/PF_PF218950_230523_112032.gif" style="max-width: 90%; height: 90%;">
						  </div>
						  <div class="col-7">
							<div class="justify-content-between">
							  <div class="pt-7 text-start">
								<div class="h3 text-orange title">감동과 열정이 넘치는 뜨거운 스테이지!</div>
								<div class="h1 text-dark title">이승윤 전국투어 콘서트: DOCKING [서울 앵콜]</div>
								<div class="h5 text-dark mb-0 title">
								  	올림픽공원 (올림픽홀)
								  <a href="${path}/conc-detail?conId=PF218950" class="btn btn-orange mx-3 text-white">예매하기</a>
								</div>
								<div class="h5 text-dark mb-0 title">2023.07.01(토) ~ 2023.07.02(일)</div>
							  </div>
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
				<form class="bg-mode shadow rounded-5 px-3 py-1" action="${path}/conc-search" method="get">
					<div class="row g-4 align-items-center">
						<div class="col-xl-11">
							<div class="row g-4">
								<!-- Location -->
								<div class="col-md-6 col-lg-3">
									<!-- Input field -->
									<div class="form-border-bottom form-control-transparent form-fs-lg" style="height: 85%;">
										<select class="form-select js-choice" data-search-enabled="true" name="searchType">
												<option value="concKeyword" ${param.searchType == 'concKeyword' || param.searchType == '' || param.searcyType == null ? 'selected' : ''}>공연 이름으로 검색</option>
												<option value="hallKeyword" ${param.searchType == 'hallKeyword' ? 'selected' : ''}>공연장 이름으로 검색</option>
										</select>
									</div>
								</div>

								<!-- Check in -->
								<div class="col-md-6 col-lg-3">
									<!-- Date input -->
									<div class="form-border-bottom form-control-transparent form-fs-lg">
										<input id="datePicker" type="text" class="form-control py-2" data-date-format="m-d" placeholder="예매 일정" name="reservDate">
									</div>
								    <script>
								        flatpickr("#datePicker", {
								        	locale: Korean,
								        });
								    </script>
								</div>

								<!-- Guest -->
								<div class="col-md-6 col-lg-6">
									<!-- Input field -->
									<div class="form-border-bottom form-control-transparent form-fs-lg">
										<input class="form-control border-0 shadow-0" type="text" name="keyword" placeholder="키워드">
									</div>
								</div>
							</div>
						</div>

						<!-- Button -->
						<div class="col-lg-1">
							<div class="d-grid">
								<button type="submit" class="btn btn-lg mb-n1">
									<i class="fa-solid fa-search fs-4"></i>
								</button>
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
			<a href="${path}/test.html">
				<div class="title">
					<span class="mb-0 text-secondary fs-2">테마별 BEST 공연</span>
					<span class="mb-0 px-3 text-info fs-4">이번 주 가장 핫한 공연은?</span>
				</div>
			</a>
		</div>

		<div class="row g-4 mb-5" id="packages">
			<c:forEach var="item" items="${conBestList}">
				<div style="width: 20%;">
					<!-- place item-->
					<div class="w-100 h-100">
						<div class="card card-img-scale h-100 border-0 shadow">
							<div class="card-img-top overflow-hidden" style="height: 17.5rem">
								<img class="img-fluid" src="${item.posterImg}" />
								<div class="card-img-overlay-top">
									<div class="d-flex justify-content-between">
										<span class="badge text-bg-orange mt-2" style="height: 1.5rem">${item.genre}</span>
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
											${item.conNm}
										</a>
									</h5>
									<div class="h6 text-body" style="font-size: 14px;">
										<fmt:formatDate value="${item.startDate}" pattern="yyyy.MM.dd"/> ~ <fmt:formatDate value="${item.endDate}" pattern="yyyy.MM.dd"/>
									</div>
									<div class="d-flex card-subtitle mb-n1">
										<p class="card-text text-truncate">
											<span class="h6 text-body">${item.conHallNm}</span>
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

<!-- 내 주변 공연장 시작 -->
<section class="pt-0 pt-md-5 bg-light" style="background-image: url(${path}/resources/assets/images/bg/bg01.png); height: 550px;">
	
	<div class="container position-relative">
		<a href="${path}/conc-nearby">
			<div class="text-center pb-3 title h2 text-white">내 주변 공연장</div>
		</a>

		<div class="row g-4 mb-n7">
			<!-- 이달의픽 카드 1 -->
			<div class="col-4">
				<!-- place item-->
				<div class="w-100 h-100">
					<div class="card card-img-scale w-100 h-100 border-0 shadow">
						<div class="card-img-top overflow-hidden">
							<img class="img-fluid" src="https://www.doosanartcenter.com/images/content/img-intro-area1.jpg">
						</div>
						<div class="card-body d-flex align-items-center">
							<div class="w-100">
								<h5 class="card-title text-decoration-none text-dark">
									<a href="${path}/test.html" class="stretched-link title">
										광양시문화예술회관
									</a>
								</h5>
								전남 광양시 / 1996년 개관
								<div class="fw-bold text-black text-end">
									<a href="${path}/test.html"><i class="fas fa-paper-plane"></i> 홈페이지 바로가기</a>
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
							<img class="img-fluid" src="https://auditorium.kr/wp-content/uploads/2020/01/22_2020%EB%85%84-%ED%95%B4%EC%99%B8-%EC%A3%BC%EC%9A%94-%EA%B3%B5%EC%97%B0%EC%9E%A5-%EC%83%81%EB%B0%98%EA%B8%B0-%EA%B3%B5%EC%97%B0-%EC%9D%BC%EC%A0%95-%EC%B4%9D%EC%A0%95%EB%A6%AC-3-4-1024x907.jpg" />
						</div>
						<div class="card-body d-flex align-items-center">
							<div class="w-100">
								<h5 class="card-title text-decoration-none text-dark">
									<a href="${path}/test.html" class="stretched-link title">
										광양커뮤니티센터
									</a>
								</h5>
								전남 광양시 / 2001년 개관
								<div class="fw-bold text-black text-end">
									<a href="${path}/test.html"><i class="fas fa-paper-plane"></i> 홈페이지 바로가기</a>
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
							<img class="img-fluid" src="https://www.sejongpac.or.kr/cmmn/file/imageSrc.do?fileStreCours=4a41d05067da9407e684ceabd772c74d&streFileNm=e1ff329cb8e226ee4bdc31dfaa4c1ebc24078277cccf491c8dad44ed96e373b4" />
						</div>
						<div class="card-body d-flex align-items-center">
							<div class="w-100">
								<h5 class="card-title text-decoration-none text-dark">
									<a href="${path}/test.html" class="stretched-link title">
										순천문화예술회관
									</a>
								</h5>
								전남 순천시 / 1993년 개관
								<div class="fw-bold text-end">
									<a href="${path}/test.html"><i class="fas fa-paper-plane"></i> 홈페이지 바로가기</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- 내 주변 공연장 끝 -->

<!-- 공연 베스트 리뷰 시작 -->
<section>
	<div class="container">
		<!-- Title -->
		<a href="${path}/board-review?boardCat=review&boardTag=conc" style="z-index: 99; height: 5rem;">
			<div class="title mb-4">
				<span class="text-secondary fs-2">공연 BEST 후기</span>
				<span class="px-3 text-info fs-4">이 공연 어땠어요? 생생하고 솔직한 후기만 모아서!</span>
			</div>
		</a>

		<div class="row">

			<c:forEach var="item" items="${reviewList}">
			<div class="col-4">
				<!-- place item START -->
				<div class="w-100 h-100" onmouseover="showOverlay(this)" onmouseout="hideOverlay(this)">
					<div class="card card-img-scale h-100 border-0 shadow">
						<div class="card-img-top overflow-hidden">
							<div class="overlay overflow-hidden p-4 card">
								<a href="${path}/board-detail" class="stretched-link">
									<div class="overlay-content text-white">
										<div class="h4 text-white title">${item.conNm}</div>
										<div>${item.conHallNm}</div>
									</div>
								</a>
							</div>
							<img class="img-fluid" src="${path}/resources/upload/board/${item.boardReFileNm}"/>
						</div>
						<div class="card-body d-flex align-items-center">
							<div class="w-100">
								<h5 class="card-title text-decoration-none text-dark">
									${item.boardTitle}
								</h5>
								${item.boardContent}
								<div class="d-flex">
									<span class="d-flex align-items-center mt-2 col-7" href="${path}/board-detail?boardCat=review&boardTag=camp&bno=${item.bno}">
										<!-- Avatar -->
										<div class="avatar me-3" style="width: 2rem; height: 2rem;">
											<img class="avatar-img rounded-circle shadow" src="${path}/resources/upload/profile/${item.reFileNm}" alt="avatar">
										</div>
										<div class="fw-bold text-black">
										${item.name}
									</div>
									</span>
									<span class="col-5 text-end mt-3">
								        <div class="review-rating ${item.bno}">
								            <span class="star"><i class="far fa-star text-warning"></i></span>
								            <span class="star"><i class="far fa-star text-warning"></i></span>
								            <span class="star"><i class="far fa-star text-warning"></i></span>
								            <span class="star"><i class="far fa-star text-warning"></i></span>
								            <span class="star"><i class="far fa-star text-warning"></i></span>
									        <input type="hidden" name="rating" value="${item.rating}">
								            <script>
										        $(document).ready(function() {
										            var intRating = parseInt($('.${item.bno} input[name="rating"]').val());
										
										            var starIcons = $('.review-rating.${item.bno} .star i');
										            var i;
										            for (i = 0; i < intRating; i++) {
										                $(starIcons[i]).removeClass('far').addClass('fas');
										            }
										        });
										    </script>
										</div>
									</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- place item END -->
			</div>
			</c:forEach>

		</div>
	</div>
</section>
<!-- 공연 베스트 리뷰 끝 -->

<!-- 자유게시판 / 광고 -->
<section>
	<div class="container">
		<div class="row g-6 nav">
			<!-- 자유게시판 시작 -->
			<span class="col-5">
				<!-- Title -->
				<a href="${path}/board-free?boardCat=free&boardTag=conc">
					<div class="title mb-1">
						<span class="mb-0 text-secondary fs-2">자유게시판</span>
					</div>
				</a>

				<!-- 자유게시판 게시글 목록 -->
				<ul class="nav flex-column text-info">
					<c:forEach var="item" items="${freeList}">
					<li class="nav-item">
						<a class="nav-link py-1" href="${path}/board-detail?boardCat=free&bno=${item.bno}">${item.boardTitle}
							<span class="ps-2 text-black-50" style="font-size: 0.9rem;"><fmt:formatDate value="${item.boardCreateDate}" pattern="MM-dd hh:mm" /></span>
						</a>
					</li>
					</c:forEach>
				</ul>
			</span>
			<!-- 자유게시판 끝 -->

			<!-- 광고 시작 -->
			<span class="col-7">
				<a href="${path}/conc-detail?conId=PF218968">
					<img src="http://ticketimage.interpark.com/TCMS4/Main/202304/MainVisual_f5681384-0bec-4a52-89a7-b87187341ca1.jpg" class="w-100 my-3 border-radius" style="border-radius: 0.5rem;"/>
				</a>
				<a href="${path}/conc-detail?conId=PF219004">
					<img src="http://ticketimage.interpark.com/TCMS4/Main/202305/MainVisual_6cdbe0db-d513-4a94-9101-2dc2c8c4fba3.jpg" class="w-100 my-3 border-radius" style="border-radius: 0.5rem;"/>
				</a>
			</span>
			<!-- 광고 끝 -->
		</div>
	</div>
</section>
<!-- 자유게시판 / 광고 -->

</main>
<!-- **************** MAIN CONTENT END **************** -->

<jsp:include page="/WEB-INF/views/common/concert-footer.jsp"/>