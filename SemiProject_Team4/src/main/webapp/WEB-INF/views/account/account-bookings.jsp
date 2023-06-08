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
<script src="http://code.jquery.com/jquery-latest.js"></script>

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
													src="${path}/resources/upload/profile/${sessionScope.loginMember.reFileNm}" alt="">
											</div>
											<h6 class="mb-0">${sessionScope.loginMember.name}</h6>
											<a href="${path}/#" class="text-reset text-primary-hover small">${sessionScope.loginMember.id}</a>
											<hr>
										</div>

										<!-- Sidebar menu item START -->
										<ul class="nav nav-pills-primary-soft flex-column">
											<li class="nav-item">
												<a class="nav-link" href="${path}/MyProfile"><i
														class="bi bi-person fa-fw me-2"></i>회원정보</a>
											</li>
											<li class="nav-item">
												<a class="nav-link active" href="${path}/booking-info"><i
														class="bi bi-ticket-perforated fa-fw me-2"></i>나의 예약정보</a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="${path}/MyWishList"><i
														class="bi bi-heart fa-fw me-2"></i>북마크</a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="${path}/myReview"><i
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

						<div class="card border bg-transparent">
							<!-- Card header -->
							<div class="card-header bg-transparent border-bottom">
								<h4 class="card-header-title">나의 예약정보</h4>
							</div>

							<!-- Card body START -->
							<div class="card-body p-0">

								<!-- Tabs -->
								<ul class="nav nav-tabs nav-bottom-line nav-responsive nav-justified">
									<li class="nav-item">
										<a class="nav-link mb-0 active" data-bs-toggle="tab" href="#tab-1"><i
												class="bi bi-briefcase-fill fa-fw me-1"></i>다가오는 예약</a>
									</li>
									<li class="nav-item">
										<a class="nav-link mb-0" data-bs-toggle="tab" href="#tab-2"><i
												class="bi bi-x-octagon fa-fw me-1"></i>취소된 예약</a>
									</li>
									<li class="nav-item">
										<a class="nav-link mb-0" data-bs-toggle="tab" href="#tab-3"><i
												class="bi bi-patch-check fa-fw me-1"></i>완료된 예약</a>
									</li>
								</ul>

								<!-- Tabs content START -->
								<div class="tab-content p-2 p-sm-4" id="nav-tabContent">

									<!-- Tab content item START -->
									<div class="tab-pane fade show active" id="tab-1">
										<c:forEach var="item" items="${upcome}">
											<!-- Wishlist item START -->
											<div class="card shadow p-2 position-relative mb-3" id="resv-${item.resvNo}">
												<div class="row g-0">
													<!-- Card img -->
													<div class="col-md-3">
														<img src="${item.posterImg}"
															class="card-img rounded-2" alt="Card image">
													</div>
			
													<!-- Card body -->
													<div class="col-md-9">
														<div class="card-body py-md-2 d-flex flex-column h-100">
			
															<!-- Rating and buttons -->
															<div class="d-flex justify-content-between align-items-center">
																<ul class="list-inline mb-0">
																	<!-- Cancel icon -->
																	<li class="list-inline-item">
																		<a class="btn btn-sm btn-round btn-danger mb-0 delete-resv" style="z-index: 99; position: absolute; top: 15px; right: 20px;" data-resvno="${item.resvNo}"}>
																			<i class="fas fa-trash-alt fs-6 mt-2"></i>
																		</a>
																	</li>
																</ul>
															</div>
			
															<!-- Title -->
															<h5 class="card-title mb-2 title">
																<a href="${path}/conc-detail?conId=${item.conId}" class="stretched-link">
																	${item.conNm}
																</a>
															</h5>
														<div class="row g-2 mt-1">
															<div class="text-center px-0 col-1"><i class='far fa-calendar'></i></div>
															<div class="px-0 col-11"><fmt:formatDate value="${item.resvTime}" pattern="yyyy.MM.dd HH:mm"/></div>
															<div class="text-center px-0 col-1"><i class="bi bi-geo-alt"></i></div>
															<div class="px-0 col-11">${item.conHallNm}</div>
															<div class="text-center px-0 col-1"><i class="fas fa-chair"></i></div>
															<div class="px-0 col-11">${item.seatNo} (${item.seatType})</div>
															<div class="text-center px-0 col-1"><i class="material-icons">person</i></div>
															<div class="px-0 col-11">${item.userName}</div>
														</div>
			
															<!-- Price and Button -->
															<div class="d-sm-flex justify-content-sm-between align-items-center mt-3 mt-md-auto">
																<!-- Button -->
																<div class="d-flex align-items-center">
																	<div class="fw-bold mb-0 mx-1 text-secondary title" style="font-size: 24px">₩ ${item.seatPrice}</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<!-- Wishlist item END -->
										</c:forEach>
									</div>
									<!-- Tabs content item END -->

									<!-- Tab content item START -->
									<div class="tab-pane fade" id="tab-2">
										<c:forEach var="item" items="${cancle}">
											<!-- Wishlist item START -->
											<div class="card shadow p-2 position-relative mb-3" id="resv-${item.resvNo}">
												<div class="row g-0">
													<!-- Card img -->
													<div class="col-md-3">
														<img src="${item.posterImg}"
															class="card-img rounded-2" alt="Card image">
													</div>
			
													<!-- Card body -->
													<div class="col-md-9">
														<div class="card-body py-md-2 d-flex flex-column h-100">
			
															<!-- Rating and buttons -->
															<div class="d-flex justify-content-between align-items-center">
																<ul class="list-inline mb-0">
																	<!-- Cancel icon -->
																	<li class="list-inline-item">
																		<a class="btn btn-danger mb-0" style="z-index: 99; position: absolute; top: 15px; right: 20px;" onclick="javascript: void()">
																			취소됨
																		</a>
																	</li>
																</ul>
															</div>
			
															<!-- Title -->
															<h5 class="card-title mb-2 title">
																<a href="${path}/conc-detail?conId=${item.conId}" class="stretched-link">
																	${item.conNm}
																</a>
															</h5>
														<div class="row g-2 mt-1">
															<div class="text-center px-0 col-1"><i class='far fa-calendar'></i></div>
															<div class="px-0 col-11"><fmt:formatDate value="${item.resvTime}" pattern="yyyy.MM.dd HH:mm"/></div>
															<div class="text-center px-0 col-1"><i class="bi bi-geo-alt"></i></div>
															<div class="px-0 col-11">${item.conHallNm}</div>
															<div class="text-center px-0 col-1"><i class="fas fa-chair"></i></div>
															<div class="px-0 col-11">${item.seatNo} (${item.seatType})</div>
															<div class="text-center px-0 col-1"><i class="material-icons">person</i></div>
															<div class="px-0 col-11">${item.userName}</div>
														</div>
			
															<!-- Price and Button -->
															<div class="d-sm-flex justify-content-sm-between align-items-center mt-3 mt-md-auto">
																<!-- Button -->
																<div class="d-flex align-items-center">
																	<div class="fw-bold mb-0 mx-1 text-secondary title" style="font-size: 24px">₩ ${item.seatPrice}</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<!-- Wishlist item END -->
										</c:forEach>
									</div>
									<!-- Tabs content item END -->

									<!-- Tab content item START -->
									<div class="tab-pane fade" id="tab-3">
										<c:if test="${empty complete}">
											<div class="bg-custom shadow p-4 rounded overflow-hidden">
												<div class="row g-4 align-items-center">
													<!-- Content -->
													<div class="col-md-9">
														<h6 class="Orange">현재까지 예약한 적이 없습니다.</h6>
														<h4 class="mb-2 title">예약을 하면 여기에 표시됩니다.</h4>
													</div>
													<!-- Image -->
													<div class="col-md-3 text-end">
														<img src="${path}/resources/assets/images/element/17.svg" class="mb-n5" alt="">
													</div>
												</div>
											</div>
										</c:if>
										<c:forEach var="item" items="${complete}">
											<!-- Wishlist item START -->
											<div class="card shadow p-2 position-relative mb-3" id="resv-${item.resvNo}">
												<div class="row g-0">
													<!-- Card img -->
													<div class="col-md-3">
														<img src="${item.posterImg}" class="card-img rounded-2" alt="Card image">
													</div>
			
													<!-- Card body -->
													<div class="col-md-9">
														<div class="card-body py-md-2 d-flex flex-column h-100">
			
															<!-- Rating and buttons -->
															<div class="d-flex justify-content-between align-items-center">
																<ul class="list-inline mb-0">
																	<!-- Cancel icon -->
																	<li class="list-inline-item">
																		<a class="btn btn-info mb-0" style="z-index: 99; position: absolute; top: 15px; right: 20px;" onclick="javascript: void()">
																			완료된 예약
																		</a>
																	</li>
																</ul>
															</div>
			
															<!-- Title -->
															<h5 class="card-title mb-2 title">
																<a href="${path}/conc-detail?conId=${item.conId}" class="stretched-link">
																	${item.conNm}
																</a>
															</h5>
														<div class="row g-2 mt-1">
															<div class="text-center px-0 col-1"><i class='far fa-calendar'></i></div>
															<div class="px-0 col-11"><fmt:formatDate value="${item.resvTime}" pattern="yyyy.MM.dd HH:mm"/></div>
															<div class="text-center px-0 col-1"><i class="bi bi-geo-alt"></i></div>
															<div class="px-0 col-11">${item.conHallNm}</div>
															<div class="text-center px-0 col-1"><i class="fas fa-chair"></i></div>
															<div class="px-0 col-11">${item.seatNo} (${item.seatType})</div>
															<div class="text-center px-0 col-1"><i class="material-icons">person</i></div>
															<div class="px-0 col-11">${item.userName}</div>
														</div>
			
															<!-- Price and Button -->
															<div class="d-sm-flex justify-content-sm-between align-items-center mt-3 mt-md-auto">
																<!-- Button -->
																<div class="d-flex align-items-center">
																	<div class="fw-bold mb-0 mx-1 text-secondary title" style="font-size: 24px">₩ ${item.seatPrice}</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<!-- Wishlist item END -->
										</c:forEach>

									</div>
									<!-- Tabs content item END -->
								</div>

							</div>
							<!-- Card body END -->
						</div>

					</div>
					<!-- Main content END -->
				</div>
			</div>
		</section>
		<!-- =======================
Content END -->

	</main>
	<!-- **************** MAIN CONTENT END **************** -->


<jsp:include page="/WEB-INF/views/common/footer.jsp"/>

<script type="text/javascript">
$(document).ready(function () {
    $('.delete-resv').click(function () {
        if (confirm('정말 예매를 취소하시겠습니까?')) {
            var resvNo = $(this).data('resvno');
            var targetId = 'resv-' + resvNo;
            var requestData = JSON.stringify({
                "resvNo": resvNo,
            });

            $.ajax({
                url: '${path}/cancel-booking',
                type: 'POST',
                contentType: 'application/json',
                data: requestData,
                success: function () {
                    $('#' + targetId).remove();
                    alert('예매가 취소되었습니다.');
                },
                error: function () {
                    alert('Error!');
                }
            });
        }
    });
});
</script>