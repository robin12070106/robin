<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="description" content="HIXX One page parallax responsive HTML Template ">
        
        <meta name="author" content="Muhammad Morshed">
		
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
        <link rel="stylesheet" href="css/main.css">
		<!-- Media Queries -->
        <link rel="stylesheet" href="css/media-queries.css">
        <!-- Modal star rate -->
        <link rel="stylesheet" href="css/account/modal-star-rate.css">


		<!-- My Page -->
		<!-- <link href="css/NewFile.css" type="text/css" rel="stylesheet" /> -->
		<link href="css/chartModal.css" type="text/css" rel="stylesheet" />
		<script src="js/pieOption.js"></script>
		<script src="js/chart1.js"></script>
		
		<!--
		Google Font
		=========================== -->                    
		
		<!-- Oswald / Title Font -->
		<link href='http://fonts.googleapis.com/css?family=Oswald:400,300' rel='stylesheet' type='text/css'>
		<!-- Ubuntu / Body Font -->
		<link href='http://fonts.googleapis.com/css?family=Ubuntu:400,300' rel='stylesheet' type='text/css'>
		
		<!-- Modernizer Script for old Browsers -->		
        <script src="js/modernizr-2.6.2.min.js"></script>


		<script>
		  (function(i,s,o,g,r,a,m){i['GoogleAnalyticObject']=r;i[r]=i[r]||function(){
		  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
		
		  ga('create', 'UA-54152927-1', 'auto');
		  ga('send', 'pageview');
		
		</script>
	
    </head>
	
    <body id="body">
	    <!--
	    Start Preloader
	    ==================================== -->
		<div id="loading-mask">
			<div class="loading-img">
				<img alt="HIXX Preloader" src="img/buffering1.gif"  />
			</div>
		</div>
        <!--
        End Preloader
        ==================================== -->
		
        <!--
        Welcome Slider
        ==================================== -->
		<section id="home">	    
		
            <div id="slitSlider" class="sl-slider-wrapper">
				<div class="sl-slider">
					
					<!-- single slide item -->
					<div class="sl-slide" data-orientation="horizontal" data-slice1-rotation="-25" data-slice2-rotation="-25" data-slice1-scale="2" data-slice2-scale="2">
						<div class="sl-slide-inner">
							<div class="bg-img bg-img-1"></div>
						<div class="carousel-caption">
							<div>
								<img class="wow fadeInUp" src="img/logo-main.png" alt="HIXX">
								<h2 data-wow-duration="500ms"  data-wow-delay="500ms" class="heading animated fadeInRight">Welcome To HIXX</h2>
							</div>
						</div>
						</div>
					</div>
					<!-- /single slide item -->
					
					<!-- single slide item -->
					<div class="sl-slide" data-orientation="vertical" data-slice1-rotation="10" data-slice2-rotation="-15" data-slice1-scale="1.5" data-slice2-scale="1.5">
						<div class="sl-slide-inner">
							<div class="bg-img bg-img-2"></div>
						<div class="carousel-caption">
							<div>
								<h2 class="heading animated fadeInDown">사람이 여행을 하는 것은 도착하기 위해서가 아니라</br> 여행하기 위해서이다</h2>
								<h3 class="animated fadeInUp">괴테</h3>
								<a class="btn btn-green animated fadeInUp" href="cluster">Get Started</a>
							</div>
						</div>
						</div>
					</div>
					<!-- /single slide item -->
					
					<!-- single slide item -->
					<div class="sl-slide" data-orientation="horizontal" data-slice1-rotation="3" data-slice2-rotation="3" data-slice1-scale="2" data-slice2-scale="1">
						<div class="sl-slide-inner">
							<div class="bg-img bg-img-3"></div>
						<div class="carousel-caption">
							<div>
								<h2 class="heading animated fadeInRight">HIXX를 모바일에서도 만나세요</h2>
								<h3 class="animated fadeInLeft">언제 어디서나 HIXX와 함께</h3>
								<a class="btn btn-green animated fadeInUp" href="https://play.google.com/store/apps">Download</a>
							</div>
						</div>
						</div>
					</div>
					<!-- /single slide item -->

				</div><!-- /sl-slider -->
				
				<nav id="nav-arrows" class="nav-arrows">
					<span class="nav-arrow-prev">Previous</span>
					<span class="nav-arrow-next">Next</span>
				</nav>

				<nav id="nav-dots" class="nav-dots">
					<span class="nav-dot-current"></span>
					<span></span>
					<span></span>
				</nav>

			</div><!-- /slider-wrapper -->
		</section>
		<!--/#home section-->
		
        <!-- 
        Fixed Navigation
        ==================================== -->
        <header id="navigation" class="navbar navbar-inverse">
            <div class="container">
                <div class="navbar-header">
                    <!-- responsive nav button -->
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
					<!-- /responsive nav button -->
					
					<!-- logo -->
                    <a class="navbar-brand" href="#body">
						<h1 id="logo">
							<img src="img/logo-navbar.png" alt="HIXX" />
						</h1>
					</a>
					<!-- /logo -->
                </div>

				<!-- main nav -->
                <nav class="collapse navbar-collapse navbar-right" role="Navigation">
                    <ul id="nav" class="nav navbar-nav">
                        <li class="current"><a href="#body">Home</a></li>
                        <li><a href="#about">My Page</a></li>
                        <li><a href="#showcase">여행지 추천</a></li>
                        <li><a href="#our-team">동행 추천</a></li>
                        <li><a href="#blog">SNS</a></li>
                        <c:if test="${not empty sessionScope.id }">
                        <li><a href="#about">${sessionScope.id } 님 환영합니다</a></li>                                              
                        <li><a href="logout">로그아웃</a></li>
                        </c:if>
                    </ul>
                </nav>
				<!-- /main nav -->
				
            </div>
        </header>
        <!--
        End Fixed Navigation
        ==================================== -->
		
		<!--
		Start My Page(div id가 about) Section
		==================================== -->
		<section id="about" class="bg-one">
			<div class="container">
				<div class="row">
				
					<!-- section title -->
					<div class="title text-center wow fadeIn" data-wow-duration="1500ms" >
						<h2><span class="color">My</span> Page</h2>
						<div class="border"></div>
					</div>
					<!-- /section title -->
					
					<!-- About item -->
					<div class="col-md-4 text-center wow fadeInUp" data-wow-duration="500ms" >
						<div class="wrap-about">							
							<div class="icon-box" style="padding-top: 0px;">
								<img id="star-Btn" alt="star" src="img/mypage/mypage_star.png" width="100px" height="100px" style="cursor:pointer;">
							</div>
							<!-- Express About Yourself -->
							<div class="about-content text-center">
								
								<h3 class="ddd"><span class="color">${sessionScope.id }</span>님의 별점</h3>
							</div>
						</div>
					</div> 
					<!-- End About item -->
					
					
					<!-- About item -->
					<div class="col-md-4 text-center wow fadeInUp" data-wow-duration="500ms" data-wow-delay="250ms">
						<div class="wrap-about">
							<div class="icon-box" style="padding-top: 0px;">
								<img id="map-Btn" alt="map" src="img/mypage/mypage_map.png" width="100px" height="100px" style="cursor:pointer;">
							</div>
							<!-- Express About Yourself -->
							<div class="about-content text-center">
								<h3><span class="color">${sessionScope.id }</span>님의 여행지</h3>
							</div>
						</div>
					</div> 
					<!-- End About item -->
					
					<!-- About item -->					
					<div class="col-md-4 text-center wow fadeInUp" data-wow-duration="500ms" data-wow-delay="500ms">
						<div class="wrap-about kill-margin-bottom">
							<div class="icon-box" style="padding-top: 0px;">
								<img id="pie-Btn" alt="pie" src="img/mypage/mypage_pie.png" width="100px" height="100px" style="cursor:pointer;">
							</div>
							<!-- Express About Yourself -->
							<div class="about-content text-center">
								<h3><span class="color">${sessionScope.id} </span>님의 여행 패턴</h3>
							</div>
						</div>
					</div> 
					<!-- End About item -->
					
					
				</div> 		<!-- End row -->
			</div>   	<!-- End container -->
			
						<!-- The Modal -->
							<div id="star-Modal" class="chart-modal">
							 <!-- Modal content -->
							  <div class="modal-content">
							    <span class="close">&times;</span>
							    
								
								<div id="star-container" style="min-width: 80%; height: 600px; max-width:1000px; padding-bottom:30px; margin: 0 auto" data-highcharts-chart="0"><div id="highcharts-bzc4q92-0" class="highcharts-container " style="position: relative; overflow: hidden; width: 300px; height: 250px; text-align: left; line-height: normal; z-index: 0; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><svg version="1.1" class="highcharts-root" style="font-family:&quot;Lucida Grande&quot;, &quot;Lucida Sans Unicode&quot;, Arial, Helvetica, sans-serif;font-size:12px;" xmlns="http://www.w3.org/2000/svg" width="300" height="250" viewBox="0 0 300 250"><desc>Created with Highcharts 5.0.9</desc><defs><clipPath id="highcharts-bzc4q92-1"><rect x="0" y="0" width="223" height="162" fill="none"></rect></clipPath></defs><rect fill="#ffffff" class="highcharts-background" x="0" y="0" width="300" height="250" rx="0" ry="0"></rect><rect fill="none" class="highcharts-plot-background" x="67" y="10" width="223" height="162"></rect><g class="highcharts-grid highcharts-xaxis-grid "><path fill="none" class="highcharts-grid-line" d="M 68.5 10 L 68.5 172" opacity="1"></path><path fill="none" class="highcharts-grid-line" d="M 178.5 10 L 178.5 172" opacity="1"></path><path fill="none" class="highcharts-grid-line" d="M 287.5 10 L 287.5 172" opacity="1"></path></g><g class="highcharts-grid highcharts-yaxis-grid "><path fill="none" stroke="#e6e6e6" stroke-width="1" class="highcharts-grid-line" d="M 67 172.5 L 290 172.5" opacity="1"></path><path fill="none" stroke="#e6e6e6" stroke-width="1" class="highcharts-grid-line" d="M 67 132.5 L 290 132.5" opacity="1"></path><path fill="none" stroke="#e6e6e6" stroke-width="1" class="highcharts-grid-line" d="M 67 91.5 L 290 91.5" opacity="1"></path><path fill="none" stroke="#e6e6e6" stroke-width="1" class="highcharts-grid-line" d="M 67 51.5 L 290 51.5" opacity="1"></path><path fill="none" stroke="#e6e6e6" stroke-width="1" class="highcharts-grid-line" d="M 67 9.5 L 290 9.5" opacity="1"></path></g><rect fill="none" class="highcharts-plot-border" x="67" y="10" width="223" height="162"></rect><g class="highcharts-axis highcharts-xaxis "><path fill="none" class="highcharts-tick" stroke="#ccd6eb" stroke-width="1" d="M 68.5 172 L 68.5 182" opacity="1"></path><path fill="none" class="highcharts-tick" stroke="#ccd6eb" stroke-width="1" d="M 178.5 172 L 178.5 182" opacity="1"></path><path fill="none" class="highcharts-tick" stroke="#ccd6eb" stroke-width="1" d="M 287.5 172 L 287.5 182" opacity="1"></path><path fill="none" class="highcharts-axis-line" stroke="#ccd6eb" stroke-width="1" d="M 67 172.5 L 290 172.5"></path></g><g class="highcharts-axis highcharts-yaxis "><text x="28.046875" text-anchor="middle" transform="translate(0,0) rotate(270 28.046875 91)" class="highcharts-axis-title" style="color:#666666;fill:#666666;" y="91">Values</text><path fill="none" class="highcharts-axis-line" d="M 67 10 L 67 172"></path></g><g class="highcharts-series-group"><g class="highcharts-series highcharts-series-0 highcharts-area-series highcharts-color-0 " transform="translate(67,10) scale(1 1)" clip-path="url(#highcharts-bzc4q92-1)"><path fill="rgba(124,181,236,0.75)" d="M 2.1862745098039 52.82820000000001 L 45.911764705882 48.9564 L 89.637254901961 40.5 L 133.36274509804 120.0501 L 177.08823529412 120.30525 L 220.8137254902 121.0788 L 220.8137254902 162 L 177.08823529412 162 L 133.36274509804 162 L 89.637254901961 162 L 45.911764705882 162 L 2.1862745098039 162" class="highcharts-area"></path><path fill="none" d="M 2.1862745098039 52.82820000000001 L 45.911764705882 48.9564 L 89.637254901961 40.5 L 133.36274509804 120.0501 L 177.08823529412 120.30525 L 220.8137254902 121.0788" class="highcharts-graph" stroke="#7cb5ec" stroke-width="2" stroke-linejoin="round" stroke-linecap="round"></path><path fill="none" d="M -7.8137254901961 52.82820000000001 L 2.1862745098039 52.82820000000001 L 45.911764705882 48.9564 L 89.637254901961 40.5 L 133.36274509804 120.0501 L 177.08823529412 120.30525 L 220.8137254902 121.0788 L 230.8137254902 121.0788" stroke-linejoin="round" visibility="visible" stroke="rgba(192,192,192,0.0001)" stroke-width="22" class="highcharts-tracker"></path></g><g class="highcharts-markers highcharts-series-0 highcharts-area-series highcharts-color-0 highcharts-tracker " transform="translate(67,10) scale(1 1)" clip-path="none"><path fill="#7cb5ec" d="M 220 121.0788 A 0 0 0 1 1 220 121.0788 Z" class="highcharts-halo highcharts-color-0" fill-opacity="0.25"></path><path fill="#7cb5ec" d="M 224 121.0788 A 4 4 0 1 1 223.99999800000018 121.07480000066667 Z" stroke="#ffffff" stroke-width="1" visibility="hidden"></path></g></g><g class="highcharts-button highcharts-contextbutton" style="cursor:pointer;" stroke-linecap="round" transform="translate(266,10)"><title>Chart context menu</title><rect fill="#ffffff" class=" highcharts-button-box" x="0.5" y="0.5" width="24" height="22" rx="2" ry="2" stroke="none" stroke-width="1"></rect><path fill="#666666" d="M 6 6.5 L 20 6.5 M 6 11.5 L 20 11.5 M 6 16.5 L 20 16.5" class="highcharts-button-symbol" stroke="#666666" stroke-width="3"></path><text x="0" style="font-weight:normal;color:#333333;fill:#333333;" y="12"></text></g><g class="highcharts-legend" transform="translate(117,206)"><rect fill="none" class="highcharts-legend-box" rx="0" ry="0" x="0" y="0" width="66" height="29" visibility="visible"></rect><g><g><g class="highcharts-legend-item highcharts-area-series highcharts-color-0 highcharts-series-0" transform="translate(8,3)"><text x="21" style="color:#333333;font-size:12px;font-weight:bold;cursor:pointer;fill:#333333;" text-anchor="start" y="15"></text><rect x="2" y="4" width="12" height="12" fill="#7cb5ec" rx="6" ry="6" class="highcharts-point"></rect></g></g></g></g><g class="highcharts-axis-labels highcharts-xaxis-labels "><text x="69.18627450980392" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="middle" transform="translate(0,0)" y="191" opacity="1"><tspan>0</tspan></text><text x="178.5" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="middle" transform="translate(0,0)" y="191" opacity="1"><tspan>2.5</tspan></text><text x="286.5" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="middle" transform="translate(0,0)" y="191" opacity="1"><tspan>5</tspan></text></g><g class="highcharts-axis-labels highcharts-yaxis-labels "><text x="52" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="end" transform="translate(0,0)" y="176" opacity="1"><tspan>0</tspan></text><text x="52" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="end" transform="translate(0,0)" y="136" opacity="1"><tspan>10</tspan></text><text x="52" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="end" transform="translate(0,0)" y="95" opacity="1"><tspan>20</tspan></text><text x="52" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="end" transform="translate(0,0)" y="55" opacity="1"><tspan>30</tspan></text><text x="52" style="color:#666666;cursor:default;font-size:11px;fill:#666666;" text-anchor="end" transform="translate(0,0)" y="14" opacity="1"><tspan>40</tspan></text></g><text x="290" class="highcharts-credits" text-anchor="end" style="cursor:pointer;color:#999999;font-size:9px;fill:#999999;" y="245">Highcharts.com</text><g class="highcharts-label highcharts-tooltip highcharts-color-0" style="cursor:default;pointer-events:none;white-space:nowrap;" transform="translate(5,-9999)" opacity="0" visibility="visible"><path fill="none" class="highcharts-label-box highcharts-tooltip-box" d="M 3.5 0.5 L 264.5 0.5 C 267.5 0.5 267.5 0.5 267.5 3.5 L 267.5 17 273.5 23 267.5 29 267.5 44.5 C 267.5 47.5 267.5 47.5 264.5 47.5 L 3.5 47.5 C 0.5 47.5 0.5 47.5 0.5 44.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5" isShadow="true" stroke="#000000" stroke-opacity="0.049999999999999996" stroke-width="5" transform="translate(1, 1)"></path><path fill="none" class="highcharts-label-box highcharts-tooltip-box" d="M 3.5 0.5 L 264.5 0.5 C 267.5 0.5 267.5 0.5 267.5 3.5 L 267.5 17 273.5 23 267.5 29 267.5 44.5 C 267.5 47.5 267.5 47.5 264.5 47.5 L 3.5 47.5 C 0.5 47.5 0.5 47.5 0.5 44.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5" isShadow="true" stroke="#000000" stroke-opacity="0.09999999999999999" stroke-width="3" transform="translate(1, 1)"></path><path fill="none" class="highcharts-label-box highcharts-tooltip-box" d="M 3.5 0.5 L 264.5 0.5 C 267.5 0.5 267.5 0.5 267.5 3.5 L 267.5 17 273.5 23 267.5 29 267.5 44.5 C 267.5 47.5 267.5 47.5 264.5 47.5 L 3.5 47.5 C 0.5 47.5 0.5 47.5 0.5 44.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5" isShadow="true" stroke="#000000" stroke-opacity="0.15" stroke-width="1" transform="translate(1, 1)"></path><path fill="rgba(247,247,247,0.85)" class="highcharts-label-box highcharts-tooltip-box" d="M 3.5 0.5 L 264.5 0.5 C 267.5 0.5 267.5 0.5 267.5 3.5 L 267.5 17 273.5 23 267.5 29 267.5 44.5 C 267.5 47.5 267.5 47.5 264.5 47.5 L 3.5 47.5 C 0.5 47.5 0.5 47.5 0.5 44.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5" stroke="#7cb5ec" stroke-width="1"></path><text x="8" style="font-size:12px;color:#333333;fill:#333333;" y="20"><tspan style="font-size: 10px">5</tspan><tspan x="8" dy="15"> 님의 warheads in 5점 매긴 수 : </tspan><tspan style="font-weight:bold" dx="0">10 104</tspan></text></g></svg></div></div>
								
								<h3 style="text-align: center;"> ${sessionScope.id} 님의 별점 분포 </h3>
								
								<script type="text/javascript">
									Highcharts.chart('star-container', {
									    chart: {
									        type: 'areaspline'
									    },
									    title: {
									        text: ''
									    },
									    legend: {
									        layout: 'vertical',
									        align: 'left',
									        verticalAlign: 'top',
									        x: 150,
									        y: 100,
									        floating: true,
									        borderWidth: 1,
									        backgroundColor: (Highcharts.theme && Highcharts.theme.legendBackgroundColor) || '#FFFFFF'
									    },
									    xAxis: {
									        categories: [
									            '1',
									            '2',
									            '3',
									            '4',
									            '5'
									        ],
									        plotBands: [{ // visualize the weekend
									            from: 0,
									            to: 0,
									            color: 'rgba(68, 170, 213, .2)'
									        }]
									    },
									    yAxis: {
									        title: {
									            text: ''
									        }
									    },
									    tooltip: {
									        shared: true,
									        valueSuffix: ''
									    },
									    credits: {
									        enabled: false
									    },
									    plotOptions: {
									        areaspline: {
									            fillOpacity: 0.5
									        }
									    },
									    series: [{
									        name: '',
									        data: [5, 10, 30, 20, 8]
									    }]
									});
									</script>
									</div>
								</div>
								
							<!-- The Modal -->
							<div id="map-Modal" class="chart-modal">
							 <!-- Modal content -->
							  <div class="modal-content">
							    <span class="close">&times;</span>
							    
							    <script src="js/mapcharts.js"></script>
								<script src="js/mapworlds.js"></script>
								<link rel="stylesheet" href="css/mapchart.css" type="text/css" media="all" />
								<script src="js/maplight.js"></script>
								<script src="js/mapoption.js"></script>


								<div id="chartdiv" style="min-width: 80%; height: 600px; max-width:1000px; padding-bottom:30px; margin: 0 auto"></div>
							    
							    <h3 style="text-align: center;"> ${sessionScope.id} 님이 방문하신 여행지 분포</h3>
								
																	</div>
								</div>
								
								<!-- The Modal -->
								<div id="pie-Modal" class="chart-modal">
								<!-- Modal content -->
									<div class="modal-content">
									    <span class="close">&times;</span>
									    
									    <div id="pie-container"
											style="min-width: 80%; height: 600px; max-width: 1000px; padding-bottom: 30px; margin: 0 auto"
											data-highcharts-chart="1">
											<div id="highcharts-znvu5un-4" class="highcharts-container "
												style="position: relative; overflow: hidden; width: 441px; height: 250px; text-align: left; line-height: normal; z-index: 0; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
												<svg version="1.1" class="highcharts-root"
													style="font-family: &amp; quot; Lucida Grande&amp;quot; , &amp; quot; Lucida Sans Unicode&amp;quot; , Arial , Helvetica, sans-serif; font-size: 12px;"
													xmlns="http://www.w3.org/2000/svg" width="441" height="250"
													viewBox="0 0 441 250">
													<desc>Created with Highcharts 5.0.9</desc>
													<defs>
													<clipPath id="highcharts-znvu5un-5">
													<rect x="0" y="0" width="421" height="184" fill="none"></rect></clipPath></defs>
													<rect fill="#ffffff" class="highcharts-background" x="0" y="0"
														width="441" height="250" rx="0" ry="0"></rect>
													<rect fill="none" class="highcharts-plot-background" x="10" y="10"
														width="421" height="184"></rect>
													<rect fill="none" class="highcharts-plot-border" x="10" y="10"
														width="421" height="184"></rect>
													<g class="highcharts-series-group">
													<g class="highcharts-series highcharts-series-0 highcharts-pie-series highcharts-color-undefined highcharts-tracker "
														transform="translate(10,10) scale(1 1)" style="cursor:pointer;">
													<path fill="#ff530a"
														d="M 210.48329879729698 10.000001700793746 A 82 82 0 0 1 288.46530307095236 66.59504935933657 L 288.46530307095236 66.59504935933657 A 82 82 0 0 0 210.48329879729698 10.000001700793746 Z"
														class="highcharts-halo highcharts-color-0" fill-opacity="0.25"></path>
													<path fill="#ef6c00"
														d="M 210.48329879729698 10.000001700793746 A 82 82 0 0 1 288.46530307095236 66.59504935933657 L 210.5 92 A 0 0 0 0 0 210.5 92 Z"
														transform="translate(0,0)" stroke="#ffffff" stroke-width="1"
														stroke-linejoin="round" class="highcharts-point highcharts-color-0 "></path>
													<path fill="#fb8c00"
														d="M 288.4906690347106 66.67302735188757 A 82 82 0 0 1 162.37559822104353 158.39308663872748 L 210.5 92 A 0 0 0 0 0 210.5 92 Z"
														transform="translate(0,0)" stroke="#ffffff" stroke-width="1"
														stroke-linejoin="round" class="highcharts-point highcharts-color-1"></path>
													<path fill="#ffa726"
														d="M 162.3092292076692 158.3449290484287 A 82 82 0 0 1 162.23062395823564 25.712238410557674 L 210.5 92 A 0 0 0 0 0 210.5 92 Z"
														transform="translate(0,0)" stroke="#ffffff" stroke-width="1"
														stroke-linejoin="round" class="highcharts-point highcharts-color-2"></path>
													<path fill="#ffcc80"
														d="M 162.29693584346313 25.664002186438836 A 82 82 0 0 1 185.06472430847768 14.04458485457053 L 210.5 92 A 0 0 0 0 0 210.5 92 Z"
														transform="translate(0,0)" stroke="#ffffff" stroke-width="1"
														stroke-linejoin="round" class="highcharts-point highcharts-color-3"></path>
													<path fill="#fff3e0"
														d="M 185.14269242826737 14.019188560822542 A 82 82 0 0 1 210.38610364507812 10.000079099914146 L 210.5 92 A 0 0 0 0 0 210.5 92 Z"
														transform="translate(0,0)" stroke="#ffffff" stroke-width="1"
														stroke-linejoin="round" class="highcharts-point highcharts-color-4"></path></g>
													<g
														class="highcharts-markers highcharts-series-0 highcharts-pie-series highcharts-color-undefined "
														transform="translate(10,10) scale(1 1)"></g></g>
													<g class="highcharts-button highcharts-contextbutton"
														style="cursor:pointer;" stroke-linecap="round"
														transform="translate(407,10)">
													<title>Chart context menu</title>
													<rect fill="#ffffff" class=" highcharts-button-box" x="0.5" y="0.5"
														width="24" height="22" rx="2" ry="2" stroke="none" stroke-width="1"></rect>
													<path fill="#666666"
														d="M 6 6.5 L 20 6.5 M 6 11.5 L 20 11.5 M 6 16.5 L 20 16.5"
														class="highcharts-button-symbol" stroke="#666666" stroke-width="3"></path>
													<text x="0" style="font-weight:normal;color:#333333;fill:#333333;"
														y="12"></text></g>
													<g class="highcharts-legend" transform="translate(48,206)">
													<rect fill="none" class="highcharts-legend-box" rx="0" ry="0" x="0"
														y="0" width="344" height="29" visibility="visible"></rect>
													<g>
													<g>
													<g class="highcharts-legend-item highcharts-pie-series highcharts-color-0"
														transform="translate(8,3)">
													<text x="21"
														style="color:#333333;font-size:12px;font-weight:bold;cursor:pointer;fill:#333333;"
														text-anchor="start" y="15">10s</text>
													<rect x="2" y="4" width="12" height="12" fill="#ef6c00" rx="6" ry="6"
														class="highcharts-point"></rect></g>
													<g	class="highcharts-legend-item highcharts-pie-series highcharts-color-1"
														transform="translate(71.65625,3)">
													<text x="21" y="15"
														style="color:#333333;font-size:12px;font-weight:bold;cursor:pointer;fill:#333333;"
														text-anchor="start">20s</text>
													<rect x="2" y="4" width="12" height="12" fill="#fb8c00" rx="6" ry="6"
														class="highcharts-point"></rect></g>
													<g	class="highcharts-legend-item highcharts-pie-series highcharts-color-2"
														transform="translate(135.3125,3)">
													<text x="21" y="15"
														style="color:#333333;font-size:12px;font-weight:bold;cursor:pointer;fill:#333333;"
														text-anchor="start">30s</text>
													<rect x="2" y="4" width="12" height="12" fill="#ffa726" rx="6" ry="6"
														class="highcharts-point"></rect></g>
													<g	class="highcharts-legend-item highcharts-pie-series highcharts-color-3"
														transform="translate(198.96875,3)">
													<text x="21" y="15"
														style="color:#333333;font-size:12px;font-weight:bold;cursor:pointer;fill:#333333;"
														text-anchor="start">40s</text>
													<rect x="2" y="4" width="12" height="12" fill="#ffcc80" rx="6" ry="6"
														class="highcharts-point"></rect></g>
													<g	class="highcharts-legend-item highcharts-pie-series highcharts-color-4"
														transform="translate(262.625,3)">
													<text x="21" y="15"
														style="color:#333333;font-size:12px;font-weight:bold;cursor:pointer;fill:#333333;"
														text-anchor="start">
													<tspan>over 50s</tspan></text>
													<rect x="2" y="4" width="12" height="12" fill="#fff3e0" rx="6" ry="6"
														class="highcharts-point"></rect></g></g></g></g>
													<text x="431" class="highcharts-credits" text-anchor="end"
														style="color:#ff530a;font-size:9px;fill:#ff530a;" y="245"></text>
													<g class="highcharts-label highcharts-tooltip highcharts-color-0"
														style="cursor:default;pointer-events:none;white-space:nowrap;"
														transform="translate(222,-9999)" opacity="0" visibility="visible">
													<path fill="none" class="highcharts-label-box highcharts-tooltip-box"
														d="M 3.5 0.5 L 85.5 0.5 C 88.5 0.5 88.5 0.5 88.5 3.5 L 88.5 44.5 C 88.5 47.5 88.5 47.5 85.5 47.5 L 3.5 47.5 C 0.5 47.5 0.5 47.5 0.5 44.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"
														isShadow="true" stroke="#000000"
														stroke-opacity="0.049999999999999996" stroke-width="5"
														transform="translate(1, 1)"></path>
													<path fill="none" class="highcharts-label-box highcharts-tooltip-box"
														d="M 3.5 0.5 L 85.5 0.5 C 88.5 0.5 88.5 0.5 88.5 3.5 L 88.5 44.5 C 88.5 47.5 88.5 47.5 85.5 47.5 L 3.5 47.5 C 0.5 47.5 0.5 47.5 0.5 44.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"
														isShadow="true" stroke="#000000"
														stroke-opacity="0.09999999999999999" stroke-width="3"
														transform="translate(1, 1)"></path>
													<path fill="none" class="highcharts-label-box highcharts-tooltip-box"
														d="M 3.5 0.5 L 85.5 0.5 C 88.5 0.5 88.5 0.5 88.5 3.5 L 88.5 44.5 C 88.5 47.5 88.5 47.5 85.5 47.5 L 3.5 47.5 C 0.5 47.5 0.5 47.5 0.5 44.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"
														isShadow="true" stroke="#000000" stroke-opacity="0.15"
														stroke-width="1" transform="translate(1, 1)"></path>
													<path fill="rgba(247,247,247,0.85)"
														class="highcharts-label-box highcharts-tooltip-box"
														d="M 3.5 0.5 L 85.5 0.5 C 88.5 0.5 88.5 0.5 88.5 3.5 L 88.5 44.5 C 88.5 47.5 88.5 47.5 85.5 47.5 L 3.5 47.5 C 0.5 47.5 0.5 47.5 0.5 44.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"
														stroke="#ff530a" stroke-width="1"></path>
													<text x="8" style="font-size:12px;color:#333333;fill:#333333;" y="20">
													<tspan style="font-size: 10px">10s</tspan>
													<tspan x="8" dy="15"></tspan>
													<tspan style="font-weight:bold" dx="0">20.0%</tspan></text></g></svg>
											</div>
										</div>
										
										<script type="text/javascript">
											$(document).ready(function () {
											
											    // Build the chart
											    Highcharts.chart('pie-container', {
											        chart: {
											            plotBackgroundColor: null,
											            plotBorderWidth: null,
											            plotShadow: false,
											            type: 'pie'
											        },
											        title: {
											            text: ''
											        },
											        tooltip: {
											            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
											        },
											        plotOptions: {
											            pie: {
											                allowPointSelect: true,
											                cursor: 'pointer',
											                dataLabels: {
											                    enabled: false
											                },
											                showInLegend: true
											            }
											        },
											        series: [{
											            name: '',
											            colorByPoint: true,
											            data: [{
											                name: '10대',
											                y: 20
											            }, {
											                name: '20대',
											                y: 20,
											                
											            }, {
											                name: '30대',
											                y: 20,
											                
											            }, {
											                name: '40대',
											                y: 20,
											                
											            }, {
											                name: '50대 이상',
											                y: 20,
											                
											            }]
											        }]
											    });
											});	
											</script>
										
										<h3 style="text-align: center;"> ${sessionScope.id} 님과 유사한 패턴의 연령 분포</h3>
									</div>
								</div>	
								
								<script src="js/mypageModal.js"></script>
													
			
		</section>   <!-- End section -->
		
		<!--
		Start Main Features
		==================================== -->
		<section id="main-features">
			<div class="container">
				<div class="row">
					
					<!-- features item -->
					<div id="features">
						<div class="item">
							
							<div class="features-item">
								
								<!-- features media -->
								<div class="col-md-6 feature-media media-wrapper wow fadeInUp" data-wow-duration="500ms">
									<iframe src="http://player.vimeo.com/video/108018156" allowfullscreen></iframe>
								</div>
								<!-- /features media -->
								
								<!-- features content -->
								<div class="col-md-6 feature-desc wow fadeInUp" data-wow-duration="500ms" data-wow-delay="300ms">
									<h3>이달의 영상 by HIXX</h3></br>
									<p>HIXX는 회원님들이 올려주신 영상을 엄선하여 다른 회원님들과 공유하는 기회를 갖고자 합니다. 관심이 있으신 분들은 주저없이 영상을 올려주세요. 공정한 선정과정을 거쳐 선별된 영상들은 저희 메인 페이지에서 여러분들에게 공개될 것입니다.</p>
									<a href="#" class="btn btn-transparent">다른 영상들 보기</a>
								</div>
								<!-- /features content -->
								
							</div>
						</div>
						
						<div class="item">
							<div class="features-item">
							
								<!-- features media -->
								<div class="col-md-6 feature-media wow fadeInUp" data-wow-duration="500ms">
									<img src="img/blog/3D-beach-art.jpg" alt="3D Beach Art | HIXX" class="img-responsive">
								</div>
								<!-- /features media -->
								
								<!-- features content -->
								<div class="col-md-6 feature-desc wow fadeInUp" data-wow-duration="500ms" data-wow-delay="300ms">
									<h3>Main Features of HIXX</h3>
									<p>HIXX는 회원님들이 올려주신 영상을 엄선하여 다른 회원님들과 공유하는 기회를 갖고자 합니다. 관심이 있으신 분들은 주저없이 영상을 올려주세요. 공정한 선정과정을 거쳐 선별된 영상들은 저희 메인 페이지에서 여러분들에게 공개될 것입니다.</p>									
									<a href="#" class="btn btn-transparent">Learn More</a>
									<a href="#" class="btn btn-transparent">Purchase Theme</a>
								</div>
								<!-- /features content -->
								
							</div>
						</div>
					</div>
					<!-- /features item -->
					
				</div> 		<!-- End row -->
			</div>   	<!-- End container -->
		</section>   <!-- End section -->
		
		<!--
		Start Counter Section
		==================================== -->
		
		<section id="counter" class="parallax-section">
			<div class="container">
				<div class="row">
				
					<!-- first count item -->
					<div class="col-md-3 col-sm-6 col-xs-12 text-center wow fadeInDown" data-wow-duration="500ms">
						<div class="counters-item">
							<div>
							    <span data-speed="3000" data-to="320">320</span>
							</div>
							<i class="fa fa-users fa-3x"></i>
							<h3>Happy Clients</h3>
						</div>
					</div>
					<!-- end first count item -->
				
					<!-- second count item -->
					<div class="col-md-3 col-sm-6 col-xs-12 text-center wow fadeInDown" data-wow-duration="500ms" data-wow-delay="200ms">
						<div class="counters-item">
							<div>
							    <span data-speed="3000" data-to="565">565</span>
							</div>
							<i class="fa fa-check-square fa-3x"></i>
							<h3>Projects completed</h3>
						</div>
					</div>
					<!-- end second count item -->
				
					<!-- third count item -->
					<div class="col-md-3 col-sm-6 col-xs-12 text-center wow fadeInDown" data-wow-duration="500ms" data-wow-delay="400ms">
						<div class="counters-item">
							<div>
							    <span data-speed="3000" data-to="95">95</span>
								<span>%</span>
							</div>
							<i class="fa fa-thumbs-up fa-3x"></i>
				            <h3>Positive feedback</h3>
							
						</div>
					</div>
					<!-- end third count item -->
					
					<!-- fourth count item -->
					<div class="col-md-3 col-sm-6 col-xs-12 text-center wow fadeInDown" data-wow-duration="500ms" data-wow-delay="600ms">
						<div class="counters-item kill-margin-bottom">
							<div>
							    <span data-speed="3000" data-to="2500">2500</span>
							</div>
							<i class="fa fa-coffee fa-3x"></i>
							<h3>Cups of Coffee</h3>
						</div>
					</div>
					<!-- end fourth count item -->
					
				</div> 		<!-- end row -->
			</div>   	<!-- end container -->
		</section>   <!-- end section -->
		
		

		<!-- Start Portfolio Section
		=========================================== -->
		
		<section id="showcase">
			<div class="container">
				<div class="row wow fadeInDown" data-wow-duration="500ms">
					<div class="col-lg-12">
					
						<!-- section title -->
						<div class="title text-center">
							<h2>여행지 <span class="color">추천</span></h2>
							  
							<div class="border"></div>
						</div>
						<!-- /section title -->
					
						<!-- portfolio item filtering -->
						<div class="portfolio-filter clearfix">
							<ul class="text-center">
							    <li><a href="javascript:void(0)" class="filter" data-filter="all">All</a></li>
								<li><a href="javascript:void(0)" class="filter" data-filter=".app">시</a></li>
								<li><a href="javascript:void(0)" class="filter" data-filter=".web">도</a></li>								
							</ul>
						</div>
						<!-- /portfolio item filtering -->
						
					</div> <!-- /end col-lg-12 -->
				</div> <!-- end row -->
			</div>	<!-- end container -->
	
			<!-- portfolio items -->
			<div class="portfolio-item-wrapper wow fadeInUp" data-wow-duration="500ms">
                <ul id="og-grid" class="og-grid">


				<!-- single portfolio item -->

				<li class="mix app">
				<a href="" data-toggle="modal" data-target="#myModal" >
					<img data-toggle="modal" data-target="#myModal" src="img/travel-recommend/CD-rock.jpg" alt=""/>
						<div class="hover-mask">
							<h3>East Sea</h3>
							
							<!-- <span>
						 		<i class="fa fa-plus fa-2x"></i>
							</span> -->
						</div>
					</a>			
				</li>

				
				<!-- single portfolio item -->
					<li class="mix web">
						<a href="" data-toggle="modal" data-target="#myModal" >
					<img data-toggle="modal" data-target="#myModal" src="img/travel-recommend/deogyu.jpg" alt="">

							<div class="hover-mask">
								<h3>Mojoo</h3>
								
							</div>
						</a>
					</li>
					<!-- /single portfolio item -->
					
					<!-- single portfolio item -->
					
					<li class="mix photoshop">
						<a href="" data-toggle="modal" data-target="#myModal" >
					<img data-toggle="modal" data-target="#myModal"  src="img/travel-recommend/Hwanseon.jpg" alt="HIXX">
							<div class="hover-mask">
								<h3>Samcheok</h3>
								
							</div>
						</a>
					</li>
					<!-- /single portfolio item -->
					
					<!-- single portfolio item -->
					<li class="mix photoshop">
						<a href="" data-toggle="modal" data-target="#myModal" >
					<img data-toggle="modal" data-target="#myModal"  src="img/travel-recommend/Janghohang.jpg" alt="HIXX">
							<div class="hover-mask">
								<h3>Samcheok</h3>
								
							</div>
						</a>
					</li>
					<!-- /single portfolio item -->
					
					<!-- single portfolio item -->
					<li class="mix app">
						<a href="javascript:void(0)" 
						data-largesrc="img/travel-recommend/CK-cave.jpg" 
						data-title="East Sea" 
						data-description="천곡동굴.">
							<img src="img/travel-recommend/CK-cave.jpg" alt="HIXX">
							<div class="hover-mask">
								<h3>East Sea</h3>
								<span>
									<i class="fa fa-plus fa-2x"></i>
								</span>
							</div>
						</a>
					</li>
					<!-- /single portfolio item -->
					
					<!-- single portfolio item -->
					<li class="mix web">
						<a href="javascript:void(0)" 
						data-largesrc="img/travel-recommend/mdysresort.jpg" 
						data-title="Mojoo" 
						data-description="무주 리조트.">
							<img src="img/travel-recommend/mdysresort.jpg" alt="HIXX">
							<div class="hover-mask">
								<h3>Mojoo</h3>
								<span>
									<i class="fa fa-plus fa-2x"></i>
								</span>
							</div>	
						</a>
					</li>
					<!-- /single portfolio item -->
					
					<!-- single portfolio item -->
					<li class="mix photoshop">
						<a href="javascript:void(0)" 
						data-largesrc="img/travel-recommend/Jukseoru.jpg" 
						data-title="Samcheok" 
						data-description="죽서루.">
							<img src="img/travel-recommend/Jukseoru.jpg" alt="HIXX">
							<div class="hover-mask">
								<h3>Samcheok</h3>
								<span>
									<i class="fa fa-plus fa-2x"></i>
								</span>
							</div>	
						</a>
					</li>
					<!-- /single portfolio item -->
					
					<!-- single portfolio item -->
					<li class="mix app">
						<a href="javascript:void(0)" 
						data-largesrc="img/travel-recommend/MH-lighthouse.jpg" 
						data-title="East Sea" 
						data-description="묵호등대.">
							<img src="img/travel-recommend/MH-lighthouse.jpg" alt="HIXX">
							<div class="hover-mask">
								<h3>East Sea</h3>
								<span>
									<i class="fa fa-plus fa-2x"></i>
								</span>
							</div>
						</a>
					</li>
					<!-- /single portfolio item -->
					
					<!-- single portfolio item -->
					<li class="mix web">
						<a href="javascript:void(0)" 
						data-largesrc="img/travel-recommend/raje.jpg" 
						data-title="Mojoo" 
						data-description="라제통문.">
							<img src="img/travel-recommend/raje.jpg" alt="HIXX">
							<div class="hover-mask">
								<h3>Mojoo</h3>
								<span>
									<i class="fa fa-plus fa-2x"></i>
								</span>
							</div>
						</a>
					</li>
					<!-- /single portfolio item -->
					
					<!-- single portfolio item -->
					<li class="mix web">
						<a href="javascript:void(0)" 
						data-largesrc="img/travel-recommend/wine-cave.jpg" 
						data-title="Mojoo" 
						data-description="와인동굴.">
							<img src="img/travel-recommend/wine-cave.jpg" alt="HIXX">
							<div class="hover-mask">
								<h3>Mojoo</h3>
								<span>
									<i class="fa fa-plus fa-2x"></i>
								</span>
							</div>	
						</a>
					</li>
					<!-- /single portfolio item -->
					
					<!-- single portfolio item -->
					<li class="mix photoshop">
						<a href="javascript:void(0)" 
						data-largesrc="img/travel-recommend/oceanrailbike.jpg" 
						data-title="Samcheok" 
						data-description="삼척 레일바이크.">
							<img src="img/travel-recommend/oceanrailbike.jpg" alt="HIXX">
							<div class="hover-mask">
								<h3>Samcheok</h3>
								<span>
									<i class="fa fa-plus fa-2x"></i>
								</span>
							</div>
						</a>
					</li>
					<!-- /single portfolio item -->
					
					<!-- single portfolio item -->
					<li class="mix app">
						<a href="javascript:void(0)" 
						data-largesrc="img/travel-recommend/eastsea.jpg" 
						data-title="East Sea" 
						data-description="동해바다.">
							<img src="img/travel-recommend/eastsea.jpg" alt="HIXX">

							<div class="hover-mask">
								<h3>East Sea</h3>
								
							</div>
						</a>
					</li>
					<!-- /single portfolio item -->
										
				</ul>

				<div class="all-post text-center">
						<a class="btn btn-transparent" href="compRec.html">더보기</a>
				</div>

			<!-- portfolio items wrapper -->
		</div>
	</section>

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
						<h1 class="text-center">East Sea</h1>


<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="img/travel-recommend/Janghohang.jpg" alt="HIXX">
      <div class="carousel-caption">
        <h3>1</h3>
   		 <p>2</p>
      </div>
    </div>
    <div class="item">
      <img src="img/travel-recommend/CK-cave.jpg" alt="HIXX">
      <div class="carousel-caption">
        <h3>3</h3>
   		 <p>4</p>
      </div>
    </div>
   <div class="item 1">
      <img src="img/travel-recommend/deogyu.jpg" alt="HIXX">
      <div class="carousel-caption">
        <h3>5</h3>
   		 <p>6</p>
      </div>
    </div>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
						</div>
						
				
					
				</div>

				<!--       --------------------------------모달 푸터------------------------------------- -->
				<!-- 
      <div class="modal-footer">
        
      </div> -->

			</div>
		</div>
	</div>

		
		
		<!-- Start Team Skills
		=========================================== -->
		
		<section id="team-skills" class="parallax-section">
			<div class="container">
				<div class="row wow fadeInDown" data-wow-duration="500ms">
				
					<!-- section title -->
					<div class="title text-center">
						<h2>Our <span class="color">Skills</span></h2>
						<div class="border"></div>
					</div>
					<!-- /section title -->
					
					<!-- skill set -->
					<div class="col-md-3 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="500ms">
						<div class="skill-chart text-center">
							<span class="chart" data-percent="80">
								<span class="percent"></span>
							</span>
							<h3><i class="fa fa-wordpress"></i> Wordpress</h3>
							<p>Lorem ipsum has erroribus design color vituper bonorum depend you usedcom.bonorum dependan be used.</p>
						</div>
					</div>
					<!-- end skill set -->
					
					<!-- skill set -->
					<div class="col-md-3 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="500ms" data-wow-delay="200ms">
						<div class="skill-chart text-center">
							<span class="chart" data-percent="90">
								<span class="percent">86</span>
							</span>
							<h3><i class="fa fa-html5"></i> HTML 5</h3>
							<p>Lorem ipsum has erroribus design color vituper bonorum depend you usedcom.bonorum dependan be used.</p>
						</div>
					</div>
					<!-- end skill set -->
					
					<!-- skill set -->
					<div class="col-md-3 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="500ms" data-wow-delay="400ms">
						<div class="skill-chart text-center">
							<span class="chart" data-percent="85">
								<span class="percent"></span>
							</span>
							<h3><i class="fa fa-android"></i> Android</h3>
							<p>Lorem ipsum has erroribus design color vituper bonorum depend you usedcom.bonorum dependan be used.</p>
						</div>
					</div>
					<!-- end skill set -->
					
					<!-- skill set -->
					<div class="col-md-3 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="500ms" data-wow-delay="600ms">
						<div class="skill-chart text-center">
							<span class="chart" data-percent="70">
								<span class="percent"></span>
							</span>
							<h3><i class="fa fa-apple"></i> IOS</h3>
							<p>Lorem ipsum has erroribus design color vituper bonorum depend you usedcom.bonorum dependan be used.</p>
						</div>
					</div>
					<!-- end skill set -->
					
				</div>  		<!-- End row -->
			</div>   	<!-- End container -->
		</section>   <!-- End section -->
		
		<!-- Start Our Team
		=========================================== -->
		
		<section id="our-team">
			<div class="container">
				<div class="row">
				
					<!-- section title -->
					<div class="title text-center wow fadeInUp" data-wow-duration="500ms">
						<h2>동행 <span class="color">추천</span></h2>
						<div class="border"></div>
					</div>
					<!-- /section title -->
					
					<!-- team member -->
					<div class="col-md-3 col-sm-6 wow fadeInDown" data-wow-duration="500ms">
                       <article class="team-mate">
							<div class="member-photo">
								<!-- member photo -->
								<img class="img-responsive" src="img/team/sj.jpg" alt="HIXX">
								<!-- /member photo -->
								
								<!-- member social profile -->
								<div class="mask">
									<ul class="clearfix">
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li>
										<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
										<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
									</ul>
								</div>
								<!-- /member social profile -->
							</div>
							
							<!-- member name & designation -->
							<div class="member-title">
								<h3>이승진</h3>
								<span>CEO/Founder</span>
							</div>
							<!-- /member name & designation -->
							
							<!-- about member -->
                           <div class="member-info">
                               <p>SJCORP.com 대표</br>자유로운 만남 추구</br>무계획적 여행  선호</p>
                           </div>
						   <!-- /about member -->
						   
                       </article>
                    </div>
					<!-- end team member -->
					
					<!-- team member -->
					<div class="col-md-3 col-sm-6 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="200ms">
                       <article class="team-mate">
							<div class="member-photo">
								<!-- member photo -->
								<img class="img-responsive" src="img/team/kth.jpg" alt="HIXX">
								<!-- /member photo -->
								
								<!-- member social profile -->
								<div class="mask">
									<ul class="clearfix">
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li>
										<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
										<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
									</ul>
								</div>
								<!-- /member social profile -->
							</div>
							
							<!-- member name & designation -->
							<div class="member-title">
								<h3>김태희</h3>
								<span>배우</span>
							</div>
							<!-- /member name & designation -->
							
							<!-- about member -->
                           <div class="member-info">
                               <p>루아엔터테인먼트 소속</br>여행 경험 많음</br>계획적 여행  선호</p>
                           </div>
						   <!-- /about member -->
						</article>
                    </div>
					<!-- end team member -->
					
					<!-- team member -->
					<div class="col-md-3 col-sm-6 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="400ms">
                       <article class="team-mate">
							<div class="member-photo">
								<!-- member photo -->
								<img class="img-responsive" src="img/team/jwj.jpg" alt="HIXX">
								<!-- /member photo -->
								
								<!-- member social profile -->
								<div class="mask">
									<ul class="clearfix">
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li>
										<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
										<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
									</ul>
								</div>
								<!-- /member social profile -->
							</div>
							
							<!-- member name & designation -->
							<div class="member-title">
								<h3>조원준</h3>
								<span>Web Developer</span>
							</div>
							<!-- /member name & designation -->
							
							<!-- about member -->
                           <div class="member-info">
                               <p>SJCORP.com Account 팀장</br>여행 경험 많음</br>무계획적 여행  선호</p>
                           </div>
						   <!-- /about member -->
                       </article>
                    </div>
					<!-- end team member -->
					
					<!-- team member -->
					<div class="col-md-3 col-sm-6 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="600ms">
                       <article class="team-mate kill-margin-bottom">
							<div class="member-photo">
								<!-- member photo -->
								<img class="img-responsive" src="img/team/jjh.jpg" alt="HIXX">
								<!-- /member photo -->
								
								<!-- member social profile -->
								<div class="mask">
									<ul class="clearfix">
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li>
										<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
										<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
									</ul>
								</div>
								<!-- /member social profile -->
							</div>
							
							<!-- member name & designation -->
							<div class="member-title">
								<h3>전지현</h3>
								<span>배우</span>
							</div>
							<!-- /member name & designation -->
							
							<!-- about member -->
                           <div class="member-info">
                               <p>문화창고 소속</br>여행 경험 많음</br>계획적 여행  선호</p>
                           </div>
						   <!-- /about member -->
                       </article>
                    </div>
					<!-- end team member -->				
					
				</div>  	<!-- End row -->
				
				<div class="all-post text-center">
						<a class="btn btn-transparent" href="compRec.html">동행인 더보기</a>
				</div>
				
			</div>   	<!-- End container -->
		</section>   <!-- End section -->
		
		
		<!-- Start Twitter Feed
		=========================================== -->
		
		<section id="twitter-feed" class="parallax-section">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-center">
					
						<!-- twitter bird -->
						<div class="twitter-bird wow fadeInDown" data-wow-duration="500ms">
							<span>
								<i class="fa fa-twitter fa-4x"></i>
							</span>
						</div>
						<!-- /twitter bird -->
						
						<!-- fetching tweet -->
						<div class="tweet wow fadeIn" data-wow-duration="2000ms"></div>
						<!-- /fetching tweet -->
						
						<!-- follow us button -->
						<a href="https://twitter.com/amimorshed" title="Follow Us" target="_blank" class="btn btn-transparent wow fadeInUp" data-wow-duration="500ms">Follow Us</a>						
						<!-- /follow us button -->
						
					</div>
				</div>       <!-- End row -->
			</div>   	<!-- End container -->
		</section>   <!-- End section -->
		
		<!--
		Start Blog Section
		=========================================== -->
				
		<section id="blog" class="bg-one">
			<div class="container">
				<div class="row">

					<!-- section title -->
					<div class="title text-center wow fadeInDown">
						<h2> Latest <span class="color">SNS</span></h2>
						<div class="border"></div>
					</div>
					<!-- /section title -->

					<div class="clearfix">
					
						<!-- single blog post -->
						<article class="col-md-3 col-sm-6 col-xs-12 clearfix wow fadeInUp" data-wow-duration="500ms">
							<div class="note">
								<div class="media-wrapper">
									<img src="img/blog/1.jpg" alt="1" class="img-responsive">
								</div>
								
								<div class="excerpt">
									<h3>박선미 님의 post</h3>
									<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.</p>
									<a class="btn btn-transparent" href="single-post.html">Read more</a>
								</div>
							</div>						
						</article>
						<!-- /single blog post -->
						
						<!-- single blog post -->
						<article class="col-md-3 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="500ms" data-wow-delay="200ms">
							<div class="note">
								<div id="gallery-post" class="media-wrapper">
									<div class="item">
										<img src="img/blog/2.jpg" alt="2" class="img-responsive">
									</div>
									<div class="item">
										<img src="img/blog/3.jpg" alt="3" class="img-responsive">
									</div>
									<div class="item">
										<img src="img/blog/4.jpg" alt="4" class="img-responsive">
									</div>
								</div>
								
								<div class="excerpt">
									<h3>윤운영 님의 post</h3>
									<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.</p>
									<a class="btn btn-transparent" href="single-post.html">Read more</a>
								</div>
							</div>						
						</article>
						<!-- end single blog post -->
						
						<!-- single blog post -->
						<article class="col-md-3 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="500ms" data-wow-delay="400ms">
							<div class="note">
								<div class="media-wrapper">
									<img src="img/blog/3.jpg" alt="3" class="img-responsive">
								</div>
								
								<div class="excerpt">
									<h3>김홍욱 님의 post </h3>
									<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.</p>
									<a class="btn btn-transparent" href="single-post.html">Read more</a>
								</div>
							</div>						
						</article>
						<!-- end single blog post -->
						
						<!-- single blog post -->
						<article class="col-md-3 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="500ms" data-wow-delay="600ms">
							<div class="note kill-margin-bottom">
								<div class="media-wrapper">
									<img src="img/blog/4.jpg" alt="4" class="img-responsive">
								</div>
								<div class="excerpt">
									<h3>김정목 님의 post</h3>
									<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non skateboard dolor brunch.</p>
									<a class="btn btn-transparent" href="single-post.html">Read more</a>
								</div>
							</div>						
						</article>
						<!-- end single blog post -->
					</div>

					<div class="all-post text-center">
						<a class="btn btn-transparent" href="blog.html">View All Post</a>
					</div>

				</div> <!-- end row -->
			</div> <!-- end container -->
		</section> <!-- end section -->	
		
		<!-- Start Testimonial
		=========================================== -->
		
		<section id="testimonial" class="parallax-section">
			<div class="container">
				<div class="row">				
					<div class="col-lg-12">
					
						<!-- section title -->
						<div class="sub-title text-center wow fadeInDown" data-wow-duration="500ms">
							<h3>What People Say About Us</h3>
						</div>
						<!-- /section title -->

						<!-- testimonial wrapper -->
						<div id="testimonials" class="wow fadeInUp" data-wow-duration="500ms" data-wow-delay="100ms">
						
							<!-- testimonial single -->
							<div class="item text-center">
								
								<!-- client photo -->
								<div class="client-thumb">
									<img src="img/team/client.jpg" class="img-responsive" alt="HIXX">
								</div>
								<!-- /client photo -->
								
								<!-- client info -->
								<div class="client-info">
									<div class="client-meta">
										<h3>Abul Mal Muhit</h3>
										<span>Dec 26, 2014</span>
									</div>
									<div class="client-comment">
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque, ex, cupiditate, error, suscipit saepe sed ea consequuntur inventore sequi sit illo.</p>
										<ul class="social-profile">
											<li><a href="#"><i class="fa fa-facebook-square fa-lg"></i></a></li>
											<li><a href="#"><i class="fa fa-twitter-square fa-lg"></i></a></li>
											<li><a href="#"><i class="fa fa-linkedin-square fa-lg"></i></a></li>
										</ul>
									</div>
								</div>
								<!-- /client info -->
							</div>
							<!-- /testimonial single -->
						
							<!-- testimonial single -->
							<div class="item text-center">
								
								<!-- client photo -->
								<div class="client-thumb">
									<img src="img/team/client.jpg" class="img-responsive" alt="HIXX">
								</div>
								<!-- /client photo -->
								
								<!-- client info -->
								<div class="client-info">
									<div class="client-meta">
										<h3>Abul Mal Muhit</h3>
										<span>Dec 26, 2014</span>
									</div>
									<div class="client-comment">
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque, ex, cupiditate, error, suscipit saepe sed ea consequuntur inventore sequi sit illo.</p>
										<ul class="social-profile">
											<li><a href="#"><i class="fa fa-facebook-square fa-lg"></i></a></li>
											<li><a href="#"><i class="fa fa-twitter-square fa-lg"></i></a></li>
											<li><a href="#"><i class="fa fa-linkedin-square fa-lg"></i></a></li>
										</ul>
									</div>
								</div>
								<!-- /client info -->
							</div>
							<!-- /testimonial single -->
						
							<!-- testimonial single -->
							<div class="item text-center">
								
								<!-- client photo -->
								<div class="client-thumb">
									<img src="img/team/client.jpg" class="img-responsive" alt="HIXX">
								</div>
								<!-- /client photo -->
								
								<!-- client info -->
								<div class="client-info">
									<div class="client-meta">
										<h3>Abul Mal Muhit</h3>
										<span>Dec 26, 2014</span>
									</div>
									<div class="client-comment">
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque, ex, cupiditate, error, suscipit saepe sed ea consequuntur inventore sequi sit illo.</p>
										<ul class="social-profile">
											<li><a href="#"><i class="fa fa-facebook-square fa-lg"></i></a></li>
											<li><a href="#"><i class="fa fa-twitter-square fa-lg"></i></a></li>
											<li><a href="#"><i class="fa fa-linkedin-square fa-lg"></i></a></li>
										</ul>
									</div>
								</div>
								<!-- /client info -->
							</div>
							<!-- /testimonial single -->
							
						</div>		<!-- end testimonial wrapper -->
					</div> 		<!-- end col lg 12 -->
				</div>	    <!-- End row -->
			</div>       <!-- End container -->
		</section>    <!-- End Section -->
		
		
		


		
		<!-- Srart Contact Us
		=========================================== -->		
		<section id="contact-us">
			<div class="container">
				<div class="row">
					
					<!-- section title -->
					<div class="title text-center wow fadeIn" data-wow-duration="500ms">
						<h2>Get In <span class="color">Touch</span></h2>
						<div class="border"></div>
					</div>
					<!-- /section title -->
					
					<!-- Contact Details -->
					<div class="contact-info col-md-6 wow fadeInUp" data-wow-duration="500ms">
						<h3>Contact Details</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam, vero, provident, eum eligendi blanditiis ex explicabo vitae nostrum facilis asperiores dolorem illo officiis ratione vel fugiat dicta laboriosam labore adipisci.</p>
						<div class="contact-details">
							<div class="con-info clearfix">
								<i class="fa fa-home fa-lg"></i>
								<span>Khaja Road, Bayzid, Chittagong, Bangladesh</span>
							</div>
							
							<div class="con-info clearfix">
								<i class="fa fa-phone fa-lg"></i>
								<span>Phone: +880-31-000-000</span>
							</div>
							
							<div class="con-info clearfix">
								<i class="fa fa-fax fa-lg"></i>
								<span>Fax: +880-31-000-000</span>
							</div>
							
							<div class="con-info clearfix">
								<i class="fa fa-envelope fa-lg"></i>
								<span>Email: hello@HIXX.com</span>
							</div>
						</div>
					</div>
					<!-- / End Contact Details -->
						
					<!-- Contact Form -->
					<div class="contact-form col-md-6 wow fadeInUp" data-wow-duration="500ms" data-wow-delay="300ms">
						<form id="contact-form" method="post" action="sendmail.php" role="form">
						
							<div class="form-group">
								<input type="text" placeholder="Your Name" class="form-control" name="name" id="name">
							</div>
							
							<div class="form-group">
								<input type="email" placeholder="Your Email" class="form-control" name="email" id="email">
							</div>
							
							<div class="form-group">
								<input type="text" placeholder="Subject" class="form-control" name="subject" id="subject">
							</div>
							
							<div class="form-group">
								<textarea rows="6" placeholder="Message" class="form-control" name="message" id="message"></textarea>	
							</div>
							
							<div id="mail-success" class="success">
								Thank you. The Mailman is on His Way :)
							</div>
							
							<div id="mail-fail" class="error">
								Sorry, don't know what happened. Try later :(
							</div>
							
							<div id="cf-submit">
								<input type="submit" id="contact-submit" class="btn btn-transparent" value="Submit">
							</div>						
							
						</form>
					</div>
					<!-- ./End Contact Form -->
				
				</div> <!-- end row -->
			</div> <!-- end container -->
			
			<!-- Google Map -->
			<!-- <div class="google-map wow fadeInDown" data-wow-duration="500ms">
				<div id="map-canvas"></div>
			</div>	 -->
			<!-- /Google Map -->
			
		</section> <!-- end section -->
		
		<!-- end Contact Area
		========================================== -->
		
		<footer id="footer" class="bg-one">
			<div class="container">
			    <div class="row wow fadeInUp" data-wow-duration="500ms">
					<div class="col-lg-12">
						
						<!-- Footer Social Links -->
						<div class="social-icon">
							<ul>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
								<li><a href="#"><i class="fa fa-youtube"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
								<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
								<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
							</ul>
						</div>
						<!--/. End Footer Social Links -->

						<!-- copyright -->
						<div class="copyright text-center">
							<a href="index.html">
								<img src="img/logo-navbar.png" alt="HIXX" /> 
							</a>
							<br />
							
							<p>Design And Developed by <a href="http://www.themefisher.com"> Themefisher Team</a>. Copyright &copy; 2015. All Rights Reserved.</p>
						</div>
						<!-- /copyright -->
						
					</div> <!-- end col lg 12 -->
				</div> <!-- end row -->
			</div> <!-- end container -->
		</footer> <!-- end footer -->
		
		<!-- Back to Top
		============================== -->
		<a href="javascript:;" id="scrollUp">
			<i class="fa fa-angle-up fa-2x"></i>
		</a>
		
		<!-- end Footer Area
		========================================== -->
		
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
		<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
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
		<script src="js/grid.js"></script>
		<!-- Custom js -->
		<script src="js/custom.js"></script>
		<script></script>
		
		<script src="assets/bootstrap/js/bootstrap.min.js"></script>

    </body>
</html>