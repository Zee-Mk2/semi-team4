<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/camping-header.jsp" />

<!-- Plugins CSS -->
<link rel="stylesheet" type="text/css"
	href="${path}/resources/assets/vendor/font-awesome/css/all.min.css">
<link rel="stylesheet" type="text/css"
	href="${path}/resources/assets/vendor/bootstrap-icons/bootstrap-icons.css">
<link rel="stylesheet" type="text/css"
	href="${path}/resources/assets/vendor/splide-master/dist/css/splide.min.css">
<link rel="stylesheet" type="text/css"
	href="${path}/resources/assets/vendor/glightbox/css/glightbox.css">

<link rel="stylesheet" type="text/css"
	href="${path}/resources/assets/css/style.css?ver=2">

<!-- Vendors -->
<script
	src="${path}/resources/assets/vendor/splide-master/dist/js/splide.min.js"></script>
<script src="${path}/resources/assets/vendor/glightbox/js/glightbox.js"></script>

<!-- 카카오맵 -->
<script charset="UTF-8" class="daum_roughmap_loader_script"
	src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

<!-- **************** MAIN CAMPING START **************** -->

<main>
	<!-- =======================
	Main Banner START -->
	<section class="pt-4 pt-lg-5">
		<div class="container position-relative">

			<!-- Title and button START -->
			<div class="row">
				<div class="col-12">

					<!-- Meta -->
					<div class="d-md-flex justify-content-md-between">
						<!-- Title -->
						<div>
							<ul class="nav nav-divider h6 text-body mb-0">
								<li class="nav-item fs-5 title">${item.location}</li>
							</ul>
							<h1 class="fs-2 title">${item.campNm}</h1>
							<ul class="nav nav-divider h6 mb-0">
								<li class="nav-item fs-4 title">${item.lineIntro}</li>
							</ul>
						</div>

						<!-- Buttons -->
						<ul class="list-inline text-end">
							<c:if test="${sessionScope.loginMember != null}">
								<!-- Heart icon -->
								<li class="list-inline-item">
									<a class="btn btn-sm btn-light px-2" data-contentid="${item.contentID}">
										<c:if test="${sessionScope.loginMember != null}">
											<c:if test="${bookmarks[item.contentID] != 1}">
												<i class="far fa-heart heart-icon camp"></i>
											</c:if>
											<c:if test="${bookmarks[item.contentID] == 1}">
												<i class="fas fa-heart heart-icon camp"></i>
											</c:if>
										</c:if>
									</a>
								</li>
							</c:if>
							<!-- Share icon -->
							<li class="list-inline-item dropdown">
								<!-- Share button --> <a href="#"
								class="btn btn-sm btn-light px-2" role="button"
								id="dropdownShare" data-bs-toggle="dropdown"
								aria-expanded="false"> <i
									class="fa-solid fa-fw fa-share-alt"></i>
							</a> <!-- dropdown button -->
								<ul
									class="dropdown-menu dropdown-menu-end min-w-auto shadow rounded"
									aria-labelledby="dropdownShare">
									<li><a class="dropdown-item" href="#"><i
											class="fab fa-twitter-square me-2"></i>트위터</a></li>
									<li><a class="dropdown-item" href="#"><i
											class="fab fa-facebook-square me-2"></i>페이스북</a></li>
									<li><a class="dropdown-item" href="#"><i
											class="fa-solid fa-copy me-2"></i>링크 복사</a></li>
								</ul>
							</li>
						</ul>
					</div>

				</div>
			</div>
			<!-- Title and button END -->

			<!-- Image gallery START -->
			<div class="mt-md-5">
				<!-- Primary image -->
				<div class="mb-3" style="display: flex; justify-content: center;">
					<a href="${item.img}" data-glightbox="" data-gallery="banner"><img
						src="${item.img}" alt="${item.campNm} 대표이미지"></a>
				</div>
			</div>
			<!-- Image gallery END -->

		</div>
	</section>
	<!-- =======================
	Main Banner END -->

	<!-- =======================
	Tabs START -->
	<section class="py-0">
		<div class="container">

			<!-- Tabs START -->
			<div class="row">
				<div class="col-12">
					<!-- Outer tabs START -->
					<ul
						class="nav nav-pills nav-justified nav-responsive bg-primary bg-opacity-10 rounded p-2"
						id="tour-pills-tab" role="tablist">
						<!-- Tab item -->
						<li class="nav-item" role="presentation">
							<button class="nav-link active mb-0" id="tour-pills-tab-1"
								data-bs-toggle="pill" data-bs-target="#tour-pills-tab1"
								type="button" role="tab" aria-controls="tour-pills-tab1"
								aria-selected="true">캠핑장 소개</button>
						</li>
						<!-- Tab item -->
						<li class="nav-item" role="presentation">
							<button class="nav-link mb-0" id="tour-pills-tab-2"
								data-bs-toggle="pill" data-bs-target="#tour-pills-tab2"
								type="button" role="tab" aria-controls="tour-pills-tab2"
								aria-selected="false">이용안내</button>
						</li>
					</ul>
					<!-- Outer tabs END -->
				</div>
			</div>
			<!-- Tabs END -->
		</div>
	</section>
	<!-- =======================
	Tabs END -->

	<!-- =======================
	Tabs-content START -->
	<section class="pt-4 pt-md-5">
		<div class="container">

			<div class="row g-4 g-md-5">
				<!-- Tabs Content START -->
				<div class="col-xl-8">
					<!-- Outer tabs contents START -->
					<div class="tab-content mb-0" id="tour-pills-tabContent">

						<!-- Content item START -->
						<div class="tab-pane fade show active" id="tour-pills-tab1"
							role="tabpanel" aria-labelledby="tour-pills-tab-1">
							<div class="card bg-transparent p-0">
								<!-- Card header -->
								<div class="card-header bg-transparent border-bottom p-0 pb-3">
									<h3 class="mb-0 title fs-2">소개</h3>
								</div>

								<!-- Card body START -->
								<div class="card-body p-0 pt-3 text-black">
									<p class="mb-2">${item.intro}</p>
									<p class="mb-4 text-black-50"></p>
								</div>
								<!-- Card body END -->

								<div class="card">
									<!-- Card header -->
									<div class="card-header bg-transparent border-bottom p-0 pb-3">
										<h3 class="mb-0 title fs-2">시설정보</h3>
									</div>
									<!-- Card body START -->
									<div
										class="card card-body bg-light p-4 d-flex justify-content-center my-3">
										<div
											class="d-flex flex-wrap align-items-center text-center mx-auto">
											<c:forTokens var="token" items="${item.addFclty}" delims=",">
												<div class="p-4">
													<c:if test="${token == '전기'}">
														<i class="fas fa-plug fs-3"></i>
														<br>전기														
													</c:if>
													<c:if test="${token == '무선인터넷'}">
														<i class="fas fa-wifi fs-3"></i>
														<br>무선인터넷
													</c:if>
													<c:if test="${token == '장작판매'}">
														<i class="fas fa-fire-alt fs-3"></i>
														<br>장작판매
													</c:if>
													<c:if test="${token == '온수'}">
														<i class="fas fa-hot-tub fs-3"></i>
														<br>온수
													</c:if>
													<c:if test="${token == '트렘폴린'}">
														<i class="fas fa-hockey-puck fs-3"></i>
														<br>트렘폴린
													</c:if>
													<c:if test="${token == '물놀이장'}">
														<i class="fas fa-swimming-pool fs-3"></i>
														<br>물놀이장
													</c:if>
													<c:if test="${token == '놀이터'}">
														<i class="fas fa-shapes fs-3"></i>
														<br>놀이터
													</c:if>
													<c:if test="${token == '산책로'}">
														<i class="fas fa-walking fs-3"></i>
														<br>산책로
													</c:if>
													<c:if test="${token == '운동장'}">
														<i class="fas fa-basketball-ball fs-3"></i>
														<br>운동장
													</c:if>
													<c:if test="${token == '운동시설'}">
														<i class="fas fa-dumbbell fs-3"></i>
														<br>운동시설
													</c:if>
													<c:if test="${token == '마트.편의점'}">
														<i class="fas fa-store fs-3"></i>
														<br>마트/편의점
													</c:if>
												</div>
											</c:forTokens>
										</div>
									</div>
									<!-- Card body END -->

									<!-- Card header -->
									<div class="card-header bg-transparent border-bottom p-0 pb-3">
										<h3 class="mb-0 title fs-2">시설물 개수</h3>
									</div>
									<!-- Card body START -->
									<div
										class="card card-body bg-light p-4 d-flex justify-content-center my-3">
										<div
											class="d-flex flex-wrap align-items-center text-center mx-auto">
											<div class="p-4">
												화장실<br> <i class="fas fa-toilet fs-3"></i><br>${item.toiletCo}
												개
											</div>
											<div class="p-4">
												샤워실<br> <i class="fas fa-shower fs-3"></i><br>${item.showerCo}
												개
											</div>
											<div class="p-4">
												개수대<br> <i class="fas fa-water fs-3"></i><br>${item.sinkCo}
												개
											</div>
											<div class="p-4">
												소화기<br> <i class="fas fa-fire-extinguisher fs-3"></i><br>${item.fireExtCo}
												개
											</div>
											<div class="p-4">
												화재감지기<br> <i class="fas fa-bell fs-3"></i><br>${item.fireSensorCo}
												개
											</div>
										</div>
									</div>
									<!-- Card body END -->
								</div>
							</div>
						</div>
						<!-- Content item END -->

						<!-- Content item START -->
						<div class="tab-pane fade" id="tour-pills-tab2" role="tabpanel"
							aria-labelledby="tour-pills-tab-2">
							<div class="card bg-transparent p-0">
								<!-- Card header -->
								<div class="card-header bg-transparent border-bottom p-0 pb-3">
									<h3 class="mb-0 title fs-2">이용시설 안내도</h3>
								</div>
								<div class="card-body p-0 pt-3">
									<img
										src="https://www.gocamping.or.kr/upload/camp/6975/8401kgFa2KKczlc2Hx0UPtlY.jpg"
										alt="">
								</div>
							</div>
						</div>
						<!-- Content item END -->
					</div>
				</div>
				<!-- Tabs Content END -->

				<!-- Right side content START -->
				<aside class="col-xl-4">
					<div class="row g-4">
						<!-- Book now item START -->
						<div class="col-12">
							<div class="card card-body border bg-transparent">
								<!-- Title -->
								<div class="hstack gap-2 mb-1">
									<h3 class="card-title mb-0 title">₩20,000 ~</h3>
								</div>

								<div class="d-flex justify-content-between mb-4">
									<!-- Rating -->
									<ul class="list-inline mb-0 mt-n1">
								        <div class="rating">
								            <span class="star"><i class="far fa-star text-warning"></i></span>
								            <span class="star"><i class="far fa-star text-warning"></i></span>
								            <span class="star"><i class="far fa-star text-warning"></i></span>
								            <span class="star"><i class="far fa-star text-warning"></i></span>
								            <span class="star"><i class="far fa-star text-warning"></i></span>
								        </div>
								        <input type="hidden" id="average-rating" value="${item.avgRating}">
							            <script>
									        $(document).ready(function() {
									            var intRating = parseInt($('#average-rating').val());
									            var decRating = parseFloat($('#average-rating').val()) - intRating;
									
									            // 평균 별점에 맞춰 별 아이콘 표시
									            var starIcons = $('.rating .star i');
									            var i;
									            for (i = 0; i < intRating; i++) {
									                $(starIcons[i]).removeClass('far').addClass('fas');
									            }
								                if (decRating >= 0.3 && decRating < 0.7) {
								                	$(starIcons[i]).removeClass('far').addClass('fas').removeClass('fa-star').addClass('fa-star-half-alt');
								                }
								                if (decRating >= 0.7) {
								                	$(starIcons[i]).removeClass('far').addClass('fas');
								                }
									        });
									    </script>
									</ul>
									<li class="list-inline-item me-1 h6 mb-0 text-black-50"><i class="far fa-eye"></i> ${item.views}</li>
									<li class="list-inline-item me-1 h6 mb-0 text-black-50"><i class="fas fa-heart"></i> ${item.bookmarks}</li>
									<li class="list-inline-item me-0 h6 mb-0 text-black-50"><a href="#" class="mb-0 m-0 text-reset text-primary-hover">후기 ${item.numReviews}개</a></li>
								</div>

								<!-- Button -->
								<div class="d-grid gap-2">
									<a href="${path}/camp-booking" class="btn btn-primary">예약하기</a>
								</div>

							</div>
						</div>
						<!-- Book now item END -->

						<!-- Help item START -->
						<div class="col-12">
							<div class="card card-body bg-light">
								<!-- List -->
								<table class="table">
									<tr>
										<td class="fw-bold text-black"><i
											class="far fa-address-book text-primary"></i> 주소</td>
										<td>${item.addr}</td>
									</tr>
									<tr>
										<td class="fw-bold text-black"><i
											class="fas fa-phone text-primary"></i> 전화번호</td>
										<td>${item.tel}</td>
									</tr>
									<tr>
										<td class="fw-bold text-black"><i
											class="far fa-calendar text-primary"></i> 운영기간</td>
										<td>${item.openSeason}</td>
									</tr>
									<tr>
										<td class="fw-bold text-black"><i
											class="fas fa-calendar-day text-primary"></i> 운영일</td>
										<td>${item.openDay}</td>
									</tr>
								</table>
								<a href="${item.homepage}" class="btn btn-outline-primary">홈페이지
									가기</a>
							</div>
						</div>
						<!-- Help item END -->

						<!-- 날씨 위젯 -->
						<div class="tomorrow card"
							data-lat="Float.parseFloat(${item.mapX})"
							data-lon="Float.parseFloat(${item.mapY})" data-language="KO"
							data-unit-system="METRIC" data-skin="light"
							data-widget-type="upcoming">
							<a href="https://www.tomorrow.io/weather-api/"
								rel="nofollow noopener noreferrer" target="_blank"
								style="position: absolute; bottom: 0; transform: translateX(-50%); left: 50%;">
								<img alt="Powered by the Tomorrow.io Weather API"
								src="https://weather-website-client.tomorrow.io/img/powered-by.svg"
								width="250" height="18" />
							</a>
						</div>

						<!-- 지도 위젯 -->
						<div class="col-12">
							<div class="card">
								<div id="map"
									style="border-radius: 1rem; width: 100%; height: 200px;"></div>
							</div>
						</div>

						<script type="text/javascript"
							src="${path}/resources/assets/js/kakaomap.js"></script>
						<script>
							var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
								mapOption = {
									center: new kakao.maps.LatLng(37.4812845080678, 126.952713197762), // 지도의 중심좌표
									level: 4, // 지도의 확대 레벨
								};
					
							// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
							var map = new kakao.maps.Map(mapContainer, mapOption);
					
							// 마커가 표시될 위치입니다 
							var markerPosition = new kakao.maps.LatLng(${item.mapX}, ${item.mapY});
					
							// 마커를 생성합니다
							var marker = new kakao.maps.Marker({
								position: markerPosition
							});
					
							// 마커가 지도 위에 표시되도록 설정합니다
							marker.setMap(map);
						</script>
					</div>
				</aside>
				<!-- Right side content END -->

				<div class="card">
					<div class="card-header bg-transparent border-bottom p-0 pb-3">
						<a href="${path}/board-review?boardCat=review&boardTag=camp">
							<h3 class="mb-0 title fs-2">${item.campNm}이용후기</h3>
						</a>
					</div>
					<div class="card card-body p-4 d-flex justify-content-center my-3">
						<c:if test="${empty reviews}">
							<div class="fs-4 title text-center">아직 후기가 없습니다. 후기를
								작성해보세요!</div>
						</c:if>
						<c:forEach var="item" items="${reviews}">
							<!-- 후기 아이템 시작 -->
							<div class="card bg-transparent my-2 py-3 shadow">
								<div class="row g-3 g-sm-4 align-items-sm-center">
									<!-- Image -->
									<div class="col-4">
										<img
											src="${path}/resources/upload/board/${item.boardReFileNm}"
											class="card-img mx-3 rounded-2"
											style="background-color: white;">
									</div>
									<div class="col-8">
										<!-- card body -->
										<div class="card-body p-0 ps-3">
											<h5 class="card-title">
												<a href="${path}/board-detail?bno=${item.bno}"
													class="stretched-link title fs-4">${item.boardTitle}</a>
											</h5>
											<p class="flex-shrink-1 card-stars fs-6"
												style="font-size: 0.7rem;">
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
													<i class="far fa-thumbs-up ms-2 me-1"></i>123
										        </div>
											</p>
											<div class="pb-3">${item.boardContent}</div>
											<!-- Author name and button -->
											<div
												class="d-flex justify-content-between align-items-center">
												<span class="small"> <img
													src="${path}/resources/upload/profile/${item.reFileNm}"
													class="avatar-sm" style="border-radius: 100%;" /> <span
													class="text-black fs-5 fw-bold px-2">${item.name}</span> <fmt:formatDate
														value="${item.boardCreateDate}" pattern="MM월 dd일 hh:mm" />
												</span> <a href="community-detail.html"
													class="btn btn-link p-0 mb-0 pe-3">Read more <i
													class="bi bi-arrow-up-right"></i></a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- 후기 아이템 끝 -->
						</c:forEach>
						<form action="${path}/board-post" method="get">
							<input type="hidden" value="${item.campNm}" name="conNm">
							<input type="hidden" value="${item.contentID}" name="contentId">
							<input type="hidden" value="review" name="boardCat"> <input
								type="hidden" value="camp" name="boardTag">
							<button type="submit"
								class="btn btn-outline-primary mt-4 fs-4 w-100">후기 작성</button>
						</form>
					</div>
				</div>

			</div>
			<!-- Row END -->
		</div>
	</section>
	<!-- =======================
	Tabs-content END -->
</main>

<!-- 카카오맵 -->
<script charset="UTF-8" class="daum_roughmap_loader_script"
	src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
<script
	src="${path}/resources/assets/vendor/splide-master/dist/js/splide.min.js"></script>


<jsp:include page="/WEB-INF/views/common/footer.jsp" />