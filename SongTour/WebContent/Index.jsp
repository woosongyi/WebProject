<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
					<a href="Index.jsp">KOREA TOUR</a>
				</h1>
			</div>
			<!--//logo-->
			<div class="top-nav">
				<ul class="right-icons">
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
	<div class=" header-right">
		<div class=" banner">
			<div class="slider">
				<div class="callbacks_container">
					<ul class="rslides" id="slider">
						<li>
							<div class="banner1">
								<div class="caption">
									<h3>
										<span>BEST PLACES</span>
									</h3>
									<p>Vsit best places in Korea</p>
								</div>
							</div>
						</li>
						<li>
							<div class="banner2">
								<div class="caption">
									<h3>
										<span>BEST RESTAURANT</span>
									</h3>
									<p>Vsit best restaurant in Korea</p>
								</div>
							</div>
						</li>
						<li>
							<div class="banner3">
								<div class="caption">
									<h3>
										<span>BEST HOTELS</span>
									</h3>
									<p>Vsit best hotels in Korea</p>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<!--header-bottom-->
	<div class="banner-bottom-top">
		<div class="container">
			<div class="bottom-header">
				<div class="header-bottom">
					<div class=" bottom-head">
						<a href="buy.html">
							<div class="buy-media">
								<i class="buy"> </i>
								<h6>Buy</h6>
							</div>
						</a>
					</div>
					<div class=" bottom-head">
						<a href="buy.html">
							<div class="buy-media">
								<i class="rent"> </i>
								<h6>Rent</h6>
							</div>
						</a>
					</div>
					<div class=" bottom-head">
						<a href="buy.html">
							<div class="buy-media">
								<i class="pg"> </i>
								<h6>Hostels</h6>
							</div>
						</a>
					</div>
					<div class=" bottom-head">
						<a href="./NearLocation.jsp">
							<div class="buy-media">
								<i class="sell"> </i>
								<h6>Resale</h6>
							</div>
						</a>
					</div>
					<div class=" bottom-head">
						<a href="loan.html">
							<div class="buy-media">
								<i class="loan"> </i>
								<h6>Home Loans</h6>
							</div>
						</a>
					</div>
					<div class=" bottom-head">
						<a href="buy.html">
							<div class="buy-media">
								<i class="apart"> </i>
								<h6>Projects</h6>
							</div>
						</a>
					</div>
					<div class=" bottom-head">
						<a href="dealers.html">
							<div class="buy-media">
								<i class="deal"> </i>
								<h6>Dealers</h6>
							</div>
						</a>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!--//-->
	<div class="banner-bottom-bottom">
		<div class="resp-tabs-container">
			<h2 class="resp-accordion resp-tab-active" role="tab"
				aria-controls="tab_item-0">
				<span class="resp-arrow"></span>All Homes
			</h2>
			<div class="tab-1 resp-tab-content resp-tab-content-active"
				aria-labelledby="tab_item-0" style="display: block">
				<div class="facts">
					<div class="login">
					<form action="Search.do?cmd=searching" method="post">
						<input type="text" name="keyword"
							value="원하는 관광지를 입력하세요"
							onfocus="this.value = '';"
							onblur="if (this.value == '') {this.value = '주소, 도시, 업종을 입력하세요';}">
						<input type="submit" value="">
					</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	<!--//header-bottom-->


	<!--//header-->
	<!--content-->
	<div class="content">
	<c:if test="${not empty sessionScope.resultTour }"> <!-- 검색 결과가 있을때만 표시 한다. -->
		<div class="content-grid">
			<div class="container"> <!-- 검색 결과 표시지점 -->
				
					<h3>Recommend List</h3>

					<c:forEach var="vo" items="${sessionScope.resultTour}">
						<div class="col-md-4 box_2">
							<a href=Search.do?cmd=searchinfo&contentid=${vo.contentid} class="mask"> 
								<img class="img-responsive zoom-img" src="${vo.firstimage }"  width=420 height=316 alt="">
							</a>
							<div class="most-1">
							<h5>
								${vo.title }
							</h5>
							<p>${vo.address }</p>
							</div>
						</div>
					
					
					</c:forEach>
				
			<div class="clearfix"></div>
		</div> <!-- 검색 결과 container end -->
	</div>
	</c:if>
		<!--service-->
		<!--//services-->
		<!--features-->
		<!--//features-->
		<!--phone-->
		<!--//phone-->
		<!--project--->
		<div class="project">
			<div class="container">
				<h3>Project Gallery</h3>
				<div class="project-top">
					<div class="col-md-3 project-grid">
						<div class="project-grid-top">
							<a href="single.html" class="mask"><img src="images/ga.jpg"
								class="img-responsive zoom-img" alt="" /></a>
							<div class="col-md1">
								<div class="col-md2">
									<div class="col-md3">
										<span class="star"> 4.5</span>
									</div>
									<div class="col-md4">
										<strong>Venice</strong> <small>50 Reviews</small>
									</div>
									<div class="clearfix"></div>
								</div>
								<p>2, 3, 4 BHK Flats</p>
								<p class="cost">$65,000</p>
								<a href="single.html" class="hvr-sweep-to-right more">See
									Details</a>
							</div>
						</div>
					</div>
					<div class="col-md-3 project-grid">
						<div class="project-grid-top">
							<a href="single.html" class="mask"><img src="images/ga1.jpg"
								class="img-responsive zoom-img" alt="" /></a>
							<div class="col-md1">
								<div class="col-md2">
									<div class="col-md3">
										<span class="star"> 4.5</span>
									</div>
									<div class="col-md4">
										<strong>Venice</strong> <small>50 Reviews</small>
									</div>
									<div class="clearfix"></div>
								</div>
								<p>2, 3, 4 BHK Flats</p>
								<p class="cost">$65,000</p>
								<a href="single.html" class="hvr-sweep-to-right more">See
									Details</a>
							</div>
						</div>
					</div>
					<div class="col-md-3 project-grid">
						<div class="project-grid-top">
							<a href="single.html" class="mask"><img src="images/ga2.jpg"
								class="img-responsive zoom-img" alt="" /></a>
							<div class="col-md1">
								<div class="col-md2">
									<div class="col-md3">
										<span class="star"> 4.5</span>
									</div>
									<div class="col-md4">
										<strong>Venice</strong> <small>50 Reviews</small>
									</div>
									<div class="clearfix"></div>
								</div>
								<p>2, 3, 4 BHK Flats</p>
								<p class="cost">$65,000</p>
								<a href="single.html" class="hvr-sweep-to-right more">See
									Details</a>
							</div>
						</div>
					</div>
					<div class="col-md-3 project-grid">
						<div class="project-grid-top">
							<a href="single.html" class="mask"><img src="images/ga3.jpg"
								class="img-responsive zoom-img" alt="" /></a>
							<div class="col-md1">
								<div class="col-md2">
									<div class="col-md3">
										<span class="star"> 4.5</span>
									</div>
									<div class="col-md4">
										<strong>Venice</strong> <small>50 Reviews</small>
									</div>
									<div class="clearfix"></div>
								</div>
								<p>2, 3, 4 BHK Flats</p>
								<p class="cost">$65,000</p>
								<a href="single.html" class="hvr-sweep-to-right more">See
									Details</a>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<!--//project-->
		<!--test-->
		<!--//test-->
		<!--partners-->
		<!--//partners-->
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
						<a href="Index.jsp">SONG TOUR</a>
					</h2>
				</div>
				<div class="col-md-8 footer-class">
					<p>
						2015 Real Home. All Rights Reserved | Design by <a
							href="http://w3layouts.com/" target="_blank">W3layouts</a>
					</p>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--//footer-->
</body>
</html>