<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<!-- JSTL 라이브러리 설정 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="form">
		<b id="mymapx" ></b> 
		<b id="mymapy" ></b>
			<input type="button"
			onclick="post_to_url();" value="검색"> 
	</form>

	<div id="map" style="width: 100%; height: 350px;"></div>

결과페이지
	<c:if test="${not empty sessionScope.LocationTour}">
		<table border="1" width="1200">
			<tr>
				<th>이미지</th>
				<th>관광지 이름</th>
				<th>주소</th>
			</tr>

			<c:forEach var="vo" items="${sessionScope.LocationTour}">
				<tr>
					<td><img src="${vo.firstimage }" width=80 height=80 /></td>
					<td><a
						href="Search.do?cmd=locationDetail&contentid=${vo.contentid}">
							${vo.title }</a></td>
					<td>${vo.address }</td>
				</tr>
			</c:forEach>
		</table>
	</c:if>

	<script type="text/javascript"
		src="//apis.daum.net/maps/maps3.js?apikey=950c9c587d098e4789f5467b057b1da7"></script>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨 
		};

		var mymapx = document.getElementById("mymapx");
		var mymapy = document.getElementById("mymapy");
		var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

		var lat,lon;
		// HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
		if (navigator.geolocation) {

			// GeoLocation을 이용해서 접속 위치를 얻어옵니다
			navigator.geolocation.getCurrentPosition(function(position) {

				lat = position.coords.latitude; // 위도
				lon = position.coords.longitude; // 경도

				var locPosition = new daum.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
				message = '<div style="padding:5px;">여기에 계신가요?!</div>'; // 인포윈도우에 표시될 내용입니다

				mymapx.innerHTML = position.coords.latitude;
				mymapy.innerHTML = position.coords.longitude;
				// 마커와 인포윈도우를 표시합니다
				displayMarker(locPosition, message);

			});

		} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다

			var locPosition = new daum.maps.LatLng(33.450701, 126.570667), message = 'geolocation을 사용할수 없어요..'

			mymapx.innerHTML = position.coords.latitude;
			mymapy.innerHTML = position.coords.longitude;
			displayMarker(locPosition, message);
		}

		function post_to_url(path, params, method) {
			method = method || "post";
			var form = document.createElement("form");
			form.setAttribute("method", method);
			form.setAttribute("action", 'Search.do?cmd=locationsearching');

			// 첫번째 데이터
			var hiddenField = document.createElement("input");
			hiddenField.setAttribute("type", "hidden");
			hiddenField.setAttribute("name", "X");
			hiddenField.setAttribute("value",lon);
			form.appendChild(hiddenField);

			// 두번쨰 데이터 
			hiddenField = document.createElement("input");
			hiddenField.setAttribute("type", "hidden");
			hiddenField.setAttribute("name", "Y");
			hiddenField.setAttribute("value", lat);
			form.appendChild(hiddenField);

			document.body.appendChild(form);
			form.submit();
		}
		// 지도에 마커와 인포윈도우를 표시하는 함수입니다
		function displayMarker(locPosition, message) {

			// 마커를 생성합니다
			var marker = new daum.maps.Marker({
				map : map,
				position : locPosition
			});

			var iwContent = message, // 인포윈도우에 표시할 내용
			iwRemoveable = true;

			// 인포윈도우를 생성합니다
			var infowindow = new daum.maps.InfoWindow({
				content : iwContent,
				removable : iwRemoveable
			});

			// 인포윈도우를 마커위에 표시합니다 
			infowindow.open(map, marker);

			// 지도 중심좌표를 접속위치로 변경합니다
			map.setCenter(locPosition);
		}
	</script>
</body>
</html>