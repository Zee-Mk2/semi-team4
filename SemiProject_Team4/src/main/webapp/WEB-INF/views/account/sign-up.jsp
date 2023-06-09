<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="ko">
<head>
	<title>주말일기</title>

	<!-- Meta Tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="author" content="Webestica.com">
	<meta name="description" content="Booking - Multipurpose Online Booking Theme">

	<!-- Dark mode -->
	<script type="text/javascript">
		var theme = localStorage.getItem('data-theme');
		var root = document.documentElement;
		if (theme === 'dark' && theme !== undefined) {
			root.classList.add('dark-mode');
		} else {
			root.classList.remove('dark-mode');
		}
	</script>

	<!-- Favicon -->
	<link rel="shortcut icon" href="${path}/resources/assets/images/favicon.ico">

	<!-- Plugins CSS -->
	<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/font-awesome/css/all.min.css">
	<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/bootstrap-icons/bootstrap-icons.css">
	<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/tiny-slider/tiny-slider.css">
	<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/glightbox/css/glightbox.css">
	<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/choices/css/choices.min.css">
	<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/flatpickr/css/flatpickr.min.css">
	
	
	<script src="${path}/resources/assets/vendor/flatpickr/ko.js"></script>
	<script src="${path}/resources/assets/vendor/flatpickr/js/flatpickr.min.js"></script>

	<!-- Theme CSS -->
	<link rel="stylesheet" type="text/css" href="${path}/resources/assets/css/style.css">

	<!-- 폰트 -->
	<!-- 노토산스 -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	<!-- 나눔스퀘어 -->
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@2.0/nanumsquare.css">
</head>

<body>


<!-- **************** MAIN CONTENT START **************** -->
<main>
	
	<!-- =======================
	Content START -->
	<section>
		<div class="container">
			<div class="row py-5 mb-9">
	
				<!-- Main content START -->
				<div>

					<div class="text-center">
						<a href="${pageContext.request.contextPath}">
							<img src="${path}/resources/assets/images/logo-1.png" class="w-25 mb-7">
						</a>
					</div>
	
					<div class="vstack gap-4">
						<!-- Personal info START -->
						<div class="card border">
							<!-- Card body START -->
							<div class="card-body">
								<!-- Form START -->
								<form class="row g-3" action="${path}/sign-up" method="post" enctype="multipart/form-data">
									<!-- Profile photo -->
									<div class="col-12">
										<label class="form-label">프로필 사진 업로드</label>
										<div class="d-flex align-items-center">
											<label class="position-relative me-4" for="upfile" title="Replace this pic">
												<!-- Avatar place holder -->
												<span class="avatar avatar-xl">
													<img id="uploadfile-1-preview" class="avatar-img rounded-circle border border-white border-3 shadow" src="${path}/resources/upload/profile/default-avatar.png" alt="">
												</span>
											</label>
											<!-- Upload button -->
											<label class="btn btn-sm btn-outline-primary mb-0" for="upfile">변경</label>
											<input id="upfile" name="upfile" class="form-control d-none" type="file">
										</div>
									</div>
	
									<!-- 이메일 -->
									<div class="col-md-6">
										<label class="form-label">이메일<span class="text-danger">*</span></label>
										<input id="id" name="id" type="email" class="form-control" value="" placeholder="example@gmail.com" required>
									</div>

									<!-- 이름 -->
									<div class="col-md-6">
										<label class="form-label">이름<span class="text-danger">*</span></label>
										<input id="name" name="name"  type="text" class="form-control" value="" placeholder="이름을 입력해주세요" required>
									</div>
	
									<!-- 비밀번호 -->
									<div class="col-md-6">
										<label class="form-label">비밀번호<span class="text-danger">*</span></label>
										<input id="password" name="password"  type="password" class="form-control" value="" placeholder="" required>
									</div>
	
									<!-- 비밀번호 확인 -->
									<div class="col-md-6">
										<label class="form-label">비밀번호 확인<span class="text-danger">*</span></label>
										<input id="passwordCheck" type="password" class="form-control" value="" placeholder="" required>
									</div>
	
									<!-- 전화번호 -->
									<div class="col-md-6">
										<label class="form-label">휴대폰 번호<span class="text-danger">*</span></label>
										<input id="phone" name="phone" type="number" class="form-control" value="" placeholder="- 없이 숫자만 입력해주세요 ex. 01012341234" required>
									</div>
	
									<!-- 생년월일 -->
									<div class="col-md-6">
										<label class="form-label">생년월일<span class="text-danger">*</span></label>
										<input id="datePicker" name="birth" type="date" class="form-control" placeholder="생년월일을 선택해주세요." data-date-format="Y-m-d">
									</div>
								    <script>
								        flatpickr("#datePicker", {
								        	locale: Korean,
								        });
								    </script>
	
									<!-- 선호지역 -->
									<div class="col-md-6">
										<label class="form-label">선호지역</label>
										<div class="form-control">
											<select class="form-select js-choice" name="favDistrict">
												<option value="">지역 선택</option>
												<option>서울/인천/경기</option>
												<option>부산/울산/경남</option>
												<option>대구/경북</option>
												<option>대전/충청</option>
												<option>광주/전남</option>
												<option>전북</option>
												<option>강원</option>
												<option>제주</option>
											</select>
										</div>
									</div>

									<!-- Gender -->
									<div class="col-md-6">
										<label class="form-label">성별<span class="text-danger">*</span></label>
										<div class="d-flex gap-4 mt-3">
											<div class="form-check radio-bg-light">
												<input class="form-check-input" type="radio" name="gender" value="M" checked="" required>
												<label class="form-check-label" for="gender1">
													남
												</label>
											</div>
											<div class="form-check radio-bg-light">
												<input class="form-check-input" type="radio" name="gender" value="F" required>
												<label class="form-check-label" for="gender2">
													여
												</label>
											</div>
										</div>
									</div>
	
	
									<!-- Address -->
									<div class="col-12">
										<label class="form-label">주소</label>
										<textarea class="form-control" rows="3" spellcheck="false" name="address" id="address"></textarea>
									</div>
									
									
									<!-- Button -->
									<div class="row mt-4">
										<div class="col-4">
											<a href="sign-in" class="btn btn-danger mb-0">로그인 창으로</a>
										</div>
										<div class="col-4 text-center mt-2">
											© 2023. 주말일기. All rights reserved.
										</div>
										<div class="col-4 text-end">
											<input type="submit" id="enrollSubmit" value="회원가입" class="btn btn-secondary mb-0" >
										</div>
									</div>
								</form>
								<!-- Form END -->
							</div>
							<!-- Card body END -->
						</div>
						<!-- Personal info END -->
						
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


