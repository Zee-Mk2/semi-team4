<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<link rel="stylesheet" type="text/css" href="${path}/resources/assets/css/style-blog.css">
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
	Inner intro START -->
	<section class="pt-4">
		<div class="container">
			<div class="row">
		  <div class="col-12">
				<div class="bg-success p-4 text-center rounded-3">
					<h1 class="text-white title">자유게시판</h1>
					<nav class="d-flex justify-content-center" aria-label="breadcrumb">
						<ol class="breadcrumb breadcrumb-dark m-0">
							<li class="breadcrumb-item fs-6"><a href="${path}/home"><i class="bi bi-house me-1 text-white"></i> <span class="text-white">홈</span> </a></li>
							<li class="breadcrumb-item fs-6"><a href="${path}/community" class="text-white">커뮤니티</a></li>
							<li class="breadcrumb-item fs-6 active text-white">자유게시판</li>
						</ol>
					</nav>
				</div>
		  </div>
		</div>
		</div>
	</section>
	<!-- =======================
	Inner intro END -->
	
	<!-- =======================
	Main content START -->
	<section class="position-relative pt-0">
		<div class="container">
			<div class="row align-items-center mx-auto mb-4">
				<a href="${path}/board-post?boardCat=free" class="btn btn-info col-1 px-0 mx-0 mt-n3" style="font-size: 18px"><i class="fas fa-pen"></i> 글쓰기</a>

				<div class="col-9">
					<!-- Search START -->
					<!-- Booking from START -->
					<form class="rounded-5 border ms-3">
						<div class="row g-4 align-items-center">
							<div class="col-10">
								<div class="row g-4">
									<!-- Location -->
									<div class="col-3">
										<!-- Input field -->
										<div class="form-control-transparent form-fs-lg">
											<select class="form-select js-choice"
												data-search-enabled="true">
												<option value="">검색 옵션</option>
												<option>캠핑장 이름</option>
												<option>제목</option>
												<option>내용</option>
												<option>제목 + 내용</option>
												<option>작성자</option>
											</select>
										</div>
									</div>

									<!-- Guest -->
									<div class="col-9">
										<!-- Input field -->
										<div class="form-control-transparent form-fs-lg">
											<input class="form-control border-0 shadow-0" type="text"
												name="search" placeholder="검색어 입력">
										</div>
									</div>
								</div>
							</div>

							<!-- Button -->
							<div class="col-2 text-center">
								<div class="d-grid">
									<a href="#"> <i
										class="fa-solid fa-search fs-5 text-black-50"></i>
									</a>
								</div>
							</div>
						</div>
					</form>
					<!-- Booking from END -->
					<!-- Search END -->
				</div>

				<div class="col-2">
					<form class="form-control-bg-light">
						<select class="form-select js-choice">
							<option>최신순</option>
							<option>조회순</option>
						</select>
					</form>
				</div>
			</div>

			<hr>

			<ul class="nav flex-column text-info mt-n2">
				<li class="nav-item row border-bottom h-40px align-items-center mx-1">
					<div class="col-8 title">
						제목
					</div>
					<div class="text-black col-2 title" style="font-size: 0.9rem;">작성자</div>
					<div class="text-black col-1 title" style="font-size: 0.9rem;">작성시간</div>
					<div class="text-black col-1 title" style="font-size: 0.9rem;">조회수</div>
				</li>
				<li class="nav-item row border-bottom h-40px align-items-center mx-1">
					<a class="nav-link col-8" href="${path}/board-detail">
						애견 캠퍼 분들 주목! 윈드스크린 추천
						<span class="ps-1 text-black-50" style="font-size: 0.9rem;">[1]</span>
					</a>
					<div class="text-black col-2" style="font-size: 0.9rem;">지석환</div>
					<div class="text-black-50 col-1" style="font-size: 0.9rem;">1분 전</div>
					<div class="text-black-50 col-1" style="font-size: 0.9rem;">123</div>
				</li>
				<li class="nav-item row border-bottom h-40px align-items-center mx-1">
					<a class="nav-link col-8" href="${path}/board-detail">
						애견 캠퍼 분들 주목! 윈드스크린 추천
						<span class="ps-1 text-black-50" style="font-size: 0.9rem;">[1]</span>
					</a>
					<div class="text-black col-2" style="font-size: 0.9rem;">지석환</div>
					<div class="text-black-50 col-1" style="font-size: 0.9rem;">1분 전</div>
					<div class="text-black-50 col-1" style="font-size: 0.9rem;">123</div>
				</li>
				<li class="nav-item row border-bottom h-40px align-items-center mx-1">
					<a class="nav-link col-8" href="${path}/board-detail">
						애견 캠퍼 분들 주목! 윈드스크린 추천
						<span class="ps-1 text-black-50" style="font-size: 0.9rem;">[1]</span>
					</a>
					<div class="text-black col-2" style="font-size: 0.9rem;">지석환</div>
					<div class="text-black-50 col-1" style="font-size: 0.9rem;">1분 전</div>
					<div class="text-black-50 col-1" style="font-size: 0.9rem;">123</div>
				</li>
				<li class="nav-item row border-bottom h-40px align-items-center mx-1">
					<a class="nav-link col-8" href="${path}/board-detail">
						애견 캠퍼 분들 주목! 윈드스크린 추천
						<span class="ps-1 text-black-50" style="font-size: 0.9rem;">[1]</span>
					</a>
					<div class="text-black col-2" style="font-size: 0.9rem;">지석환</div>
					<div class="text-black-50 col-1" style="font-size: 0.9rem;">1분 전</div>
					<div class="text-black-50 col-1" style="font-size: 0.9rem;">123</div>
				</li>
				<li class="nav-item row border-bottom h-40px align-items-center mx-1">
					<a class="nav-link col-8" href="${path}/board-detail">
						애견 캠퍼 분들 주목! 윈드스크린 추천
						<span class="ps-1 text-black-50" style="font-size: 0.9rem;">[1]</span>
					</a>
					<div class="text-black col-2" style="font-size: 0.9rem;">지석환</div>
					<div class="text-black-50 col-1" style="font-size: 0.9rem;">1분 전</div>
					<div class="text-black-50 col-1" style="font-size: 0.9rem;">123</div>
				</li>
				<li class="nav-item row border-bottom h-40px align-items-center mx-1">
					<a class="nav-link col-8" href="${path}/board-detail">
						애견 캠퍼 분들 주목! 윈드스크린 추천
						<span class="ps-1 text-black-50" style="font-size: 0.9rem;">[1]</span>
					</a>
					<div class="text-black col-2" style="font-size: 0.9rem;">지석환</div>
					<div class="text-black-50 col-1" style="font-size: 0.9rem;">1분 전</div>
					<div class="text-black-50 col-1" style="font-size: 0.9rem;">123</div>
				</li>
				<li class="nav-item row border-bottom h-40px align-items-center mx-1">
					<a class="nav-link col-8" href="${path}/board-detail">
						애견 캠퍼 분들 주목! 윈드스크린 추천
						<span class="ps-1 text-black-50" style="font-size: 0.9rem;">[1]</span>
					</a>
					<div class="text-black col-2" style="font-size: 0.9rem;">지석환</div>
					<div class="text-black-50 col-1" style="font-size: 0.9rem;">1분 전</div>
					<div class="text-black-50 col-1" style="font-size: 0.9rem;">123</div>
				</li>
				<li class="nav-item row border-bottom h-40px align-items-center mx-1">
					<a class="nav-link col-8" href="${path}/board-detail">
						애견 캠퍼 분들 주목! 윈드스크린 추천
						<span class="ps-1 text-black-50" style="font-size: 0.9rem;">[1]</span>
					</a>
					<div class="text-black col-2" style="font-size: 0.9rem;">지석환</div>
					<div class="text-black-50 col-1" style="font-size: 0.9rem;">1분 전</div>
					<div class="text-black-50 col-1" style="font-size: 0.9rem;">123</div>
				</li>
				<li class="nav-item row border-bottom h-40px align-items-center mx-1">
					<a class="nav-link col-8" href="${path}/board-detail">
						애견 캠퍼 분들 주목! 윈드스크린 추천
						<span class="ps-1 text-black-50" style="font-size: 0.9rem;">[1]</span>
					</a>
					<div class="text-black col-2" style="font-size: 0.9rem;">지석환</div>
					<div class="text-black-50 col-1" style="font-size: 0.9rem;">1분 전</div>
					<div class="text-black-50 col-1" style="font-size: 0.9rem;">123</div>
				</li>
				<li class="nav-item row border-bottom h-40px align-items-center mx-1">
					<a class="nav-link col-8" href="${path}/board-detail">
						애견 캠퍼 분들 주목! 윈드스크린 추천
						<span class="ps-1 text-black-50" style="font-size: 0.9rem;">[1]</span>
					</a>
					<div class="text-black col-2" style="font-size: 0.9rem;">지석환</div>
					<div class="text-black-50 col-1" style="font-size: 0.9rem;">1분 전</div>
					<div class="text-black-50 col-1" style="font-size: 0.9rem;">123</div>
				</li>
				<li class="nav-item row border-bottom h-40px align-items-center mx-1">
					<a class="nav-link col-8" href="${path}/board-detail">
						애견 캠퍼 분들 주목! 윈드스크린 추천
						<span class="ps-1 text-black-50" style="font-size: 0.9rem;">[1]</span>
					</a>
					<div class="text-black col-2" style="font-size: 0.9rem;">지석환</div>
					<div class="text-black-50 col-1" style="font-size: 0.9rem;">1분 전</div>
					<div class="text-black-50 col-1" style="font-size: 0.9rem;">123</div>
				</li>

			<!-- 페이징 -->
			<div class="row">
				<div class="col-12">
					<nav class="mt-4 d-flex justify-content-center" aria-label="navigation">
						<ul class="pagination pagination-primary-soft d-inline-block d-md-flex rounded mb-0">
							<li class="page-item mb-0"><a class="page-link" href="#" tabindex="-1"><i class="fa-solid fa-angle-left"></i></a></li>
							<li class="page-item mb-0 active"><a class="page-link" href="#">1</a></li>
							<li class="page-item mb-0"><a class="page-link" href="#">2</a></li>
							<li class="page-item mb-0"><a class="page-link" href="#">..</a></li>
							<li class="page-item mb-0"><a class="page-link" href="#">6</a></li>
							<li class="page-item mb-0"><a class="page-link" href="#"><i class="fa-solid fa-angle-right"></i></a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!-- =======================
	Main content END -->
	
</main>
<!-- **************** MAIN CONTENT END **************** -->

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>