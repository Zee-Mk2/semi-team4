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
									<!-- Card body START -->
									<div class="card-body p-3">
										<!-- Avatar and content -->
										<div class="text-center mb-3">
											<!-- Avatar -->
											<div class="avatar avatar-xl mb-2">
												<img class="avatar-img rounded-circle border border-2 border-white"
													src="${path}/resources/upload/profile/${loginMember.reFileNm}" alt="">
											</div>
											<h6 class="mb-0">${loginMember.name}</h6>
											<a href="${path}/MyProfile" class="text-reset text-primary-hover small">${loginMember.id}</a>
											<hr>
										</div>

										<!-- Sidebar menu item START -->
										<ul class="nav nav-pills-primary-soft flex-column">
											<li class="nav-item">
												<a class="nav-link active" href="${path}/MyProfile"><i
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
												<a class="nav-link" href="${path}/pro-setting"><i
														class="bi bi-gear fa-fw me-2"></i>설정</a>
											</li>
											<li class="nav-item">
												<a class="nav-link text-danger bg-danger-soft-hover" href="${path}/logout"><i
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
							<!-- Personal info START -->
							<div class="card border">
								<!-- Card header -->
								<div class="card-header border-bottom">
									<h4 class="card-header-title">회원정보</h4>
								</div>

								<!-- Card body START -->
								<div class="card-body">
									<!-- Form START -->
									<form class="row g-3" action="${path}/MyProfile" method="post" enctype="multipart/form-data">
										<!-- Profile photo -->
										<div class="col-12">
											<label class="form-label">프로필 사진 업로드</label>
											<div class="d-flex align-items-center">
												<label class="position-relative me-4" for="upfile" title="Replace this pic">
													<!-- Avatar place holder -->
													<span class="avatar avatar-xl">
														<img id="uploadfile-1-preview" class="avatar-img rounded-circle border border-white border-3 shadow" src="${path}/resources/upload/profile/${loginMember.reFileNm}" alt="">
													</span>
												</label>
												<!-- Upload button -->
												<label class="btn btn-sm btn-outline-primary mb-0" for="upfile">변경</label>
												<input id="upfile" name="upfile" class="form-control d-none" type="file">
											</div>
										</div>

										<!-- Name -->
										<div class="col-md-6">
											<label class="form-label">이름<span class="text-danger">*</span></label>
											<input type="text" class="form-control" value="${loginMember.name}" name="name"
												placeholder="이름을 입력하세요." required>
										</div>

										<!-- phone number -->
										<div class="col-md-6">
											<label class="form-label">휴대폰 번호<span class="text-danger">*</span></label>
											<input type="text" class="form-control" value="${loginMember.phone}" name="phone"
												placeholder="휴대폰 번호를 입력하세요." required>
										</div>


										<!-- Date of birth -->
										<div class="col-md-6">
											<label class="form-label">생년월일<span class="text-danger">*</span></label>
											<input type="text" class="form-control flatpickr" value="${loginMember.birth}" name="birth"
												placeholder="생년월일을 입력하세요." data-date-format="Y-m-d" required>
										</div>

										<!-- Gender -->
										<div class="col-md-6">
											<label class="form-label">성별<span class="text-danger">*</span></label>
											<div class="d-flex gap-4">
												<div class="form-check radio-bg-light">
													<input class="form-check-input" type="radio" name="gender" value="M"
														id="M" ${loginMember.gender == 'M' ? 'checked ': ''} required>
													<label class="form-check-label" for="M">
														남자
													</label>
												</div>
												<div class="form-check radio-bg-light">
													<input class="form-check-input" type="radio" name="gender" value="F"
														id="F" ${loginMember.gender == 'F' ? 'checked ': ''} required>
													<label class="form-check-label" for="F">
														여자
													</label>
												</div>
											</div>
										</div>

										<!-- Address -->
										<div class="col-12">
											<label class="form-label">주소</label>
											<textarea class="form-control" rows="3" name="address"
												spellcheck="false">${loginMember.address}</textarea>
										</div>
										
										<input type="hidden" name="id" value="${loginMember.id}">

										<!-- Button -->
										<div class="col-12 text-end">
											<button type="submit" class="btn btn-outline-primary mb-0">저장</button>
										</div>
									</form>
									<!-- Form END -->
								</div>
								<!-- Card body END -->
							</div>
							<!-- Personal info END -->

							<!-- Update email START -->
							<div class="card border">
								<!-- Card header -->
								<div class="card-header border-bottom">
									<h4 class="card-header-title">이메일 변경</h4>
									<p class="mb-0">현재 이메일: <span class="text-primary">${loginMember.id}</span></p>
								</div>

								<!-- Card body START -->
								<div class="card-body">
									<form action="${path}/update-id" method="post">
										<!-- Email -->
										<label class="form-label">새 이메일을 입력하세요<span class="text-danger">*</span></label>
										<input type="email" class="form-control" placeholder="이메일 입력" name="id" required>

										<div class="text-end mt-3">
											<button type="submit" class="btn btn-outline-primary mb-0">변경</button>
										</div>
									</form>
								</div>
								<!-- Card body END -->
							</div>
							<!-- Update email END -->

							<!-- Update Password START -->
							<div class="card border">
								<!-- Card header -->
								<div class="card-header border-bottom">
									<h4 class="card-header-title">비밀번호 변경</h4>
								</div>

								<!-- Card body START -->
								<form class="card-body" action="${path}/updatePwd" method="post">
									<!-- Current password -->
									<div class="mb-3">
										<label class="form-label">현재 비밀번호</label>
										<input class="form-control" type="password" placeholder="현재 비밀번호" name="curPwd" value="">
									</div>
									<!-- New password -->
									<div class="mb-3">
										<label class="form-label">새 비밀번호를 입력하세요</label>
										<div class="input-group">
											<input class="form-control fakepassword" placeholder="새 비밀번호"
												type="password" name="password" id="password">
											<span class="input-group-text p-0 bg-transparent align-items-center">
												<i class="fakepasswordicon fas fa-eye-slash cursor-pointer p-2 mt-2"></i>
											</span>
										</div>
									</div>
									<!-- Confirm -->
									<div class="mb-3">
										<label class="form-label">새 비밀번호 확인</label>
										<input class="form-control" type="password" placeholder="새 비밀번호 확인" id="pwdCheck" value="">
									</div>

									<div class="text-end">
										<button type="submit" class="btn btn-outline-primary mb-0" id="updatePwd">변경</button>
									</div>
								</form>
								<!-- Card body END -->
							</div>
							<!-- Update Password END -->
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

<script type="text/javascript">
const fileInput = document.getElementById('upfile');
const previewImg = document.getElementById('uploadfile-1-preview');

fileInput.addEventListener('change', function(event) {
  const file = event.target.files[0];
  
  if (file) {
    const reader = new FileReader();
    
    reader.addEventListener('load', function(event) {
      previewImg.src = event.target.result;
    });
    
    reader.readAsDataURL(file);
  }
});
</script>

<script>
	$(document).ready(() => {
		$("#updatePwd").on("click", (e) => {
			let pass1 = $("#password").val();			
			let pass2 = $("#pwdCheck").val();
			
			if (pass1.trim() !== pass2.trim()) {
				alert("비밀번호가 일치하지 않습니다.");
				
				$("#password").val("");
				$("#pwdCheck").val("");
				$("#password").focus();
				
				return false;
			}		
		});
	});
</script>