<!-- Back to top -->
<div class="back-top"></div>

<!-- Bootstrap JS -->
<script src="${path}/resources/assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

<!-- Vendors -->
<script src="${path}/resources/assets/vendor/tiny-slider/tiny-slider.js"></script>
<script src="${path}/resources/assets/vendor/glightbox/js/glightbox.js"></script>
<script src="${path}/resources/assets/vendor/choices/js/choices.min.js"></script>
<script src="${path}/resources/assets/vendor/flatpickr/js/flatpickr.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>

<!-- ThemeFunctions -->
<script src="${path}/resources/assets/js/functions.js"></script>

<script>
	$(document).ready(() => {
		$("#enrollSubmit").on("click", (e) => {
			let pass1 = $("#password").val();			
			let pass2 = $("#passwordCheck").val();
			
			if (pass1.trim() !== pass2.trim()) {
				alert("비밀번호가 일치하지 않습니다.");
				
				$("#password").val("");
				$("#passwordCheck").val("");
				$("#password").focus();
				
				return false;
			}
			if (pass1.length > 50) {
				alert("비밀번호가 너무 깁니다.");

				$("#password").val("");
				$("#passwordCheck").val("");
				$("#password").focus();
				
				return false;
			}
			
			let email = $("#id").val();
			if (email.length > 25) {
				alert("이메일이 25자 이상입니다.");
				
				$("#id").val("");
				$("#id").focus();
				
				return false;
			}
			
			let phone = $("#phone").val();
			if (phone.length > 12) {
				alert("휴대폰 번호의 길이가 너무 깁니다.");
				
				$("#phone").val("");
				$("#phone").focus();
				
				return false;
			}
			
			let address = $("#address");
			if (address.length > 50) {
				alert("주소의 길이가 너무 깁니다.");
				
				$("#address").val("");
				$("#address").focus();
			}
		});
	});
</script>

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

</body>
</html>
