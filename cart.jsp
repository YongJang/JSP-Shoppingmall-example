<!DOCTYPE HTML>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="food.*,java.util.*" %>
<jsp:useBean id="FoodDAO" class="food.FoodDAO"/>
<jsp:useBean id="FoodDTO" class="food.FoodDTO"/>
<jsp:useBean id="CartDAO" class="food.CartDAO"/>
<jsp:useBean id="CartDTO" class="food.CartDTO"/>
<%
    String mem_id = (String)session.getAttribute("memID");
    request.setCharacterEncoding("utf-8");
    String num = request.getParameter("num");
    Vector<CartDTO> list = new Vector<CartDTO>();
    Vector<FoodDTO> flist = new Vector<FoodDTO>();
    list = CartDAO.getCartbyNumandID(num,mem_id);
    int vectorSize = list.size();
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
	

<body>

<style>
    .screenshots-wrap{
        vertical-align: middle;
        padding-bottom: 200px;
    }
    
    #section-screenshots{
        opacity: 0.8;
    }
    
    #section-screenshots .screenshot{
        opacity: 1;
    }
</style>
    <section id="section-screenshots" class="screenshots-wrap">
	<div class="container screenshots animated" data-animation="fadeInUp" data-animation-delay="1000">
			<div class="row porfolio-container">
				<div class="col-md-10 col-md-offset-1 center section-title">
					<h3>장바구니</h3>
				</div>
				
<%
        if(list.size() <= 0){
%>
                    <div class="col-md-4 col-sm-4 col-xs-6">
                        장바구니가 비었습니다.
                    </div>
<%
        }else{
                for(int i = 0; i < vectorSize; i++){
                    FoodDTO = FoodDAO.getFood(list.get(i).getNum());
%>
                <!-- Single screenshot starts -->
				<div class="col-md-4 col-sm-4 col-xs-6">
					<div class="screenshot">
						<div class="photo-box">
							<img src="<%=FoodDTO.getImg()%>" alt="" />
							<div class="photo-overlay">
								<h4><%=FoodDTO.getName()%></h4>
							</div>
							<span class="photo-zoom">
								<a href="single-project.jsp?num=<%=FoodDTO.getNum()%>" class="view-project"><i class="fa fa-search-plus fa-2x"></i></a>
							</span>
						</div>
					</div>
				</div>
				<!-- Single screenshot ends -->
<%
                }   // end for loop
%>
<%
   }    // end else
%>
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
</body>

</html>
                
                
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