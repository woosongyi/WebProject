<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <!-- JSTL 라이브러리 설정 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<style>
.wrap {
	position: absolute;
	left: 0;
	bottom: 40px;
	width: 288px;
	height: 132px;
	margin-left: -144px;
	text-align: left;
	overflow: hidden;
	font-size: 12px;
	font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
	line-height: 1.5;
}

.wrap * {
	padding: 0;
	margin: 0;
}

.wrap .info {
	width: 286px;
	height: 120px;
	border-radius: 5px;
	border-bottom: 2px solid #ccc;
	border-right: 1px solid #ccc;
	overflow: hidden;
	background: #fff;
}

.wrap .info:nth-child(1) {
	border: 0;
	box-shadow: 0px 1px 2px #888;
}

.info .title {
	overflow: visible;
	text-overflow: ellipsis;
	padding: 5px 0 0 10px;
	height: 30px;
	background: #eee;
	border-bottom: 1px solid #ddd;
	font-size: 18px;
	font-weight: bold;
}

.info .close {
	position: absolute;
	top: 10px;
	right: 10px;
	color: #888;
	width: 17px;
	height: 17px;
	background:
		url('http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');
}

.info .close:hover {
	cursor: pointer;
}

.info .body {
	position: relative;
	overflow: hidden;
}

.info .desc {
	position: relative;
	margin: 13px 0 0 90px;
	height: 75px;
}

.desc .ellipsis {
	white-space: nowrap;
	overflow: visible;
	text-overflow: ellipsis;
}

.desc .jibun {
	font-size: 11px;
	color: #888;
	margin-top: -2px;
}

.info .img {
	position: absolute;
	top: 6px;
	left: 5px;
	width: 73px;
	height: 71px;
	border: 1px solid #ddd;
	color: #888;
	overflow: hidden;
}

.info:after {
	content: '';
	position: absolute;
	margin-left: -12px;
	left: 50%;
	bottom: 0;
	width: 22px;
	height: 12px;
	background:
		url('http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')
}

.info .link {
	color: #5085BB;
}
</style>
<title>Insert title here</title>
</head>
<body>
상세보기
	<c:if test="${not empty requestScope.LocationTourinfo }">
		<table border="1" width="1200">
			<tr>
				<th>이미지</th>
				<th>관광지 이름</th>
				<th>주소</th>
				<th>연락처</th>
				<th>개요</th>
			</tr>
			<tr>
				<th><img src="${requestScope.LocationTourinfo.firstimage }" width=150
					height=150 /></th>
				<th>${requestScope.LocationTourinfo.title }</th>
				<th>${requestScope.LocationTourinfo.address }<br>
					${requestScope.LocationTourinfo.address2 }
				</th>
				<th>전화명 : ${requestScope.LocationTourinfo.telname }<br> 전화번호 :
					${requestScope.LocationTourinfo.tel }<br> 홈페이지 :
					${requestScope.LocationTourinfo.homepage }
				</th>
				<th>${requestScope.LocationTourinfo.overview }</th>
			</tr>
		</table>

		<!-- 지도를 표시할 div 입니다 -->
		<div id="map" style="width: 500px; height: 400px;"></div>

		<script type="text/javascript"
			src="//apis.daum.net/maps/maps3.js?apikey=950c9c587d098e4789f5467b057b1da7"></script>

		<script>
			var title = "${requestScope.LocationTourinfo.title}";
			var address = "${requestScope.LocationTourinfo.address}";
			var image = "${requestScope.LocationTourinfo.firstimage}";
			var mapx = "${requestScope.LocationTourinfo.mapx}";
			var mapy = "${requestScope.LocationTourinfo.mapy}";
			var address2 = "${requestScope.LocationTourinfo.address2}";

			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			mapOption = {
				center : new daum.maps.LatLng(mapy, mapx), // 지도의 중심좌표
				level : 3
			// 지도의 확대 레벨
			};

			// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
			var map = new daum.maps.Map(mapContainer, mapOption);

			//마커가 표시될 위치입니다 
			var markerPosition = new daum.maps.LatLng(mapy, mapx);

			// 마커를 생성합니다
			var marker = new daum.maps.Marker({
				position : markerPosition
			});

			marker.setMap(map);

			// 커스텀 오버레이에 표시할 컨텐츠 입니다
			// 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
			// 별도의 이벤트 메소드를 제공하지 않습니다 
			var content = '<div class="wrap">'
					+ '    <div class="info">'
					+ '        <div class="title">'
					+ title
					+ '            <div class="close" onclick="closeOverlay()" title="닫기"></div>'
					+ '        </div>'
					+ '        <div class="body">'
					+ '            <div class="img">'
					+ '                <img src="'+image+'" width="73" height="70">'
					+ '           </div>' + '            <div class="desc">'
					+ '                <div class="ellipsis">' + address
					+ '</div>' + '                <div>' + address2 + '</div>'
					+ '            </div>' + '        </div>' + '    </div>'
					+ '</div>';

			// 마커 위에 커스텀오버레이를 표시합니다
			// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
			var overlay = new daum.maps.CustomOverlay({
				content : content,
				map : map,
				position : marker.getPosition()
			});

			// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
			daum.maps.event.addListener(marker, 'click', function() {
				overlay.setMap(map);
			});

			// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
			function closeOverlay() {
				overlay.setMap(null);
			}
		</script>
	</c:if>
</body>
</html>