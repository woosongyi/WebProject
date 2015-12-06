<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<!-- JSTL 라이브러리 설정 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>KOREA TOUR</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--menu-->
<script src="js/scripts.js"></script>
<link href="css/styles.css" rel="stylesheet">
<!--//menu-->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords"
	content="Real Home Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	
	
	
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 






</script>
<!-- slide -->
<script src="js/responsiveslides.min.js"></script>
<script>
	$(function() {
		$("#slider").responsiveSlides({
			auto : true,
			speed : 500,
			namespace : "callbacks",
			pager : true,
		});
	});
</script>


</head>
<body>
	<!--header-->
	<div class="navigation">
		<div class="container-fluid">
			<nav class="pull">
			<ul>
				<li><a href="Index.jsp">Home</a></li>
				<li><a href="about.html">About Us</a></li>
				<li><a href="blog.html">Blog</a></li>
				<li><a href="terms.html">Terms</a></li>
				<li><a href="privacy.html">Privacy</a></li>
				<li><a href="contact.html">Contact</a></li>
			</ul>
			</nav>
		</div>
	</div>

	<div class="header">
		<div class="container">
			<!--logo-->
			<div class="logo">
				<h1>
					<a href="Index.jsp">REAL HOME</a>
				</h1>
			</div>
			<!--//logo-->
			<div class="top-nav">
				<ul class="right-icons">
					<li><span><i class="glyphicon glyphicon-phone"> </i>+1384
							757 546</span></li>
					<li><a href="login.html"><i
							class="glyphicon glyphicon-user"> </i>Login</a></li>
					<li><a class="play-icon popup-with-zoom-anim"
						href="#small-dialog"><i class="glyphicon glyphicon-search">
						</i> </a></li>

				</ul>
				<div class="nav-icon">
					<div class="hero fa-navicon fa-2x nav_slide_button" id="hero">
						<a href="#"><i class="glyphicon glyphicon-menu-hamburger"></i>
						</a>
					</div>
					<!---
				<a href="#" class="right_bt" id="activator"><i class="glyphicon glyphicon-menu-hamburger"></i>  </a>
			--->
				</div>
				<div class="clearfix"></div>
				<!---pop-up-box---->

				<link href="css/popuo-box.css" rel="stylesheet" type="text/css"
					media="all" />
				<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
				<!---//pop-up-box---->
				<div id="small-dialog" class="mfp-hide">
					<!----- tabs-box ---->
					<div class="sap_tabs">
						<div id="horizontalTab"
							style="display: block; width: 100%; margin: 0px;">
							<ul class="resp-tabs-list">
								<li class="resp-tab-item " aria-controls="tab_item-0" role="tab"><span>All
										Homes</span></li>
								<li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>For
										Sale</span></li>
								<li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span>For
										Rent</span></li>
								<div class="clearfix"></div>
							</ul>
							<div class="resp-tabs-container">
								<h2 class="resp-accordion resp-tab-active" role="tab"
									aria-controls="tab_item-0">
									<span class="resp-arrow"></span>All Homes
								</h2>
								<div class="tab-1 resp-tab-content resp-tab-content-active"
									aria-labelledby="tab_item-0" style="display: block">
									<div class="facts">
										<div class="login">
											<input type="text"
												value="Search Address, Neighborhood, City or Zip"
												onfocus="this.value = '';"
												onblur="if (this.value == '') {this.value = 'Search Address, Neighborhood, City or Zip';}">
											<input type="submit" value="">
										</div>
									</div>
								</div>
								<h2 class="resp-accordion" role="tab" aria-controls="tab_item-1">
									<span class="resp-arrow"></span>For Sale
								</h2>
								<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
									<div class="facts">
										<div class="login">
											<input type="text"
												value="Search Address, Neighborhood, City or Zip"
												onfocus="this.value = '';"
												onblur="if (this.value == '') {this.value = 'Search Address, Neighborhood, City or Zip';}">
											<input type="submit" value="">
										</div>
									</div>
								</div>
								<h2 class="resp-accordion" role="tab" aria-controls="tab_item-2">
									<span class="resp-arrow"></span>For Rent
								</h2>
								<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
									<div class="facts">
										<div class="login">
											<input type="text"
												value="Search Address, Neighborhood, City or Zip"
												onfocus="this.value = '';"
												onblur="if (this.value == '') {this.value = 'Search Address, Neighborhood, City or Zip';}">
											<input type="submit" value="">
										</div>
									</div>
								</div>
							</div>
						</div>
						<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
						<script type="text/javascript">
							$(document).ready(function() {
								$('#horizontalTab').easyResponsiveTabs({
									type : 'default', //Types: default, vertical, accordion           
									width : 'auto', //auto or any width like 600px
									fit : true
								// 100% fit in a container
								});
							});
						</script>
					</div>
				</div>
				<script>
					$(document).ready(function() {
						$('.popup-with-zoom-anim').magnificPopup({
							type : 'inline',
							fixedContentPos : false,
							fixedBgPos : true,
							overflowY : 'auto',
							closeBtnInside : true,
							preloader : false,
							midClick : true,
							removalDelay : 300,
							mainClass : 'my-mfp-zoom-in'
						});

					});
				</script>


			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!--//-->
	<div class=" banner-buying">
		<div class=" container">
			<h3>
				<span>Lor</span>em
			</h3>
			<!---->
			<div class="menu-right">
				<ul class="menu">
					<li class="item1"><a href="#"> Menu<i
							class="glyphicon glyphicon-menu-down"> </i>
					</a>
						<ul class="cute">
							<li class="subitem1"><a href="buy.html">Buy </a></li>
							<li class="subitem2"><a href="buy.html">Rent </a></li>
							<li class="subitem3"><a href="buy.html">Hostels </a></li>
							<li class="subitem1"><a href="buy.html">Resale </a></li>
							<li class="subitem2"><a href="loan.html">Home Loan</a></li>
							<li class="subitem3"><a href="buy.html">Apartment </a></li>
							<li class="subitem3"><a href="dealers.html">Dealers</a></li>
						</ul></li>
				</ul>
			</div>
			<div class="clearfix"></div>
			<!--initiate accordion-->
			<script type="text/javascript">
				$(function() {
					var menu_ul = $('.menu > li > ul'), menu_a = $('.menu > li > a');
					menu_ul.hide();
					menu_a.click(function(e) {
						e.preventDefault();
						if (!$(this).hasClass('active')) {
							menu_a.removeClass('active');
							menu_ul.filter(':visible').slideUp('normal');
							$(this).addClass('active').next().stop(true, true)
									.slideDown('normal');
						} else {
							$(this).removeClass('active');
							$(this).next().stop(true, true).slideUp('normal');
						}
					});

				});
			</script>

		</div>
	</div>
	<!--//header-->
	<div class="container">

		<!--price-->
		<div class="price">
			<div class=" right-side">
				<a href="#" onclick="post_to_url();" class="hvr-sweep-to-right more">검
					색</a> <b id="mymapx"></b> <b id="mymapy"></b>
			</div>
			<div id="map" style="width: 100%; height: 350px;"></div>

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

				var lat, lon;
				// HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
				if (navigator.geolocation) {

					// GeoLocation을 이용해서 접속 위치를 얻어옵니다
					navigator.geolocation
							.getCurrentPosition(function(position) {

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

					var locPosition = new daum.maps.LatLng(33.450701,
							126.570667), message = 'geolocation을 사용할수 없어요..'

					mymapx.innerHTML = position.coords.latitude;
					mymapy.innerHTML = position.coords.longitude;
					displayMarker(locPosition, message);
				}

				function post_to_url(path, params, method) {
					method = method || "post";
					var form = document.createElement("form");
					form.setAttribute("method", method);
					form.setAttribute("action",
							'Search.do?cmd=locationsearching');

					// 첫번째 데이터
					var hiddenField = document.createElement("input");
					hiddenField.setAttribute("type", "hidden");
					hiddenField.setAttribute("name", "X");
					hiddenField.setAttribute("value", lon);
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



			</form>
		</div>
		<!-- 다음지도 끝 -->

	</div>
	<!--Container-->

	<!---->
	<div class="container">
		<c:if test="${not empty sessionScope.LocationTour}">
			<!-- 검색 결과가 있을때만 표시 한다. -->
			<div class="project-grid-top">
				<div class="container">
					<!-- 검색 결과 표시지점 -->

					<h3>관광지 정보</h3>

					<c:forEach var="vo" items="${sessionScope.LocationTour}">
						<div class="col-md-4 box_2">
							<a href=Search.do?cmd=locationDetail&contentid=${vo.contentid}
								class="mask"> <img class="img-responsive zoom-img"
								src="${vo.firstimage }" width=420 height=316 alt="">
							</a>
							<div class="most-1">
								<h5>${vo.title }</h5>
								<p>${vo.address }</p>
							</div>
						</div>


					</c:forEach>

					<div class="clearfix"></div>
				</div>
				<!-- 검색 결과 container end -->
			</div>
		</c:if>


	</div>
	<!--footer-->
	<div class="footer">
		<div class="container">
			<div class="footer-top-at">
				<div class="col-md-3 amet-sed">
					<h4>Our Company</h4>
					<ul class="nav-bottom">
						<li><a href="about.html">About Us</a></li>
						<li><a href="blog.html">For Sale By Owner Blog</a></li>
						<li><a href="mobile_app.html">Mobile</a></li>
						<li><a href="terms.html">Terms & Conditions</a></li>
						<li><a href="privacy.html">Privacy Policy</a></li>
						<li><a href="blog.html">Blog</a></li>

					</ul>
				</div>
				<div class="col-md-3 amet-sed ">
					<h4>Work With Us</h4>
					<ul class="nav-bottom">
						<li><a href="single.html">Real Estate Brokers</a></li>
						<li><a href="single.html">Business Development</a></li>
						<li><a href="single.html">Affiliate Programs</a></li>
						<li><a href="contact.html">Sitemap</a></li>
						<li><a href="career.html">Careers</a></li>
						<li><a href="feedback.html">Feedback</a></li>
					</ul>
				</div>
				<div class="col-md-3 amet-sed">
					<h4>Customer Support</h4>
					<p>Mon-Fri, 7AM-7PM</p>
					<p>Sat-Sun, 8AM-5PM</p>
					<p>177-869-6559</p>
					<ul class="nav-bottom">
						<li><a href="#">Live Chat</a></li>
						<li><a href="faqs.html">Frequently Asked Questions</a></li>
						<li><a href="suggestion.html">Make a Suggestion</a></li>
					</ul>
				</div>
				<div class="col-md-3 amet-sed ">
					<h4>Property Services</h4>
					<ul class="nav-bottom">
						<li><a href="single.html">Residential Property</a></li>
						<li><a href="single.html">Commercial Property</a></li>
						<li><a href="login.html">Login</a></li>
						<li><a href="register.html">Register</a></li>
						<li><a href="typo.html">Short Codes</a></li>
					</ul>
					<ul class="social">
						<li><a href="#"><i> </i></a></li>
						<li><a href="#"><i class="gmail"> </i></a></li>
						<li><a href="#"><i class="twitter"> </i></a></li>
						<li><a href="#"><i class="camera"> </i></a></li>
						<li><a href="#"><i class="dribble"> </i></a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="footer-bottom">
			<div class="container">
				<div class="col-md-4 footer-logo">
					<h2>
						<a href="Index.jsp">REAL HOME</a>
					</h2>
				</div>
				<div class="col-md-8 footer-class">
					<p>
						© 2015 Real Home. All Rights Reserved | Design by <a
							href="http://w3layouts.com/" target="_blank">W3layouts</a>
					</p>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--//footer-->
</body>
</body>
</html>