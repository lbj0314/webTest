<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이 페이지 수정</title>
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
			<form action="./memberUpdateResult.jsp" method="post">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th colspan="2">회원 정보</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>아이디</td>
							<td><input type="text" name="id" value="<%= memberDTO.getId() %>" readonly="readonly"> </td>
						</tr>
						<tr>
							<td>비밀번호</td>
							<td><input type="password" name="pw" value="<%= memberDTO.getPw() %>" id="pw"></td>
						</tr>
						<tr>
							<td>비밀번호 확인</td>
							<td><input type="password" name="pwResult" value="" id="pwChk"></td>
						</tr>
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
						<input type="submit" class="btn btn-default" id="btn" value="완료">				
				&nbsp;<input type="reset" class="btn" value="취소" id="cancel">
			</form>
		</div>
	</div>
<script type="text/javascript">
	$("#cancel").click(function () {
		location.href= "./memberMypage.jsp";
	});
</script>
</body>
</html>