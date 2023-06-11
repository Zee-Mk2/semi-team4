<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />

<!-- Plugins CSS -->
<link rel="stylesheet" type="text/css"
	href="${path}/resources/assets/vendor/font-awesome/css/all.min.css">
<link rel="stylesheet" type="text/css"
	href="${path}/resources/assets/vendor/bootstrap-icons/bootstrap-icons.css">
<link rel="stylesheet" type="text/css"
	href="${path}/resources/assets/vendor/tiny-slider/tiny-slider.css">
<link rel="stylesheet" type="text/css"
	href="${path}/resources/assets/vendor/glightbox/css/glightbox.css">
<link rel="stylesheet" type="text/css"
	href="${path}/resources/assets/vendor/choices/css/choices.min.css">
<link rel="stylesheet" type="text/css"
	href="${path}/resources/assets/vendor/flatpickr/css/flatpickr.min.css">

<!-- Vendors -->
<script src="${path}/resources/assets/vendor/tiny-slider/tiny-slider.js"></script>
<script src="${path}/resources/assets/vendor/glightbox/js/glightbox.js"></script>
<script src="${path}/resources/assets/vendor/choices/js/choices.min.js"></script>
<script
	src="${path}/resources/assets/vendor/flatpickr/js/flatpickr.min.js"></script>

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
					<div class="offcanvas-lg offcanvas-end" tabindex="-1"
						id="offcanvasSidebar">
						<!-- Offcanvas header -->
						<div class="offcanvas-header justify-content-end pb-2">
							<button type="button" class="btn-close"
								data-bs-dismiss="offcanvas" data-bs-target="#offcanvasSidebar"
								aria-label="Close"></button>
						</div>

						<!-- Offcanvas body -->
						<div class="offcanvas-body p-3 p-lg-0">
							<div class="card bg-light w-100">

								<!-- Edit profile button -->
								<div class="position-absolute top-0 end-0 p-3">
									<a href="${path}/MyProfile" class="text-primary-hover"
										data-bs-toggle="tooltip" data-bs-title="Edit profile"> <i
										class="bi bi-pencil-square"></i>
									</a>
								</div>

								<!-- Card body START -->
								<div class="card-body p-3">
									<!-- Avatar and content -->
									<div class="text-center mb-3">
										<!-- Avatar -->
										<div class="avatar avatar-xl mb-2">
											<img
												class="avatar-img rounded-circle border border-2 border-white"
												src="${path}/resources/upload/profile/${sessionScope.loginMember.reFileNm}"
												alt="">
										</div>
										<h6 class="mb-0">${sessionScope.loginMember.name}</h6>
										<a href="${path}/MyProfile"
											class="text-reset text-primary-hover small">${sessionScope.loginMember.id}</a>
										<hr>
									</div>

									<!-- Sidebar menu item START -->
									<ul class="nav nav-pills-primary-soft flex-column">
										<li class="nav-item"><a class="nav-link"
											href="${path}/MyProfile"><i
												class="bi bi-person fa-fw me-2"></i>회원정보</a></li>
										<li class="nav-item"><a class="nav-link"
											href="${path}/booking-info"><i
												class="bi bi-ticket-perforated fa-fw me-2"></i>나의 예약정보</a></li>
										<li class="nav-item"><a class="nav-link"
											href="${path}/MyWishList"><i
												class="bi bi-heart fa-fw me-2"></i>북마크</a></li>
										<li class="nav-item"><a class="nav-link active"
											href="${path}/myReview"><i
												class="bi bi-pencil-square fa-fw me-2"></i>내 리뷰</a></li>
										<li class="nav-item"><a class="nav-link"
											href="${path}/pro-setting"><i
												class="bi bi-gear fa-fw me-2"></i>설정</a></li>
										<li class="nav-item"><a
											class="nav-link text-danger bg-danger-soft-hover"
											href="${path}/sign-in"><i
												class="fas fa-sign-out-alt fa-fw me-2"></i>로그아웃</a></li>
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
						<button class="btn btn-primary mb-4" type="button"
							data-bs-toggle="offcanvas" data-bs-target="#offcanvasSidebar"
							aria-controls="offcanvasSidebar">
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
												<c:if test="${item.boardTag == 'camp'}">
													<span class="badge text-bg-info" style="height: 1.5rem">캠핑</span>
												</c:if>
												<c:if test="${item.boardTag == 'conc'}">
													<span class="badge text-bg-warning" style="height: 1.5rem">공연</span>
												</c:if>
												<span class="card-title h5">
													<a href="${path}/board-detail?bno=${item.bno}"
														class="stretched-link title fs-4">${item.boardTitle}</a>
												</span>
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
													class="d-flex justify-content-between align-items-center pe-3">
													<span class="small"> <img
														src="${path}/resources/upload/profile/${item.reFileNm}"
														class="avatar-sm" style="border-radius: 100%;" /> <span
														class="text-black fs-5 fw-bold px-2">${item.name}</span> <fmt:formatDate
															value="${item.boardCreateDate}" pattern="MM월 dd일 hh:mm" />
													</span> <a href="community-detail.html"
														class="btn btn-link p-0 mb-0">Read more <i
														class="bi bi-arrow-up-right"></i></a>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- 후기 아이템 끝 -->
							</c:forEach>

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

<script
	src="${path}/resources/assets/vendor/stepper/js/bs-stepper.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />