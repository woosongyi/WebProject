<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <!-- JSTL ���̺귯�� ���� -->
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
	font-family: 'Malgun Gothic', dotum, '����', sans-serif;
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
�󼼺���
	<c:if test="${not empty requestScope.LocationTourinfo }">
		<table border="1" width="1200">
			<tr>
				<th>�̹���</th>
				<th>������ �̸�</th>
				<th>�ּ�</th>
				<th>����ó</th>
				<th>����</th>
			</tr>
			<tr>
				<th><img src="${requestScope.LocationTourinfo.firstimage }" width=150
					height=150 /></th>
				<th>${requestScope.LocationTourinfo.title }</th>
				<th>${requestScope.LocationTourinfo.address }<br>
					${requestScope.LocationTourinfo.address2 }
				</th>
				<th>��ȭ�� : ${requestScope.LocationTourinfo.telname }<br> ��ȭ��ȣ :
					${requestScope.LocationTourinfo.tel }<br> Ȩ������ :
					${requestScope.LocationTourinfo.homepage }
				</th>
				<th>${requestScope.LocationTourinfo.overview }</th>
			</tr>
		</table>

		<!-- ������ ǥ���� div �Դϴ� -->
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

			var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
			mapOption = {
				center : new daum.maps.LatLng(mapy, mapx), // ������ �߽���ǥ
				level : 3
			// ������ Ȯ�� ����
			};

			// ������ ǥ���� div��  ���� �ɼ�����  ������ �����մϴ�
			var map = new daum.maps.Map(mapContainer, mapOption);

			//��Ŀ�� ǥ�õ� ��ġ�Դϴ� 
			var markerPosition = new daum.maps.LatLng(mapy, mapx);

			// ��Ŀ�� �����մϴ�
			var marker = new daum.maps.Marker({
				position : markerPosition
			});

			marker.setMap(map);

			// Ŀ���� �������̿� ǥ���� ������ �Դϴ�
			// Ŀ���� �������̴� �Ʒ��� ���� ����ڰ� �����Ӱ� �������� �����ϰ� �̺�Ʈ�� ������ �� �ֱ� ������
			// ������ �̺�Ʈ �޼ҵ带 �������� �ʽ��ϴ� 
			var content = '<div class="wrap">'
					+ '    <div class="info">'
					+ '        <div class="title">'
					+ title
					+ '            <div class="close" onclick="closeOverlay()" title="�ݱ�"></div>'
					+ '        </div>'
					+ '        <div class="body">'
					+ '            <div class="img">'
					+ '                <img src="'+image+'" width="73" height="70">'
					+ '           </div>' + '            <div class="desc">'
					+ '                <div class="ellipsis">' + address
					+ '</div>' + '                <div>' + address2 + '</div>'
					+ '            </div>' + '        </div>' + '    </div>'
					+ '</div>';

			// ��Ŀ ���� Ŀ���ҿ������̸� ǥ���մϴ�
			// ��Ŀ�� �߽����� Ŀ���� �������̸� ǥ���ϱ����� CSS�� �̿��� ��ġ�� �����߽��ϴ�
			var overlay = new daum.maps.CustomOverlay({
				content : content,
				map : map,
				position : marker.getPosition()
			});

			// ��Ŀ�� Ŭ������ �� Ŀ���� �������̸� ǥ���մϴ�
			daum.maps.event.addListener(marker, 'click', function() {
				overlay.setMap(map);
			});

			// Ŀ���� �������̸� �ݱ� ���� ȣ��Ǵ� �Լ��Դϴ� 
			function closeOverlay() {
				overlay.setMap(null);
			}
		</script>
	</c:if>
</body>
</html>