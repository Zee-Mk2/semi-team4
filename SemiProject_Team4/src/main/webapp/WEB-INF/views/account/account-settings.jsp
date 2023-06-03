<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/camping-header.jsp"/>

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
												<a class="nav-link" href="${path}/MyWishList"><i
														class="bi bi-heart fa-fw me-2"></i>북마크</a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="${path}/myReview"><i
														class="bi bi-pencil-square fa-fw me-2"></i>내 리뷰</a>
											</li>
											<li class="nav-item">
												<a class="nav-link active" href="${path}/pro-setting"><i
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

						<div class="vstack gap-4">
							<!-- Notifications START -->
							<div class="card border">
								<!-- Card header -->
								<div class="card-header border-bottom">
									<h4 class="card-header-title">설정</h4>
								</div>

								<!-- Form START -->
								<form class="card-body">

									<!-- Switch -->
									<div
										class="form-check form-switch form-check-md d-flex justify-content-between mb-4">
										<label class="form-check-label ps-0 pe-4" for="checkPrivacy1">로그인 시 이메일로
											알림</label>
										<input class="form-check-input flex-shrink-0" type="checkbox" id="checkPrivacy1"
											checked>
									</div>

									<!-- Switch -->
									<div
										class="form-check form-switch form-check-md d-flex justify-content-between mb-4">
										<label class="form-check-label ps-0 pe-4" for="checkPrivacy2">예약 지원 알림
											설정</label>
										<input class="form-check-input flex-shrink-0" type="checkbox" id="checkPrivacy2"
											checked>
									</div>

									<!-- Switch -->
									<div
										class="form-check form-switch form-check-md d-flex justify-content-between mb-4">
										<label class="form-check-label ps-0 pe-4" for="checkPrivacy3">예약 프로모션에 대한 이메일
											전송</label>
										<input class="form-check-input flex-shrink-0" type="checkbox" id="checkPrivacy3"
											checked>
									</div>

									<!-- Switch -->
									<div
										class="form-check form-switch form-check-md d-flex justify-content-between mb-4">
										<label class="form-check-label ps-0 pe-4" for="checkPrivacy7">북마크 관련 키워드
											알림</label>
										<input class="form-check-input flex-shrink-0" type="checkbox" id="checkPrivacy7"
											checked>
									</div>

									<!-- Switch -->
									<div
										class="form-check form-switch form-check-md d-flex justify-content-between mb-4">
										<label class="form-check-label ps-0 pe-4" for="checkPrivacy4">공개 프로필 표시
											설정</label>
										<input class="form-check-input flex-shrink-0" type="checkbox"
											id="checkPrivacy4">
									</div>

									<!-- Switch -->
									<div
										class="form-check form-switch form-check-md d-flex justify-content-between mb-4">
										<label class="form-check-label ps-0 pe-4" for="checkPrivacy6">모든 온라인 결제에 대한 SMS
											설정</label>
										<input class="form-check-input flex-shrink-0" type="checkbox"
											id="checkPrivacy6">
									</div>

									<!-- Button -->
									<div class="d-sm-flex justify-content-end">
										<button type="button" class="btn btn-sm btn-custom me-2 mb-0">저장</button>
										<a href="${path}/#" class="btn btn-sm btn-custom4 mb-0">취소</a>
									</div>
								</form>
								<!-- Form END -->
							</div>
							<!-- Notifications END -->

							<!-- Security settings START -->
							<div class="card border">
								<!-- Card header -->
								<div class="card-header border-bottom">
									<h4 class="card-header-title" style="color:gray;">전체 로그아웃</h4>
								</div>

								<!-- Card body START -->
								<div class="card-body">

									<!-- 로그아웃 -->
									<div>
										<form>
											<h6>로그아웃 관리</h6>
											<p class="mb-2">밑의 로그아웃을 선택하면 이 장치를 제외한 모든 장치에서 로그아웃됩니다. 이 작업은 최대 10분이 소요될 수
												있습니다.</p>
											<div class="col-12 text-end">
												<button class="btn btn-sm btn-custom">로그아웃</button>
											</div>
										</form>
									</div>
								</div>
							</div>

							<!-- Security settings START -->
							<div class="card border">
								<!-- Card header -->
								<div class="card-header border-bottom">
									<h4 class="card-header-title" style="color:gray;">회원탈퇴</h4>
								</div>

								<!-- Card body START -->
								<div class="card-body">
									<!-- Two factor -->
									<form action="${path}/member/delete" method="post">
										<h6>현재 비밀번호를 입력해주세요</h6>
										<input type="password" class="form-control mb-2" name="password" placeholder="정말 탈퇴하시겠습니까?">

										<label for="cancelMembership">
											<input type="checkbox" id="cancelMembership" name="cancelMembership"> 회원탈퇴에
											동의합니다.
										</label>
										<br>
										<div class="col-12 text-end">
											<input type="submit" class="btn btn-sm btn-custom3" value="탈퇴하기" id="deleteMember">
										</div>
								     </form>
								     
								     <script type="text/javascript">
									   	  $(function () {
											$("#deleteMember").submit((e) => {
												if(confirm("정말로 탈퇴하시겠습니까?!")) {
													location.replace('${path}/member/delete');
												}
											});
										  });
									</script>
								</div>
							</div>
							<!-- Card body END -->
						</div>
						<!-- Security settings END -->
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

<script src="${path}/resources/assets/vendor/stepper/js/bs-stepper.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>