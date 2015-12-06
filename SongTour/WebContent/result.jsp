<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder"%>

<!-- JSTL 라이브러리 설정 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	결과페이지
	<c:if test="${not empty sessionScope.resultTour }">
		<table border="1" width="1200">
			<tr>
				<th>이미지</th>
				<th>관광지 이름</th>
				<th>주소</th>
			</tr>

			<c:forEach var="vo" items="${sessionScope.resultTour}">
				<tr>
					<td><img src="${vo.firstimage }" width=80 height=80 /></td>
					<td><a
						href="Search.do?cmd=searchinfo&contentid=${vo.contentid}">
							${vo.title }</a></td>
					<td>${vo.address }</td>
				</tr>
			</c:forEach>
		</table>
	</c:if>


</body>
</html>