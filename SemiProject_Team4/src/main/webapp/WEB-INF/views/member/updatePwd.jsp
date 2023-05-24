<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호변경</title>
<script src="${path}/resources/js/jquery-3.7.0.js"></script>
<style>
    div#updatePassword-container{
        background:yellowgreen;
    }
    div#updatePassword-container table {
        margin:0 auto;
        border-spacing: 20px;
    }
    div#updatePassword-container table tr:last-of-type td {
        text-align:center;
    }
</style>
</head>
<body>
	<div id="updatePassword-container">
		<form action="${path}/member/updatePwd" method="POST">
			<table>
				<tr>
					<th>변경할 비밀번호</th>
					<td>
						<input type="password" name="password" id="pass1" required>
					</td>
				</tr>
				<tr>
					<th>비밀번호확인</th>
					<td>
						<input type="password" id="pass2">
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="변경" id="updateSubmit"onclick="return validate();">
						&nbsp;
						<input type="button" value="닫기" onclick="self.close();">
					</td>
				</tr>
			</table>
		</form>
	</div>
	<script>
		$(document).ready(() => {
			$("#updateSubmit").on("click", (e) => {
				let pass1 = $("#pass1").val();			
				let pass2 = $("#pass2").val();
				
				if(pass1.trim() != pass2.trim()) {
					alert("비밀번호가 일치하지 않습니다.");
					
					$("#pass1").val("");
					$("#pass2").val("");
					$("#pass1").focus();
					
					return false;
				}		
			});
		});
	</script>
</body>
</html>












