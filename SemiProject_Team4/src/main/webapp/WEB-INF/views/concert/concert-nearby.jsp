<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/concert-header.jsp" />

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
    Page Banner START -->
	<section class="py-0">
		<div class="container">
			<div class="row mt-4 align-items-center">
				<div class="col-12">
					<!-- Card START -->
					<div class="card bg-light overflow-hidden px-sm-5">
						<div class="row align-items-center g-4">
							<!-- Content -->
							<div class="col-sm-9">
								<div class="card-body">
									<!-- Title -->
									<div class="m-0 h3 title text-center ps-9">주변 공연장</div>
									<div class="text-center ps-9">내 주변 공연장을 찾아보세요.</div>

								</div>
							</div>
						</div>
					</div>
					<br>
					<br>
				</div>
			</div>
		</div>
	</section>
	<!-- Card END -->

	<!-- =======================
    Page Banner END -->
	<div>
		<div>
			<script>
				function setCookie(name, value, expiredays) {
					var todayDate = new Date();
					todayDate.setDate(todayDate.getDate() + expiredays);
					document.cookie = name + "=" + escape(value)
							+ "; path=/; expires=" + todayDate.toGMTString()
							+ ";";
				}

				function closeWin() {
					if (document.notice_form.chkbox.checked) {
						setCookie("maindiv", "done", 1);
					}
					document.getElementById('divpop').style.visibility = "hidden";
				}
			</script>
			<div id="map"
				style="border-radius: 1rem; width: 70%; height: 700px; left: 280px;"></div>
		</div>
	</div>

	<script type="text/javascript"
		src="${path}/resources/assets/js/kakaomap.js"></script>
	<script>
		var mapContainer = document.getElementById('map');
		var mapOption = {
			center : new kakao.maps.LatLng(34.947983, 127.697841), // 지도의 중심좌표
			level : 8
		// 지도의 확대 레벨
		};

		// 지도를 생성합니다
		var map = new kakao.maps.Map(mapContainer, mapOption);

		// 마커를 표시할 위치와 title 객체 배열입니다 
		var positions = [
		    {
		        title: '광양시문화예술회관', 
		        latlng: new kakao.maps.LatLng(34.9799827, 127.58758920000002)
		    },
		    {
		        title: '광양커뮤니티센터', 
		        latlng: new kakao.maps.LatLng(34.9464898, 127.70303590000003)
		    },
		    {
		        title: '순천문화예술회관', 
		        latlng: new kakao.maps.LatLng(34.9705841, 127.4853144)
		    }
		];

		// 마커 이미지의 이미지 주소입니다
		var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
		    
		for (var i = 0; i < positions.length; i ++) {
		    
		    // 마커 이미지의 이미지 크기 입니다
		    var imageSize = new kakao.maps.Size(26, 38); 
		    
		    // 마커 이미지를 생성합니다    
		    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
		    
		    // 마커를 생성합니다
		    var marker = new kakao.maps.Marker({
		        map: map, // 마커를 표시할 지도
		        position: positions[i].latlng, // 마커를 표시할 위치
		        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
		        image : markerImage // 마커 이미지 
		    });
		}
	</script>
	<br>
	<br>


	<!-- // 추천목록 -->
	<div class="container">
		<div class="tbBox w-100">
			<div class="h3 title">주변 공연장</div>
			<table class="table table-striped table-bordered">
				<colgroup>
					<col>
					<col style="width: 12.5%">
					<col style="width: 12.5%">
					<col style="width: 12.5%">
					<col style="width: 12.5%">
					<col style="width: 10%">
				</colgroup>
				<thead class="thead-dark">
					<tr>
						<th scope="col">주변 공연장 (위치)</th>
						<th scope="col">홀 수</th>
						<th scope="col">객석수</th>
						<th scope="col">개관연도</th>
						<th scope="col">지역(구,군)</th>
						<th scope="col">상세보기</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="item" items="${items}">
						<tr>
							<td>${item.conHallNm}</td>
							<td>${item.numOfHalls}</td>
							<td>${item.numOfSeats}</td>
							<td>${item.openYear}</td>
							<td>${item.sidoNm} ${item.gugunNm}</td>
							<td><a href="${item.homepage}"
								class="btn btn-outline-primary">상세 보기</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

		</div>
	</div>
</main>
<!-- **************** MAIN CONTENT END **************** -->

<jsp:include page="/WEB-INF/views/common/footer.jsp" />