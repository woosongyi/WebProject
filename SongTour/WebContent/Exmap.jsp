<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<title>Insert title here</title>
</head>
<body>


	<div id="map" style="width: 100%; height: 350px;"></div>
	<p>
		<em>������ Ŭ�����ּ���!</em>
	</p>
	<div id="clickLatlng"></div>

	<script type="text/javascript"
		src="//apis.daum.net/maps/maps3.js?apikey=950c9c587d098e4789f5467b057b1da7"></script>


	<script>
		var map;
		// HTML5�� geolocation���� ����� �� �ִ��� Ȯ���մϴ� 
		if (navigator.geolocation) {

			// GeoLocation�� �̿��ؼ� ���� ��ġ�� ���ɴϴ�
			navigator.geolocation.getCurrentPosition(function(position) {

				var lat = position.coords.latitude, // ����
				lon = position.coords.longitude; // �浵

				var locPosition = new daum.maps.LatLng(lat, lon), // ��Ŀ�� ǥ�õ� ��ġ�� geolocation���� ���� ��ǥ�� �����մϴ�
				message = '<div style="padding:5px;">���⿡ ��Ű���?!</div>'; // ���������쿡 ǥ�õ� �����Դϴ�

				var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
				mapOption = {

					center : new daum.maps.LatLng(lat, lon), // ������ �߽���ǥ
					level : 3
				// ������ Ȯ�� ����
				};
				map = new daum.maps.Map(mapContainer, mapOption); // ������ �����մϴ�
			});

		} else { // HTML5�� GeoLocation�� ����� �� ������ ��Ŀ ǥ�� ��ġ�� ���������� ������ �����մϴ�

			var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
			mapOption = {

				center : new daum.maps.LatLng(33.450701, 126.570667), // ������ �߽���ǥ
				level : 3
			// ������ Ȯ�� ����
			};
			map = new daum.maps.Map(mapContainer, mapOption); // ������ �����մϴ�
		}

		// ������ Ŭ���� ��ġ�� ǥ���� ��Ŀ�Դϴ�
		var marker = new daum.maps.Marker({
			// ���� �߽���ǥ�� ��Ŀ�� �����մϴ� 
			position : map.getCenter()
		});
		// ������ ��Ŀ�� ǥ���մϴ�
		marker.setMap(map);

		// ������ Ŭ�� �̺�Ʈ�� ����մϴ�
		// ������ Ŭ���ϸ� ������ �Ķ���ͷ� �Ѿ�� �Լ��� ȣ���մϴ�
		daum.maps.event.addListener(map, 'click', function(mouseEvent) {

			// Ŭ���� ����, �浵 ������ �����ɴϴ� 
			var latlng = mouseEvent.latLng;

			// ��Ŀ ��ġ�� Ŭ���� ��ġ�� �ű�ϴ�
			marker.setPosition(latlng);

			var message = 'Ŭ���� ��ġ�� ������ ' + latlng.getLat() + ' �̰�, ';
			message += '�浵�� ' + latlng.getLng() + ' �Դϴ�';

			var resultDiv = document.getElementById('clickLatlng');
			resultDiv.innerHTML = message;

		});
	</script>



</body>
</html>