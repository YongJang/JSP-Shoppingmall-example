<!DOCTYPE HTML>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="food.*,java.util.*" %>
<jsp:useBean id="FoodDAO" class="food.FoodDAO"/>
<jsp:useBean id="FoodDTO" class="food.FoodDTO"/>
<jsp:useBean id="LikedDAO" class="food.LikedDAO"/>
<%
    String mem_id = (String)session.getAttribute("memID");
    String num = request.getParameter("num");
    String style = request.getParameter("style");
    FoodDTO = FoodDAO.getFood(Integer.parseInt(num));
%>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="css/bootstrap.css" />
	<link rel="stylesheet" href="css/font-awesome.min.css" />
	<link rel="stylesheet" href="css/linea-icon.css" />
	<link rel="stylesheet" href="css/fancy-buttons.css" />
	
	<!--=== Google Fonts ===-->
	<link href='http://fonts.googleapis.com/css?family=Bangers' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Roboto+Slab:300,700,400' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Raleway:600,400,300' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>
	<!--=== Other CSS files ===-->
	<link rel="stylesheet" href="css/animate.css" />
	<link rel="stylesheet" href="css/jquery.vegas.css" />
	<link rel="stylesheet" href="css/baraja.css" />
	<link rel="stylesheet" href="css/jquery.bxslider.css" />
	
	<!--=== Main Stylesheets ===-->
	<link rel="stylesheet" href="css/style.css" />
	<link rel="stylesheet" href="css/responsive.css" />
	
	<!--=== Color Scheme, three colors are available red.css, orange.css and gray.css ===-->
	<link rel="stylesheet" id="scheme-source" href="css/schemes/gray.css" />
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title>Project</title>
	<link rel="stylesheet" href="css/bootstrap.css" />
	<link rel="stylesheet" href="css/style.css" />
   
</head>

<!--==== Js files ====-->
<!--==== Essential files ====-->
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.min.js"></script>
<script type="text/javascript" src="js/modernizr.js"></script>
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>

<!--==== Slider and Card style plugin ====-->
<script type="text/javascript" src="js/jquery.baraja.js"></script>
<script type="text/javascript" src="js/jquery.vegas.min.js"></script>
<script type="text/javascript" src="js/jquery.bxslider.min.js"></script>

<!--==== MailChimp Widget plugin ====-->
<script type="text/javascript" src="js/jquery.ajaxchimp.min.js"></script>

<!--==== Scroll and navigation plugins ====-->
<script type="text/javascript" src="js/jquery.nicescroll.min.js"></script>
<script type="text/javascript" src="js/jquery.nav.js"></script>
<script type="text/javascript" src="js/jquery.appear.js"></script>
<script type="text/javascript" src="js/jquery.fitvids.js"></script>

<!--==== Custom Script files ====-->
<script type="text/javascript" src="js/custom.js"></script>

<body>

<style>
    .container{
        padding: 100px;
        padding-top: 200px;
        padding-bottom: 235px;
    }
</style>
<section id="section-screenshots" class="screenshots-wrap">
	<div class="container">
		<div class="portfolio-project">
			<div class="row">
				<div class="col-md-10 col-md-offset-1 center section-title">
					<h4><%=FoodDTO.getName()%></h4>
				</div>
				<div class="col-md-5 project-photo">
					<img src="<%=FoodDTO.getImg()%>" alt="" />
				</div>
				<div class="col-md-3 project-details">
					<h5>상세 정보</h5>
					<ul class="details-list">
						<li><i class="fa fa-th-list"></i> <strong class="strong">Category: </strong> <%=FoodDTO.getType()%></li>
						<li><i class="fa fa-user"></i> <strong class="strong">Cost: </strong> <%=FoodDTO.getCost()%></li>
						<li><i class="fa fa-calendar"></i> <strong class="strong">Date: </strong> <%=FoodDTO.getRegdate()%></li>
						<li><i class="fa fa-group"></i> <strong class="strong">Region: </strong> <%=FoodDTO.getRegion()%></li>
						<li><i class="fa fa-link"></i> <strong class="strong">Goods Like: </strong> <a href="./like2.jsp?num=<%=FoodDTO.getNum()%>"><strong>좋아요 : <%=LikedDAO.getLikes(num)%></strong></a></li>
                        <li><i class="fa fa-user"></i> <a href="./addCart.jsp?num=<%=FoodDTO.getNum()%>"><strong class="strong">Add Cart </strong></a> </li>    
					</ul>
				</div>
				<div class="col-md-4 project-info">
					<h5>주의 사항</h5>
					<p>한 번 구입한 상품은 환불이 불가능 합니다. </p>
				</div>
			</div>
		</div>
        <div id="portfolio-load"></div><!--=== ajax content will be loaded here ===-->
			
			<div class="col-md-12 center back-button">
				<a class="backToProject fancy-button button-line bell btn-col" href="#">
					Back
					<span class="icon">
						<i class="fa fa-arrow-left"></i>
					</span>
				</a>
			</div>
	</div>
</section>
</body>

</html>