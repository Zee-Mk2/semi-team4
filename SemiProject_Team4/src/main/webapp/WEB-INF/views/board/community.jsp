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
	Inner intro START -->
	<section class="pt-4 pb-0">
		<div class="container">
			<div class="row">
			<div class="col-12">
				<div class="bg-success p-4 text-center rounded-3">
					<h1 class="text-white title">커뮤니티</h1>
					<nav class="d-flex justify-content-center" aria-label="breadcrumb">
						<ol class="breadcrumb breadcrumb-dark m-0">
							<li class="breadcrumb-item fs-6"><a href="${path}/home"><i class="bi bi-house me-1 text-white"></i> <span class="text-white">홈</span> </a></li>
							<li class="breadcrumb-item fs-6 active text-white">커뮤니티</li>
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
	Main banner START -->
	<section>
		<div class="container">
			<!-- Blog START -->
			<div class="row g-4">
			   <div class="container">
				<!-- Card header -->
				<div class="col-12 card-header bg-transparent border-bottom p-0 pb-3">
					<h3 class="mb-0 title fs-2">이달의 Pick!</h3>
				</div>
			   </div>
				<!-- 이달의픽 카드 1 -->
			<c:forEach var="item" items="${pickList}">
				<div class="col-6">
					<!-- place item-->
					<div class="w-100 mb-4" style="height: 32rem;">
						<div class="card card-img-scale h-100 border-0 shadow">
							<div class="col-4 card-img-top overflow-hidden h-75">
								<img src="${path}/resources/upload/board/${item.boardReFileNm}" class="card-img img-fluid" alt="Card image">
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
									<div class="d-flex align-items-center mt-2 mb-n2" href="${path}/board-info?boardCat=info">
										<!-- Avatar -->
										<div class="avatar me-3" style="width: 2rem; height: 2rem;">
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
						<hr class="my-0"> <!-- Divider -->
					</div>
				</div>
				<!-- Blog list END -->
	
			</div>
			<!-- Blog END -->
		</div>
	</section>
	<!-- =======================
	Main banner START -->
	
	<!-- =======================
	Blog grid START -->
	<section class="pt-0 pt-sm-5">
		<div class="container">
			<div class="row">
				<!-- 정보공유 시작 -->
				<div class="col-6">
					<!-- Card header -->
					<div class="card-header bg-transparent border-bottom p-0 mb-4">
						<a href="${path}/board-info?boardCat=info">
							<h3 class="mb-0 title fs-3">정보공유</h3>
						</a>
					</div>
					<ul class="nav flex-column text-info">
					   <c:forEach var="item" items="${infoList}">
							<li class="nav-item">
							  <div>
								<a class="nav-link py-1" href="${path}/board-detail?boardCat=info&bno=${item.bno}">${item.boardTitle}
									<span class="ps-1 text-black-50" style="font-size: 0.9rem;"><fmt:formatDate value="${item.boardCreateDate}" pattern="MM.dd hh:mm"/></span>
								</a>
							  </div>
							</li>
					   </c:forEach>
					</ul>
				</div>
				<!-- 정보공유 끝 -->

				<!-- 자유게시판 시작 -->
				<div class="col-6">
					<!-- Card header -->
					<div class="card-header bg-transparent border-bottom p-0 mb-4">
						<a href="${path}/board-free?boardCat=free">
							<h3 class="mb-0 title fs-3">자유게시판</h3>
						</a>
					</div>
				  <c:forEach var="item" items="${freeList}">
					<ul class="nav flex-column text-info">
						<li class="nav-item">
							<a class="nav-link py-1" href="${path}/board-detail?boardCat=free&bno=${item.bno}">${item.boardTitle}
								<span class="ps-1 text-black-50" style="font-size: 0.9rem;"><fmt:formatDate value="${item.boardCreateDate}" pattern="MM.dd hh:mm"/></span>
							</a>
						</li>
					</ul>
			      </c:forEach>
				</div>
				<!-- 자유게시판 끝 -->

				<div class="my-4"></div>

				<div class="card">
					<div class="card-header bg-transparent border-bottom p-0 pb-3">
						<a href="${path}/board-review?boardCat=review">
							<h3 class="mb-0 title fs-2">후기</h3>
						</a>
					</div>
					<c:forEach var="item" items="${reviewList}">
					<div class="card card-body p-4 d-flex justify-content-center my-3">
						<!-- 후기 아이템 시작 -->
						<div class="card bg-transparent my-2">
							<div class="row g-3 g-sm-4 align-items-sm-center">
								<!-- Image -->
								<div class="col-4">
									<img src="${path}/resources/upload/board/${item.boardReFileNm}" class="card-img" alt="">
									<div class="card-img-overlay-top">
										<div class="d-flex justify-content-between">
											<span class="badge text-bg-warning" style="height: 1.5rem">공연</span>
										</div>
									</div>
								</div>
								<div class="col-8">
									<!-- card body -->
									<div class="card-body p-0">
										<h5 class="card-title">
											<a href="${path}/board-review?bno=${bno}" class="stretched-link title fs-4">${item.boardTitle}</a>
										</h5>
										<p class="flex-shrink-1 card-stars fs-6" style="font-size: 0.7rem;">
											<i class="fa fa-star text-warning"></i>
											<i class="fa fa-star text-warning"></i>
											<i class="fa fa-star text-warning"></i>
											<i class="fa fa-star-half-alt text-warning"></i>
											<i class="far fa-star text-warning"></i>
											<a class="btn position-relative z-index-99 fw-normal">
												<i class="far fa-thumbs-up pe-1"></i>123
											</a>
										</p>
										<div class="pb-3">
											${item.boardContent}
										</div>
										<!-- Author name and button -->
										<div class="d-flex justify-content-between align-items-center">
											<span class="small">
												<span class="text-black fs-5 fw-bold px-2">${item.name}</span>
												<fmt:formatDate value="${item.boardCreateDate}" pattern="MM.dd hh:mm:ss"/>
											</span>
											<a href="${path}/board-review?bno=${bno}" class="btn btn-link p-0 mb-0">Read more <i class="bi bi-arrow-up-right"></i></a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- 후기 아이템 끝 -->
					</div>
				  </c:forEach>
				</div>
			</div>
		</div>
	</section>
	<!-- =======================
	Blog grid END -->
</main>
<!-- **************** MAIN CONTENT END **************** -->

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
