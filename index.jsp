<!DOCTYPE HTML>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="food.*,java.util.*" %>
<jsp:useBean id="FoodDAO" class="food.FoodDAO"/>
<jsp:useBean id="FoodDTO" class="food.FoodDTO"/>
<%
    Vector<FoodDTO> list = new Vector<FoodDTO>();
    list = FoodDAO.getFoodListbyRate();
    int vectorSize = list.size();
%>
<html lang="en-US">
<head>
	<title>몰땅</title>
	
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
	
	<!--=== Internet explorer fix ===-->
	<!-- [if lt IE 9]>
		<script src="http://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="http://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<![endif] -->
	
	
</head>
<body>
	<!--=== Preloader section starts ===-->
	<section id="preloader">
		<div class="loading-circle fa-spin"></div>
	</section>
	<!--=== Preloader section Ends ===-->
	
	<!--=== Header section Starts ===-->
	<div id="header" class="header-section">
		<!-- sticky-bar Starts-->
		<div class="sticky-bar-wrap">
			<div class="sticky-section">
				<div id="topbar-hold" class="nav-hold container">
					<nav class="navbar" role="navigation">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-responsive-collapse">
									<span class="sr-only">Toggle navigation</span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
							</button>
							<!--=== Site Name ===-->
							<a class="site-name navbar-brand" href="#"><span>E</span>gret</a>
						</div>
						
						<!-- Main Navigation menu Starts -->
						<div class="collapse navbar-collapse navbar-responsive-collapse">
							<ul class="nav navbar-nav navbar-right">
								<li class="current"><a href="#header">Home</a></li>
								<li><a href="#section-feature">Best</a></li>
                                <li><a href="#section-screenshots">Newest</a></li>
								<li><a href="#section-subscribe">Search</a></li>
								<li><a href="#section-contact">Q & A</a></li>
							</ul>
						</div>
						<!-- Main Navigation menu ends-->
					</nav>
				</div>
			</div>
		</div>
		<!-- sticky-bar Ends-->
		<!--=== Header section Ends ===-->
		
		<!--=== Home Section Starts ===-->
		<div id="section-home" class="home-section-wrap center">
			<div class="section-overlay"></div>
			<div class="container home">
				<div class="row">
					<h1 class="well-come">몰땅</h1>
					
					<div class="col-md-8 col-md-offset-2">
						<p class="intro-message">Neque porro quisquam est qui dolorem ipsum quia dolor sit amet qui dolorem</p>
						
						<div class="home-buttons">
							<a href="#section-contact" class="fancy-button button-line button-white vertical">
								Q & A
								<span class="icon">
									<i class="fa fa-question-circle"></i>
								</span>
							</a>
							<a href="#" class="fancy-button button-line button-white zoom">
								제품 둘러보기
								<span class="icon">
									<i class="fa fa-leaf"></i>
								</span>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--=== Home Section Ends ===-->
	</div>
	
	
	<!--=== Features section Starts ===-->
	<section id="section-feature" class="feature-wrap">
		<div class="container features center">
			<div class="row">
				<div class="col-lg-12">
						<!--Features container Starts -->
						<ul id="card-ul" class="features-hold baraja-container">
						
							<!-- Single Feature Starts -->
							<li class="single-feature" title="Card style">
								<img src="<%=list.get(0).getImg()%>" alt="" class="feature-image" /><!-- Feature Icon -->
								<h4 class="feature-title color-scheme">Most Popular #1</h4>
								<p class="feature-text">
									<%=list.get(0).getName()%>
								</p>
								
									<a href="single-project-2.jsp?style=white&num=<%=list.get(0).getNum()%>" class="fancy-button button-line btn-col small vertical">
										Details
										<span class="icon">
											<i class="fa fa-leaf"></i>
										</span>
									</a>
								
							</li>
							<!-- Single Feature Ends -->
							
							<!-- Single Feature Starts -->
							<li class="single-feature" title="50+ SVG Icon included">
								<img src="<%=list.get(1).getImg()%>" alt="" class="feature-image" /><!-- Feature Icon -->
								<h4 class="feature-title color-scheme">Most Popular #2</h4>
								<p class="feature-text">
									<%=list.get(1).getName()%>
								</p>
								<a href="single-project-2.jsp?style=white&num=<%=list.get(1).getNum()%>" class="fancy-button button-line btn-col small zoom">
									Details
									<span class="icon">
										<i class="fa fa-leaf"></i>
									</span>
								</a>
							</li>
							<!-- Single Feature Ends -->
							
							<!-- Single Feature Starts -->
							<li class="single-feature" title="MailChimp Ready">
								<img src="<%=list.get(2).getImg()%>" alt="" class="feature-image" /><!-- Feature Icon -->
								<h4 class="feature-title color-scheme">Most Popular #3</h4>
								<p class="feature-text">
									<%=list.get(2).getName()%>
								</p>
								<a href="single-project-2.jsp?style=white&num=<%=list.get(2).getNum()%>" class="fancy-button button-line btn-col small zoom">
									Details
									<span class="icon">
										<i class="fa fa-leaf"></i>
									</span>
								</a>
							</li>
							<!-- Single Feature Ends -->
							
							<!-- Single Feature Starts -->
							<li class="single-feature" title="4 home style">
								<img src="<%=list.get(3).getImg()%>" alt="" class="feature-image" /><!-- Feature Icon -->
								<h4 class="feature-title color-scheme">Most Popular #4</h4>
								<p class="feature-text">
									<%=list.get(3).getName()%>
								</p>
								<a href="single-project-2.jsp?style=white&num=<%=list.get(3).getNum()%>" class="fancy-button button-line btn-col small zoom">
									Details
									<span class="icon">
										<i class="fa fa-leaf"></i>
									</span>
								</a>
							</li>
							<!-- Single Feature Ends -->
							
							<!-- Single Feature Starts -->
							<li class="single-feature" title="Parallax Backgrounds">
								<img src="<%=list.get(4).getImg()%>" alt="" class="feature-image" /><!-- Feature Icon -->
								<h4 class="feature-title color-scheme">Most Popular #5</h4>
								<p class="feature-text">
									<%=list.get(4).getName()%>
								</p>
								<a href="single-project-2.jsp?style=white&num=<%=list.get(4).getNum()%>" class="fancy-button button-line btn-col small zoom">
									Details
									<span class="icon">
										<i class="fa fa-leaf"></i>
									</span>
								</a>
							</li>
							<!-- Single Feature Ends -->
							
							<!-- Single Feature Starts -->
							<li class="single-feature" title="Ajax contact form">
								<img src="<%=list.get(5).getImg()%>" alt="" class="feature-image" /><!-- Feature Icon -->
								<h4 class="feature-title color-scheme">Most Popular #6</h4>
								<p class="feature-text">
									<%=list.get(5).getName()%>
								</p>
								<a href="single-project-2.jsp?style=white&num=<%=list.get(5).getNum()%>" class="fancy-button button-line btn-col small zoom">
									Details
									<span class="icon">
										<i class="fa fa-leaf"></i>
									</span>
								</a>
							</li>
							<!-- Single Feature Ends -->
							
							<!-- Single Feature Starts -->
							<li class="single-feature" title="unlimited Google fonts">
								<img src="<%=list.get(6).getImg()%>" alt="" class="feature-image" /><!-- Feature Icon -->
								<h4 class="feature-title color-scheme">Most Popular #7</h4>
								<p class="feature-text">
									<%=list.get(6).getName()%>
								</p>
								<a href="single-project-2.jsp?style=white&num=<%=list.get(6).getNum()%>" class="fancy-button button-line btn-col small zoom">
									Details
									<span class="icon">
										<i class="fa fa-leaf"></i>
									</span>
								</a>
							</li>
							<!-- Single Feature Ends -->
							
							<!-- Single Feature Starts -->
							<li class="single-feature" title="Feature heading">
								<img src="<%=list.get(7).getImg()%>" alt="" class="feature-image" /><!-- Feature Icon -->
								<h4 class="feature-title color-scheme">Most Popular #8</h4>
								<p class="feature-text">
									<%=list.get(7).getName()%>
								</p>
								<a href="single-project-2.jsp?style=white&num=<%=list.get(7).getNum()%>" class="fancy-button button-line btn-col small zoom">
									Details
									<span class="icon">
										<i class="fa fa-leaf"></i>
									</span>
								</a>
							</li>
							<!-- Single Feature Ends -->
						</ul>
						<!--Features container Ends -->
						
						<!-- Features Controls Starts -->
						<div class="features-control relative">
							<button class="control-icon fancy-button button-line no-text btn-col bell" id="feature-prev" title="Previous" >
								<span class="icon">
									<i class="fa fa-arrow-left"></i>
								</span>
							</button>
							<button class="control-icon fancy-button button-line no-text btn-col zoom" id="feature-expand" title="Expand" >
								<span class="icon">
									<i class="fa fa-expand"></i>
								</span>
							</button>
							<button class="control-icon fancy-button button-line no-text btn-col zoom" id="feature-close" title="Collapse" >
								<span class="icon">
									<i class="fa fa-compress"></i>
								</span>
							</button>
							<button class="control-icon fancy-button button-line no-text btn-col bell" id="feature-next" title="Next" >
								<span class="icon">
									<i class="fa fa-arrow-right"></i>
								</span>
							</button>
						</div>
						<!-- Features Controls Ends -->
				</div>
			</div>
		</div>
	</section>
	<!--=== Features section Ends ===-->
	
	<!--=== ScreenShots section Starts ===-->
    <%
        list = FoodDAO.getFoodListbyRegdateDesc();   // 나중에 최신 상품 순으로 정렬할 예정
        vectorSize = list.size();
    %>
	<section id="section-screenshots" class="screenshots-wrap">
		<div class="container screenshots animated" data-animation="fadeInUp" data-animation-delay="1000">
			<div class="row porfolio-container">
				<div class="col-md-10 col-md-offset-1 center section-title">
					<h3>최신 상품 목록</h3>
				</div>
				<!-- Single screenshot starts -->
				<div class="col-md-4 col-sm-4 col-xs-6">
					<div class="screenshot">
						<div class="photo-box">
							<img src="<%=list.get(0).getImg()%>" alt="" />
							<div class="photo-overlay">
								<h4><%=list.get(0).getName()%></h4>
							</div>
							<span class="photo-zoom">
								<a href="single-project.jsp?num=<%=list.get(0).getNum()%>" class="view-project"><i class="fa fa-search-plus fa-2x"></i></a>
							</span>
						</div>
					</div>
				</div>
				<!-- Single screenshot ends -->
				
				<!-- Single screenshot starts -->
				<div class="col-md-4 col-sm-4 col-xs-6">
					<div class="screenshot">
						<div class="photo-box">
							<img src="<%=list.get(1).getImg()%>" alt="" />
							<div class="photo-overlay">
								<h4><%=list.get(1).getName()%></h4>
							</div>
							<span class="photo-zoom">
								<a href="single-project.jsp?num=<%=list.get(1).getNum()%>" class="view-project"><i class="fa fa-search-plus fa-2x"></i></a>
							</span>
						</div>
						
					</div>
				</div>
				<!-- Single screenshot ends -->
				
				<!-- Single screenshot starts -->
				<div class="col-md-4 col-sm-4 col-xs-6">
					<div class="screenshot">
						<div class="photo-box">
							<img src="<%=list.get(2).getImg()%>" alt="" />
							<div class="photo-overlay">
								<h4><%=list.get(2).getName()%></h4>
							</div>
							<span class="photo-zoom">
								<a href="single-project.jsp?num=<%=list.get(2).getNum()%>" class="view-project"><i class="fa fa-search-plus fa-2x"></i></a>
							</span>
						</div>
						
					</div>
				</div>
				<!-- Single screenshot ends -->
				
				<!-- Single screenshot starts -->
				<div class="col-md-4 col-sm-4 col-xs-6">
					<div class="screenshot">
						<div class="photo-box">
							<img src="<%=list.get(3).getImg()%>" alt="" />
							<div class="photo-overlay">
								<h4><%=list.get(3).getName()%></h4>
							</div>
							<span class="photo-zoom">
								<a href="single-project.jsp?num=<%=list.get(3).getNum()%>" class="view-project"><i class="fa fa-search-plus fa-2x"></i></a>
							</span>
						</div>
						
					</div>
				</div>
				<!-- Single screenshot ends -->
				
				<!-- Single screenshot starts -->
				<div class="col-md-4 col-sm-4 col-xs-6">
					<div class="screenshot">
						<div class="photo-box">
							<img src="<%=list.get(4).getImg()%>" alt="" />
							<div class="photo-overlay">
								<h4><%=list.get(4).getName()%></h4>
							</div>
							<span class="photo-zoom">
								<a href="single-project.jsp?num=<%=list.get(4).getNum()%>" class="view-project"><i class="fa fa-search-plus fa-2x"></i></a>
							</span>
						</div>
						
					</div>
				</div>
				<!-- Single screenshot ends -->
				
				<!-- Single screenshot starts -->
				<div class="col-md-4 col-sm-4 col-xs-6">
					<div class="screenshot">
						<div class="photo-box">
							<img src="<%=list.get(5).getImg()%>" alt="" />
							<div class="photo-overlay">
								<h4><%=list.get(5).getName()%></h4>
							</div>
							<span class="photo-zoom">
								<a href="single-project.jsp?num=<%=list.get(5).getNum()%>" class="view-project"><i class="fa fa-search-plus fa-2x"></i></a>
							</span>
						</div>
						
					</div>
				</div>
				<!-- Single screenshot ends -->
				
			</div>
			
			<div id="portfolio-loader" class="center">
				<div class="loading-circle fa-spin"></div>
			</div> <!--=== Portfolio loader ===-->
			
			<div id="portfolio-load"></div><!--=== ajax content will be loaded here ===-->
			
			<div class="col-md-12 center back-button">
				<a class="backToProject fancy-button button-line bell btn-col" href="#">
					Back
					<span class="icon">
						<i class="fa fa-arrow-left"></i>
					</span>
				</a>
			</div><!--=== Single portfolio back button ===-->
		</div>
	</section>
	<!--=== ScreenShots section Ends ===-->
	
	
	
	
	
	
	<!--=== Subscribe section Starts ===-->
	<section id="section-subscribe" class="subscribe-wrap">
		<div class="section-overlay"></div>
		<div class="container subscribe center">
			<div class="row">
				<div class="col-lg-12">
					<p class="subscription-success"></p>
					<p class="subscription-failed"></p>
					<div class="col-md-10 col-md-offset-1 center section-title">
						<h3>Search</h3>
					</div>
					<form id="subscription-form" method="post" action="./list.jsp" name="s">
						<input type="text" name="search" required="required" placeholder="Keyword" class="input-email" />
						<button  onclick="searchClick();" id="subscription-btn" class="fancy-button button-line button-white large zoom">
							Search
							<span class="icon">
								<i class="fa fa-sign-in"></i>
							</span>
						</button>
					</form>
				</div>
			</div>
		</div>
	</section>
                    
