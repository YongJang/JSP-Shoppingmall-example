<!DOCTYPE HTML>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="food.*,java.util.*" %>
<jsp:useBean id="FoodDAO" class="food.FoodDAO"/>
<jsp:useBean id="FoodDTO" class="food.FoodDTO"/>
<jsp:useBean id="LikedDAO" class="food.LikedDAO"/>
<jsp:useBean id="CartDAO" class="food.CartDAO" />
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

<body>
    
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
                        <%
                           if(mem_id != null){
                           %>
						<li><i class="fa fa-link"></i> <strong class="strong">Goods Like: </strong> <a href="./like.jsp?num=<%=FoodDTO.getNum()%>"><strong>좋아요 : <%=LikedDAO.getLikes(num)%></strong></a></li>
                        <li><i class="fa fa-user"></i> <a href="./addCart.jsp?num=<%=FoodDTO.getNum()%>"><strong class="strong">Add Cart </strong></a> </li>  
                            <% } %>
                           
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
</body>

</html>
    
   