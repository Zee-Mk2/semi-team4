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
											<a href="${path}/MyProfile" class="text-reset text-primary-hover small">${sessionScope.loginMember.id}</a>
											<hr>
										</div>

										<!-- Sidebar menu item START -->
										<ul class="nav nav-pills-primary-soft flex-column">
											<li class="nav-item">
												<a class="nav-link" href="${path}/MyProfile"><i
														class="bi bi-person fa-fw me-2"></i>회원정보</a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="${path}/booking-info"><i
														class="bi bi-ticket-perforated fa-fw me-2"></i>나의 예약정보</a>
											</li>
											<li class="nav-item">
												<a class="nav-link active" href="${path}/MyWishList"><i
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

						<!-- Wishlist START -->
						<div class="card border bg-transparent">
							<!-- Card header -->
							<div class="card-header bg-transparent border-bottom">
								<h4 class="card-header-title title">내 북마크</h4>
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
									<!-- Button -->
									<a class="btn btn-danger-soft mb-0" href="${path}/deleteAllWishlist"><i class="fas fa-trash me-2"></i>전체 삭제</a>
								</form>

								<c:forEach var="item" items="${items}">
									<!-- Wishlist item START -->
									<div class="card shadow p-2 position-relative">
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
														<ul class="list-inline small mb-2">
															<li class="list-inline-item me-0"><i
																	class="fa-solid fa-star text-warning"></i></li>
															<li class="list-inline-item me-0"><i
																	class="fa-solid fa-star text-warning"></i></li>
															<li class="list-inline-item me-0"><i
																	class="fa-solid fa-star text-warning"></i></li>
															<li class="list-inline-item me-0"><i
																	class="fa-solid fa-star text-warning"></i></li>
															<li class="list-inline-item"><i
																	class="fa-solid fa-star-half-alt text-warning"></i></li>
														</ul>
	
														<ul class="list-inline mb-0">
															<!-- Heart icon -->
															<li class="list-inline-item">
																<a class="btn btn-sm btn-round btn-danger mb-0" style="z-index: 99; position: absolute; top: 15px; right: 60px;" data-conid="${item.conId}">
																	<i class="fas fa-heart heart-icon concert fs-6 mt-2"></i>
																</a>
															</li>
															<!-- Share icon -->
															<li class="list-inline-item dropdown" style="z-index: 99; position: absolute; top: 15px; right: 20px;">
																<!-- Share button -->
																<a href="${path}/#" class="btn btn-sm btn-round btn-light mb-0" role="button" id="dropdownShare2" 
																	data-bs-toggle="dropdown" aria-expanded="false">
																	<i class="fa-solid fa-fw fa-share-alt fs-6 mt-2"></i>
																</a>
																<!-- dropdown button -->
																<ul class="dropdown-menu dropdown-menu-end min-w-auto shadow rounded"
																	aria-labelledby="dropdownShare2">
																	<li><a class="dropdown-item" href="${path}/#"><i
																				class="fab fa-twitter-square me-2"></i>트위터</a>
																	</li>
																	<li><a class="dropdown-item" href="${path}/#"><i
																				class="fab fa-facebook-square me-2"></i>페이스북</a>
																	</li>
																	<li><a class="dropdown-item" href="${path}/#"><i
																				class="fa-solid fa-copy me-2"></i>링크복사</a>
																	</li>
																</ul>
															</li>
														</ul>
													</div>
	
													<!-- Title -->
													<h5 class="card-title my-2 title">
														<a href="${path}/conc-detail?conId=${item.conId}" class="stretched-link">
															<span class="badge text-bg-warning title px-2" style="height: 1.5rem">${item.genre}</span> ${item.conNm}
														</a>
													</h5>
													<div class="row g-2 mt-1">
														<div class="text-center px-0 col-1"><i class="bi bi-geo-alt"></i></div>
														<div class="px-0 col-11">${item.conHallNm}</div>
														<div class="text-center px-0 col-1"><i class='far fa-calendar'></i></div>
														<div class="px-0 col-11"><fmt:formatDate value="${item.startDate}" pattern="yyyy.MM.dd"/> ~ <fmt:formatDate value="${item.endDate}" pattern="yyyy.MM.dd"/></div>
														<div class="text-center px-0 col-1"><i class="material-icons">people</i></div>
														<div class="px-0 col-11">${item.cast}</div>
														<div class="text-center px-0 col-1"><i class='far fa-clock'></i></div>
														<div class="px-0 col-11">${item.runtime}</div>
													</div>
	
													<!-- Price and Button -->
													<div class="d-sm-flex justify-content-sm-between align-items-center mt-3 mt-md-auto">
														<!-- Button -->
														<div class="d-flex align-items-center">
															<div class="fw-bold mb-0 me-1 text-secondary title" style="font-size: 24px">₩ ${item.minPrice} ~</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- Wishlist item END -->
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

<script src="${path}/resources/assets/vendor/stepper/js/bs-stepper.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>

<script type="text/javascript">
$(".heart-icon.concert").click(function () {
	var conId = $(this).parent().data("conid");
    var $heartIcon = $(this);
    
    if ($(this).hasClass('fas')) { // 북마크 제거
        $.ajax({
            url: "${path}/conc-bookmarkRemove?conId=" + conId,
            type: 'GET',
            success: function (result) {
                console.log(result);
                if (result != '0') {
                    $heartIcon.removeClass('fas');
                    $heartIcon.addClass('far');
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.error(jqXHR, textStatus, errorThrown);
            }
        });
    } else { // 북마크 추가
        $.ajax({
            url: "${path}/conc-bookmark?conId=" + conId,
            type: 'GET',
            success: function (result) {
                console.log(result);
                if (result != '0') {
                    $heartIcon.removeClass('far');
                    $heartIcon.addClass('fas');
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.error(jqXHR, textStatus, errorThrown);
            }
        });
    }
});
</script>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>