<script>
    function searchClick(){
        document.s.submit();
    }
</script>
	<!--=== Subscribe section Ends ===-->
            
	
	<!--=== Contact section Starts ===-->
	<section id="section-contact" class="contact-wrap">
	<div class="section-overlay"></div>
		<div class="container contact center animated" data-animation="flipInY" data-animation-delay="1000">
			<div class="row">
				<div class="col-md-8 col-md-offset-2">
					<div class="col-md-10 col-md-offset-1 center section-title">
						<h3>Leave a message</h3>
					</div>
					
					<div class="confirmation">
						<p><span class="fa fa-check"></span></p>
					</div>
					
					<form class="contact-form support-form">
						
						<div class="col-lg-12">
							<input id="name" class="input-field form-item field-name" type="text" required="required" name="contact-name" placeholder="Name" />

							<input id="email" class="input-field form-item field-email" type="email" required="required" name="contact-email" placeholder="Email" />

							<input id="subject" class="input-field form-item field-subject" type="text" required="required" name="contact-subject" placeholder="Subject" />
							<textarea id="message" class="textarea-field form-item field-message" rows="10" name="contact-message" placeholder="Message"></textarea>
						</div>
						<button type="submit" class="fancy-button button-line button-white large zoom subform">
							Send message
							<span class="icon">
								<i class="fa fa-paper-plane-o"></i>
							</span>
						</button>
					</form>
				</div>
			</div>
		</div>
	</section>
	<!--=== Contact section Ends ===-->
	
	<!--=== Footer section Starts ===-->
	<div id="section-footer" class="footer-wrap">
		<div class="container footer center">
			<div class="row">
				<div class="col-lg-12">
					<h4 class="footer-title"><!-- Footer Title -->
						<a class="site-name" href="#"><span>E</span>gret</a>
					</h4>
					
					<!-- Social Links -->
					<div class="social-icons">
						<ul>
							<li><a href="#"><i class="fa fa-facebook-square"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter-square"></i></a></li>
							<li><a href="#"><i class="fa fa-google-plus-square"></i></a></li>
							<li><a href="#"><i class="fa fa-pinterest-square"></i></a></li>
							<li><a href="#"><i class="fa fa-flickr"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin-square"></i></a></li>
						</ul>
					</div>
					
					<p class="copyright">All rights reserved &copy; 2015</p>
				</div>
			</div>
		</div>
	</div>
	<!--=== Footer section Ends ===-->
	
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

</body>
</html>