
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>


<!-- Plugins CSS -->
<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/font-awesome/css/all.min.css">
<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/bootstrap-icons/bootstrap-icons.css">
<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/tiny-slider/tiny-slider.css">
<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/glightbox/css/glightbox.css">
<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/choices/css/choices.min.css">
<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/flatpickr/css/flatpickr.min.css">

<jsp:include page="/WEB-INF/views/common/camping-header.jsp"/>

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
									<a href="${path}/camp-detail?contentId=${item.contentID}" class="btn btn-primary mx-3 text-white">상세보기</a>
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
										<a href="${path}/camp-detail?contentId=${item.contentID}" class="btn btn-primary mx-3 text-white">상세보기</a>
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
	</div>
	<!-- 카로셀 끝 -->

	<div class="container position-relative">

		<!-- Search START -->
		<div class="col-12 mt-n8 pb-5">
				<!-- Booking from START -->
				<form class="bg-mode shadow rounded-5 px-3 py-1" action="${path}/camp-search" method="get">
					<input type="hidden" name="page" value="1">
					<div class="row g-4 align-items-center">
						<div class="col-xl-11">
							<div class="row g-4">
								<!-- Location -->
								<div class="col-md-6 col-lg-3">
									<!-- Input field -->
									<div class="form-border-bottom form-control-transparent form-fs-lg">
										<select class="form-select js-choice" data-search-enabled="true" name="doNm">
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
								<div class="col-md-6 col-lg-3">
									<div class="form-border-bottom form-control-transparent form-fs-lg">
										<input id="datePicker" type="text" class="form-control" data-mode="range" data-date-format="m-d" placeholder="일정 선택">
									</div>
								    <script>
								        flatpickr("#datePicker", {
								        	locale: Korean,
								        });
								    </script>
								</div>

								<!-- 키워드 -->
								<div class="col-md-6 col-lg-6">
									<!-- Input field -->
									<div class="form-border-bottom form-control-transparent form-fs-lg">
										<input class="form-control border-0 shadow-0" type="text" name="campNm" placeholder="캠핑장 이름으로 검색">
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
							<a class="btn heart-btn mx-2 mt-n5" data-contentid="${item.contentID}">
								<c:if test="${sessionScope.loginMember != null}">
									<c:if test="${bookmarks[item.contentID] != 1}">
										<i class="far fa-heart fs-5 ms-n2 heart-icon camp" style="color: red;"></i>
									</c:if>
									<c:if test="${bookmarks[item.contentID] == 1}">
										<i class="fas fa-heart fs-5 ms-n2 heart-icon camp" style="color: red;"></i>
									</c:if>
								</c:if>
							</a>
							<div class="card-body d-flex align-items-center">
								<div class="w-100">
									<h5 class="card-title text-decoration-none text-dark">
										<a href="${path}/camp-detail?contentId=${item.contentID}" class="stretched-link title">
											${item.campNm}
										</a>
									</h5>
									${item.doNm} ${item.sigunguNm}
									<div class="d-flex card-subtitle mb-n4 pt-2">
										<p class="card-text col-7">
											<span class="h5 text-secondary">₩ 20,000 ~</span>
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
		<a href="${path}/board-info?boardCat=info&boardTag=camp">
			<div class="text-center pb-3 title h2">캠핑정보 이달의 Pick!</div>
		</a>

		<div class="row g-4 mb-n8">
		<!-- 이달의픽 카드 1 -->
			<c:forEach var="item" items="${pickList}">
			 <div class="col-6">
                <!-- place item-->
                <div class="w-100 h-75">
                    <div class="card card-img-scale h-100 border-0 shadow">
                        <div class="card-img-top overflow-hidden">
                            <img class="img-fluid card-img-scale-wrapper" src="${path}/resources/upload/board/${item.boardReFileNm}" />
                            <div class="card-img-overlay-top">
							<div class="d-flex justify-content-between">
								<span class="badge ${item.boardTag eq 'camp' ? 'text-bg-info' : 'text-bg-warning'} text-light" style="height: 1.5rem">
								<c:choose>
									<c:when test="${item.boardTag eq 'camp'}">
									캠핑
									</c:when>
									<c:when test="${item.boardTag eq 'conc'}">
									공연
									</c:when>
								</c:choose>
								</span>
							</div>
						</div>
                        </div>
                        <div class="card-body d-flex align-items-center">
                            <div class="w-100">
                                <h5 class="card-title text-decoration-none text-dark">
                                    <a href="${path}/board-detail?boardCat=info&bno=${item.bno}" class="stretched-link title">
                                        ${item.boardTitle}
                                    </a>
                                </h5>
                                ${item.boardContent}
                                <div class="d-flex align-items-center mt-2 mb-n2" href="${path}/profile.html">
                                    <!-- Avatar -->
                                    <div class="avatar me-3" style="width: 2rem; height: 2rem;">
                                        <img class="avatar-img rounded-circle shadow" src="${path}/resources/upload/profile/${item.reFileNm}" alt="avatar">
                                    </div>
                                    <div class="fw-bold text-black">
                                        ${item.name}
                                    </div>
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
<!-- 이달의픽 끝 -->

<!-- 캠핑장 베스트 리뷰 시작 -->
<section>
	<div class="container">
		<!-- Title -->
		<a href="${path}/board-review?boardCat=review&boardTag=camp" style="z-index: 99; height: 5rem;">
			<div class="title mb-4">
				<span class="text-secondary fs-2">캠핑장 BEST 후기</span>
				<span class="px-3 text-info fs-4">이 캠핑장 어땠어요? 생생하고 솔직한 후기만 모아서!</span>
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
										<div class="h4 text-white title">${item.campNm}</div>
										<div>${item.doNm} ${item.sigunguNm}</div>
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
<!-- 캠핑장 베스트 리뷰 끝 -->

<!-- 자유게시판 / 캠핑몰 시작 -->
<section>
	<div class="container">
		<div class="row g-6 nav">
			<!-- 자유게시판 시작 -->
			<span class="col-6">
				<!-- Title -->
				<a href="${path}/board-free?boardCat=free">
					<div class="title mb-3">
						<span class="mb-0 text-secondary fs-2">자유게시판</span>
					</div>
				</a>

				<!-- 자유게시판 게시글 목록 -->
				<c:forEach var="item" items="${freeList}">
					<ul class="nav flex-column text-info">
						<li class="nav-item">
							<a class="nav-link py-1" href="${path}/board-detail?boardCat=free&bno=${item.bno}">${item.boardTitle}
								<span class="ps-1 text-black-50" style="font-size: 0.9rem;">
									<fmt:formatDate value="${item.boardCreateDate}" pattern="MM-dd hh:mm" /></span>
							</a>
						</li>
				   </ul>
			    </c:forEach>
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


<jsp:include page="/WEB-INF/views/common/camping-footer.jsp"/>