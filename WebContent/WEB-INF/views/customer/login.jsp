<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>HIXX에 오신 것을 환영합니다</title>

<!-- CSS -->
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="css/form-elements.css">
<link rel="stylesheet" href="css/style.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

<!-- Favicon and touch icons -->
<link rel="shortcut icon" href="img/favicon.png">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="ico/apple-touch-icon-57-precomposed.png">
<script>
	window.addEventListener("load", function() {
		var facebookBtn = document.querySelector("#facebook-btn");
		var twitterBtn = document.querySelector("#twitter-btn")
		var googlePlusBtn = document.querySelector("#google-plus-btn");

		facebookBtn.onclick = function() {
			alert("죄송합니다 Facebook은 준비중입니다");
		};
		
		twitterBtn.onclick = function() {
			alert("죄송합니다 Twitter는 준비중입니다");
		};
		
		googlePlusBtn.onclick = function() {
			alert("죄송합니다 Google+는 준비중입니다");
		};
	});
</script>
</head>
<body>
	<!-- Top content -->
	<div class="top-content">

		<div class="inner-bg">
			<div class="container">
				<div class="row">
					<div class="col-sm-8 col-sm-offset-2 text">
						<img class="wow fadeInUp" src="img/logo-main.png" alt="HIXX">
						<h2 data-wow-duration="500ms"  data-wow-delay="500ms" class="heading animated fadeInRight">Welcome To HIXX</h2>
						<div class="description">
							<p>
								안녕하세요 <strong>HIXX</strong>입니다<br />
								<strong>HIXX</strong>는 대한민국 최초로 군집화된 데이터와 사용자 기반 빅데이터를 활용하여<br />개인화된
								여행가이드를 제공 해 드리는 서비스입니다
							</p>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-6 col-sm-offset-3 form-box">
						<div class="form-top">
							<div class="form-top-left">
								<h3>즐거운 여행을 시작하세요</h3>
								<p>E-mail과 생일 그리고 전화번호만으로<br />당신을 새로운 여행의 세계로 이끌겠습니다</p>
							<a href="join"><strong>함께하기</strong></a>
							</div>
							<div class="form-top-right">
								<i class="fa fa-lock"></i>
							</div>
						</div>
						<div class="form-bottom">
							<form role="form" action="login" method="post" class="login-form">
								<div class="form-group">
								<p>이미 가족이 되었다면 :)</p>
									<label class="sr-only" for="form-username">E-Mail</label> <input
										type="text" name="form-username" placeholder="E-Mail"
										class="form-username form-control" id="form-username">
								</div>
								<div class="form-group">
									<label class="sr-only" for="form-password">Password</label> <input
										type="password" name="form-password" placeholder="Password"
										class="form-password form-control" id="form-password">
								</div>
								<button type="submit" class="btn">들어가기</button>
							</form>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-6 col-sm-offset-3 social-login">
						<h3>이런 방법도 있어요!</h3>
						<div class="social-login-buttons">
							<a id = "facebook-btn" class="btn btn-link-2" href="#"> <i class="fa fa-facebook"></i>
								Facebook
							</a> <a id = "twitter-btn" class="btn btn-link-2" href="#"> <i class="fa fa-twitter"></i>
								Twitter
							</a> <a id = "google-plus-btn" class="btn btn-link-2" href="#"> <i class="fa fa-google-plus"></i>
								Google+
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<%-- 	<%
		String id = null;
		int validate =2;
		if (request.getSession().getAttribute("id") != null && request.getAttribute("validate") != null) {
			id = (String)request.getSession().getAttribute("id");
			validate = (int)request.getAttribute("validate");
		}
		if (validate == 0) { %>
			<script>
				alert ("아이디 혹은 비밀번호가 일치하지 않습니다");
			</script>
		<%}
		else if(validate ==1) {%>
			<script>
				alert ("<%=id%>님 로그인을 환영합니다");
			</script> <%
			request.getRequestDispatcher("/WEB-INF/views/customer/default-rating.jsp").forward(request,response);
		}
	%> --%>

	<c:if test="${validate ==0}">
		<script>
			alert ("아이디 혹은 비밀번호가 일치하지 않습니다");
		 	location.href = "login";
		</script>
	</c:if>
	
	<c:if test="${validate ==1}">
		<script>
			var id = "<%=request.getSession().getAttribute("id")%>";
			alert (id + "님 로그인을 환영합니다");
		 	location.href = "default-rating";
		</script>
	</c:if>


	<!-- Javascript -->
	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<script src="js/jquery.backstretch.min.js"></script>
	<script src="js/scripts.js"></script>



</body>

</html>