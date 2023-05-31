<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>


<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="회원정보 조회(수정)" name="title"/>
</jsp:include>

<style>
	section #enroll-container {text-align: center;}
	section #enroll-container input {margin: 3px;}
	section #enroll-container table {margin: 0 auto;}
	section #enroll-container table th {padding: 0 10px; text-align: right;}
	section #enroll-container table td {padding: 0 10px;text-align: left;}
</style>

<section id="content">
	<h3 align="center">회원정보 조회(수정)</h3>
	<form id="enroll-container" name="memberEnrollFrm" action="${path}/member/update" method="post">
		<table>
			<tr>
				<th>아이디</th>
				<td>
					<input type="text" name="id" id="id" value="${loginMember.id}" required readonly>
				</td>
			</tr>		
			<tr>
				<th>이름</th>
				<td>
					<input type="text" name="name" id="name" value="${loginMember.name}" required>
				</td>
			</tr>		
			<tr>
				<th>전화번호</th>
				<td>
					<input type="tel" name="phone" maxlength="11" value="${loginMember.phone}" placeholder="(-없이)01012345678">
				</td>
			</tr>		
			<tr>
				<th>이메일</th>
				<td>
					<input type="email" name="email" id="email" value="${loginMember.email}" >
				</td>
			</tr>		
			<tr>
				<th>주소</th>
				<td>
					<input type="text" name="address" id="address" value="${loginMember.address}">
				</td>
			</tr>		
			<tr>
				<th>취미</th>
				<td>
					<label><input type="checkbox" name="hobby" value="운동"
					${fn:contains(loginMember.hobby, '운동') ? 'checked' : ''} 
					>운동</label> 
					<label><input type="checkbox" name="hobby" value="수영"
					${fn:contains(loginMember.hobby, '수영') ? 'checked' : ''} 
					>수영</label> 
					<label><input type="checkbox" name="hobby" value="게임"
					${fn:contains(loginMember.hobby, '게임') ? 'checked' : ''} 
					>게임</label> 
					<label><input type="checkbox" name="hobby" value="독서"
					${fn:contains(loginMember.hobby, '독서') ? 'checked' : ''} 
					>독서</label> 
					<label><input type="checkbox" name="hobby" value="여행"
					${fn:contains(loginMember.hobby, '여행') ? 'checked' : ''} 
					>여행</label> 
				</td>
			</tr>		
		</table>
		<input type="button" value="비밀번호 변경" id="updatePwd">
		<input type="submit" value="정보수정">
		<input type="button" value="탈퇴" id="deleteMember">
	</form>
</section>

<script type="text/javascript">
	$(function () {
		$("#deleteMember").click((e) => {
			if(confirm("정말로 탈퇴하시겠습니까?!")) {
				location.replace('${path}/member/delete');
			}
		});
		
		$("#updatePwd").click((e) => {
			const url = "${path}/member/updatePwd";
			const status = "left=500px,top=200px,width=400px,height=210px"
			window.open(url, "비밀번호 수정", status);
		});
	});
</script>


<jsp:include page="/WEB-INF/views/common/footer.jsp"/>





















