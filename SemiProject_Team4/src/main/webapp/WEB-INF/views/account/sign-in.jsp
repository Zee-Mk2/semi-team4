<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Booking - Multipurpose Online Booking Theme</title>

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

	<!-- Google Font -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;700&family=Poppins:wght@400;500;700&display=swap">

	<!-- Plugins CSS -->
	<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/font-awesome/css/all.min.css">
	<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/bootstrap-icons/bootstrap-icons.css">

	<!-- Theme CSS -->
	<link rel="stylesheet" type="text/css" href="${path}/resources/assets/css/style.css">

</head>

<body>

<!-- **************** MAIN CONTENT START **************** -->
<main>
	
<!-- =======================
Main Content START -->
<section class="vh-xxl-100">
	<div class="container h-100 d-flex px-0 px-sm-4">
		<div class="row justify-content-center align-items-center m-auto">
			<div class="col-12">
				<div class="bg-mode shadow rounded-3 overflow-hidden">
					<div class="row g-0">
						<!-- Vector Image -->
						<div class="col-lg-6 d-flex align-items-center order-2 order-lg-1">
							<div class="p-3 p-lg-5">
								<img src="${path}/resources/assets/images/bg/bg-login.png" alt="">
							</div>
							<!-- Divider -->
							<div class="vr opacity-1 d-none d-lg-block"></div>
						</div>
		
						<!-- Information -->
						<div class="col-lg-6 order-1">
							<div class="p-4 p-sm-7">
								<!-- Logo -->
								<div class="text-center">
									<a href="${pageContext.request.contextPath}">
										<img class="h-50px mb-4" src="${path}/resources/assets/images/logo-1.png" alt="logo">
									</a>
								</div>
		
								<!-- Form START -->
								<form class="mt-4 text-start" action="${path}/sign-in" method="post">
									<!-- ID(이메일 형식) -->
									<div class="mb-3">
										<input type="text" id="id" name="inputId" class="form-control" placeholder="이메일을 입력해주세요" required>
									</div>
									<!-- Password -->
									<div class="mb-3 position-relative">
										<input class="form-control fakepassword" type="password" id="password" name="inputPwd" placeholder="비밀번호를 입력해주세요" required>
										<span class="position-absolute top-50 end-0 translate-middle-y p-0">
											<i class="fakepasswordicon fas fa-eye-slash cursor-pointer p-2"></i>
										</span>
									</div>
									<!-- Remember me -->
									<div class="mb-3 d-sm-flex justify-content-between">
										<div>
											<input type="checkbox" class="form-check-input" id="rememberCheck">
											<label class="form-check-label" for="rememberCheck">아이디 기억하기</label>
										</div>
									</div>
									<!-- Button -->
									<div><button type="submit" class="btn btn-primary w-100 mb-0 fs-5">로그인</button></div>
		
									<!-- Divider -->
									<div class="position-relative my-4">
										<hr>
									</div>
		
									<!-- Social login -->
<!-- 									<div class="vstack gap-3 text-center"> -->
<%-- 										<a href="#"><img src="${path}/resources/assets/images/social_login/kakao_login_medium_wide.png"></a> --%>
<!-- 									</div> -->

									<p class="mb-0 mt-3 text-center">
										<a href="sign-up.html" class="px-3 text-black-50">회원가입</a>|<a href="forgot-password.html" class="px-3 text-black-50">비밀번호 찾기</a>
									</p>
		
									<!-- Copyright -->
									<p class="mb-0 mt-3 text-center">© 2023. 주말일기. All rights reserved.</p>
								</form>
								<!-- Form END -->
							</div>		
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- =======================
Main Content END -->

</main>
<!-- **************** MAIN CONTENT END **************** -->

<!-- Back to top -->
<div class="back-top"></div>

<!-- Bootstrap JS -->
<script src="${path}/resources/assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

<!-- ThemeFunctions -->
<script src="${path}/resources/assets/js/functions.js"></script>

</body>
</html>