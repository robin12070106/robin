<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">                        

    <head> <!-- ---------이승진 바보------------------------------- -->

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>HIXX에 오신 것을 환영합니다</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
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
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png">

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
	                            	<strong>HIXX</strong>의 모든 서비스를 이용하기 위해서는 회원가입이 필수입니다
                            	</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3><strong>회원가입</strong></h3>
                            		<p>최소한의 정보만으로 <strong>HIXX</strong>와 함께 할 수 있습니다</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-lock"></i>
                        		</div>
                            </div>
                            <c:if test="${validate == 0}">
                            	<script>
                            		alert("회원가입이 성공적으로 이루어졌습니다!");
                            		location.href ="login";
                            	</script>
                            </c:if>
                            <c:if test="${validate == 1}">
                            	<script>
                            		alert("아이디가 중복됩니다!");
                            	</script>
                            </c:if>
                            <c:if test="${validate == 2}">
                            	<script>
                            		alert("비밀번호가 일치하지 않습니다!");
                            	</script>
                            </c:if>
                            <div class="form-bottom">
			                    <form role="form" action="join" method="post" class="login-form">
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-username">E-Mail</label>
			                        	<input type="email" name="form-username" placeholder="E-Mail" class="form-username form-control" id="form-username">
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-password">Password</label>
			                        	<input type="password" name="form-password" placeholder="Password" class="form-password form-control" id="form-password">
			                        </div>
			                        <div class="form-group">
			                    		<label class="sr-only" for="form-password-check">Password-check</label>
			                        	<input type="password" name="form-password-check" placeholder="Password-Check" class="form-password-check form-control" id="form-password-check">
			                        </div>
			                        <div class="form-group">
			                    		<label class="sr-only" for="form-birthday">Birthday</label>
			                        	<input type="date" name="form-birthday" placeholder="Birthday" class="form-birthday form-control" id="form-birthday">
			                        </div>
			                        <div class="form-group">
			                    		<label class="sr-only" for="form-gender">Gender</label>
			                        	<input list="gender" name="form-gender" placeholder="Gender" class="form-gender form-control" id="form-gender">
			                        	<datalist id="gender">
											<option name="form-gender" class="form-gender form-control"	id="form-male">Male</option>
											<option name="form-gender" class="form-gender form-control"	id="form-female">Female</option>
										</datilist>
									</div>
			                        <button type="submit" class="btn">함께하기</button>
			                    </form>
		                    </div>
                        </div>
                    </div>
                    
                </div>
            </div>
            
        </div>


        <!-- Javascript -->
        <script src="js/jquery-1.11.1.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <script src="js/jquery.backstretch.min.js"></script>
        <script src="js/scripts.js"></script>
        
    </body>

</html>