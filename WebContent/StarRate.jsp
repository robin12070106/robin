<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description"
	content="HIXX One page parallax responsive HTML Template ">

<meta name="author" content="Muhammad Morshed">
<!-- 헬로 -->
<title>HIXX | 여행 추천</title>

<!-- Mobile Specific Meta
		================================================== -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon" href="img/favicon.png" />

<!-- CSS
		================================================== -->
<!-- Fontawesome Icon font -->
<link rel="stylesheet" href="css/font-awesome.min.css">
<!-- bootstrap.min css -->
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<!-- Animate.css -->
<link rel="stylesheet" href="css/animate.css">
<!-- Owl Carousel -->
<link rel="stylesheet" href="css/owl.carousel.css">
<!-- Grid Component css -->
<link rel="stylesheet" href="css/component.css">
<!-- Slit Slider css -->
<link rel="stylesheet" href="css/slit-slider.css">
<!-- Main Stylesheet -->
<link rel="stylesheet" href="css/account/star-rate.css">
<!-- Media Queries -->
<link rel="stylesheet" href="css/media-queries.css">

<link rel="stylesheet" href="css/account/modal-star-rate.css">

<!--
		Google Font
		=========================== -->

<!-- Oswald / Title Font -->
<link href='http://fonts.googleapis.com/css?family=Oswald:400,300'
	rel='stylesheet' type='text/css'>
<!-- Ubuntu / Body Font -->
<link href='http://fonts.googleapis.com/css?family=Ubuntu:400,300'
	rel='stylesheet' type='text/css'>

<!-- Modernizer Script for old Browsers -->
<script src="js/modernizr-2.6.2.min.js"></script>


