<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이 페이지</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file="../layout/nav.jsp" %>
<%
	if(memberDTO == null){
		String msg = "로그인 해주세요.";
		
		request.setAttribute("msg", msg);
		request.setAttribute("path", "../index.jsp");
		RequestDispatcher view = request.getRequestDispatcher("../common/common_result.jsp");
		view.forward(request, response);
	}

%>

	<div class="container">
		<div class="row">
			<form action="./memberMypage.jsp" method="post">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th colspan="2">회원 정보</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>아이디</td>
							<td><input type="text" name="id" value="<%= memberDTO.getId() %>"> </td>
						</tr>
					<%-- 	<tr>
							<td>비밀번호</td>
							<td><input type="password" name="pw" value="<%= memberDTO.getPw() %>"></td>
						</tr> --%>
						<tr>
							<td>이름</td>
							<td><input type="text" name="name" value="<%= memberDTO.getName() %>"></td>
						</tr>
						<tr>
							<td>이메일</td>
							<td><input type="email" name="email" value="<%= memberDTO.getEmail() %>"></td>
						</tr>
						<tr>
							<td>전화번호</td>
							<td><input type="tel" name="phone" value="<%= memberDTO.getPhone()%>"></td>
						</tr>
						<%if(memberDTO.getGrade()==0){ %>
						<tr>
							<td>등급</td>
							<td><input type="text" name="grade" value="<%= memberDTO.getGrade()%>"></td>
						</tr>
						<%} %>
					</tbody>
				</table>
				<a class="btn btn-primary" href="./memberUpdateForm.jsp">수정</a>
				&nbsp;<a class="btn btn-danger" href="./memberDelete.jsp?id=<%=memberDTO.getId() %>.jsp">탈퇴</a>
			</form>
		</div>
	</div>

</body>
</html>