<script>
	(function(i, s, o, g, r, a, m) {
		i['GoogleAnalyticObject'] = r;i[r] = i[r] || function() {
			(i[r].q = i[r].q || []).push(arguments)
		}, i[r].l = 1 * new Date();a = s.createElement(o),
		m = s.getElementsByTagName(o)[0];
		a.async = 1;
		a.src = g;m.parentNode.insertBefore(a, m)
	})(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

	ga('create', 'UA-54152927-1', 'auto');
	ga('send', 'pageview');
</script>



<script>
	function onChange() {
		var text = document.getElementById("urlid").value;
		var name = new Array("서울", "부산", "대전", "대구르르", "대구", "서울우우울", "서울우울해", "부산아아아산", "대전어어전");
		var sw = 0;
		var strHtml = "";

		strHtml += "<table border ='1' cellpadding='0'>";
		strHtml += "<tr><td colspan ='2'></td><tr>";
		strHtml += "<tr bgcolor = '#E2E2E2' align='center'>";
		strHtml += "<td width = '1%'>번호</td>";
		strHtml += "<td style = 'width:1%'>도시명</td>";
		strHtml += "</td>";

		for (var i = 0; i < name.length; i++) {
			if (name[i].substring(0, text.length) == text) {
				strHtml += "<tr align='center'>";
				strHtml += "<td>" + parseInt(sw + 1) + "</td>";
				strHtml += "<td>" + name[i] + "</td>";
				strHtml += "</tr>";
				sw++;
			}
			if (text == "")
				strHtml = "";
		}
		strHtml += "</table>";
		document.getElementById("urlid_confirm").innerHTML = strHtml;
	}
</script>

<script>
	window.addEventListener("onload",function(){
		var moreButton = document.querySelector("#more-button");
		
		moreButton.onclick = function (){
			var template = document.querySelector("#template");
			var ogGrid = document.querySelector("#og-grid");
			
			var clone = document.importNode(template.content, true);
			
			ogGrid.appendChild(clone.clone);
			
		}
		
	});
	
</script>
</head>

<body id="body">
	<!--
	    Start Preloader
	    ==================================== -->
	<div id="loading-mask">
		<div class="loading-img">
			<img alt="HIXX Preloader" src="img/buffering.gif" />
		</div>
	</div>
	<!--
        End Preloader
        ==================================== -->


	<section id="showcase">
		<div class="container">
			<div class="row wow fadeInDown" data-wow-duration="500ms">
				<div class="col-lg-12 col-md-9">

					<!-- section title -->
					<div class="title text-center">
						<h2>
							다녀온 여행지의 별점을 찍고 <span class="color"> 여행 패턴을 추천받으세요! </span>
						</h2>
						<div class="border-star-rate"></div>
					</div>

					<input class="col-lg-12  col-md-9" type="text" id="urlid" value=""
						maxlength="8" placeholder="검색할 도시" onkeyup="onChange()">
					<div id="urlid_confirm" style="display: inline"></div>

				</div>
				<!-- /end col-lg-12 -->
			</div>
			<!-- end row -->
		</div>
		<!-- end container -->

		<!-- portfolio items -->
		<div class="portfolio-item-wrapper wow fadeInUp"
			data-wow-duration="500ms">
			<ul id="og-grid" class="og-grid">

				<!-- single portfolio item -->
				<% for(int i=0 ; i<10 ; i++){ %>
				<li class="mix app">
				<a href="" data-toggle="modal" data-target="#myModal" >
					<img	data-toggle="modal" data-target="#myModal" src="img/travel-recommend/CD-rock.jpg" alt="HIXX"/>
						<div class="hover-mask">
							<h3>East Sea</h3>
							
							<span>
						 		<i class="fa fa-plus fa-2x"></i>
							</span>
						</div>
				</a>			
				</li>
				<%} %>
				<template id="template">
				<li class="mix app">
					<a href="" data-toggle="modal" data-target="#myModal" >
						<img	data-toggle="modal" data-target="#myModal" src="img/travel-recommend/CD-rock.jpg" alt=""/>
							<div class="hover-mask">
							<h3></h3>
							
							<span>
						 		<i class="fa fa-plus fa-2x"></i>
							</span>
						</div>
					</a>			
				</li>
				</template>
				
				<!-- /single portfolio item -->
				 
				<li class="mix app">
				<a href="" data-toggle="modal" data-target="#myModal" >
					<img	data-toggle="modal" data-target="#myModal" src="img/travel-recommend/CD-rock.jpg" alt="HIXX"/>
						<div class="hover-mask">
							<h3>East Sea</h3>
							
							<span>
						 		<i class="fa fa-plus fa-2x"></i>
							</span>
						</div>
				</a>			
				</li>

			<li class="mix app">
				<a href="" data-toggle="modal" data-target="#myModal" >
					<img	data-toggle="modal" data-target="#myModal" src="img/travel-recommend/CD-rock.jpg" alt="HIXX"/>
						<div class="hover-mask">
							<h3>East Sea</h3>
							
							<span>
						 		<i class="fa fa-plus fa-2x"></i>
							</span>
						</div>
				</a>			
				</li>
			</ul>

			<div class="all-post text-center">
				<input id="more-button" type="button" class="btn btn-transparent"  value="더보기"/>	
			</div>

			<!-- portfolio items wrapper -->
		</div>
	</section>

	<!-- Back to Top
		============================== -->
	<a href="javascript:;" id="scrollUp"> <i
		class="fa fa-angle-up fa-2x"></i>
	</a>

	<!-- end Footer Area
		========================================== -->

	<!------------------------------------------- Modal ----------------------------------------------------------->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">

				<!--       --------------------------------모달 바디------------------------------------- -->
				<div class="modal-body">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>


					<div id="star-rate-title">
						<h1 class="text-center">Seoul</h1>
					</div>


						<form action="" method="get">
							
						<div id="star-rate">
							<h1 class="hidden">별점 찍기</h1>
							<div id="total-rate">
								<ul>
								<li>
									<h3>총 평점</h3>
								</li>
								<li>
									<span class="rating" style="z-index: 10;"> <input
										type="radio" class="rating-input" id="total-rate-five"
										name="city-rate" value="5"></input> <label
										for="total-rate-five" class="rating-star"></label> <input
										type="radio" class="rating-input" id="total-rate-four"
										name="city-rate" value="4"></input> <label
										for="total-rate-four" class="rating-star"></label> <input
										type="radio" class="rating-input" id="total-rate-three"
										name="city-rate" value="3"></input> <label
										for="total-rate-three" class="rating-star"></label> <input
										type="radio" class="rating-input" id="total-rate-two"
										name="city-rate" value="2"></input> <label for="total-rate-two"
										class="rating-star"></label> <input type="radio"
										class="rating-input" id="total-rate-one" name="city-rate"
										value="1"></input> <label for="total-rate-one"
										class="rating-star"></label>
									</span>
								</li>
								</ul>
								</div>

							<div  id="food-rate">
								<ul>
									<li>
										<h3>맛 평점</h3>
									</li>
									<li>
										<span class="rating1" style="z-index: 10;"> <input
											type="radio" class="rating-input" id="food-rate-five"
											name="food-rate" value="5"></input> <label for="food-rate-five"
											class="rating-star"></label> <input type="radio"
											class="rating-input" id="food-rate-four" name="food-rate"
											value="4"></input> <label for="food-rate-four"
											class="rating-star"></label> <input type="radio"
											class="rating-input" id="food-rate-three" name="food-rate"
											value="3"></input> <label for="food-rate-three"
											class="rating-star"></label> <input type="radio"
											class="rating-input" id="food-rate-two" name="food-rate"
											value="2"></input> <label for="food-rate-two"
											class="rating-star"></label> <input type="radio"
											class="rating-input" id="food-rate-one" name="food-rate"
											value="1"></input> <label for="food-rate-one"
											class="rating-star"></label>
										</span>
									</li>
								</ul>
							</div>

							<div  id="sightsee-rate">
								<ul>
									<li>
										<h3>관광 평점</h3>
									</li>
									<li>
									<span class="rating" style="z-index: 10;">
									 <input
										type="radio" class="rating-input" id="sightsee-rate-five"
										name="sightsee-rate" value="5">
									</input>
									<label
										for="sightsee-rate-five" class="rating-star">
									</label>
									 <input
										type="radio" class="rating-input" id="sightsee-rate-four"
										name="sightsee-rate" value="4">
									</input> 
									<label
										for="sightsee-rate-four" class="rating-star">
									</label> 
									<input
										type="radio" class="rating-input" id="sightsee-rate-three"
										name="sightsee-rate" value="3">
									</input> 
									<label
										for="sightsee-rate-three" class="rating-star">
									</label> 
									<input
										type="radio" class="rating-input" id="sightsee-rate-two"
										name="sightsee-rate" value="2">
									</input> 
									<label
										for="sightsee-rate-two" class="rating-star">
									</label> 
									<input
										type="radio" class="rating-input" id="sightsee-rate-one"
										name="sightsee-rate" value="1">
									</input> 
									<label
										for="sightsee-rate-one" class="rating-star">
									</label>
	
									</span>
									</li>
								</ul>
							</div>
						</div>
						
						<div id="submit">
							<input type="submit" class="btn btn-primary" value="저장">
						</div>
						</form>
					
				</div>

				<!--       --------------------------------모달 푸터------------------------------------- -->
				<!-- 
      <div class="modal-footer">
        
      </div> -->

			</div>
		</div>
	</div>

	<!-- 
		Essential Scripts
		=====================================-->

	<!-- Main jQuery -->
	<script src="js/jquery-1.11.1.min.js"></script>
	<!-- Bootstrap 3.1 -->
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<!-- Slitslider -->
	<script src="js/jquery.slitslider.js"></script>
	<script src="js/jquery.ba-cond.min.js"></script>
	<!-- Parallax -->
	<script src="js/jquery.parallax-1.1.3.js"></script>
	<!-- Owl Carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- Portfolio Filtering -->
	<script src="js/jquery.mixitup.min.js"></script>
	<!-- Custom Scrollbar -->
	<script src="js/jquery.nicescroll.min.js"></script>
	<!-- Jappear js -->
	<script src="js/jquery.appear.js"></script>
	<!-- Pie Chart -->
	<script src="js/easyPieChart.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing-1.3.pack.js"></script>
	<!-- tweetie.min -->
	<script src="js/tweetie.min.js"></script>
	<!-- Google Map API -->
	<script type="text/javascript"
		src="http://maps.google.com/maps/api/js?sensor=false"></script>
	<!-- Highlight menu item -->
	<script src="js/jquery.nav.js"></script>
	<!-- Sticky Nav -->
	<script src="js/jquery.sticky.js"></script>
	<!-- Number Counter Script -->
	<script src="js/jquery.countTo.js"></script>
	<!-- wow.min Script -->
	<script src="js/wow.min.js"></script>
	<!-- For video responsive -->
	<script src="js/jquery.fitvids.js"></script>
	<!-- Grid js -->
<!-- 	<script src="js/grid-test.js"></script> -->
	<!-- Custom js -->
	<script src="js/custom.js"></script>
	
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>

</body>
</html>