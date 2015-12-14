<!DOCTYPE HTML>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="food.*,java.util.*" %>
<jsp:useBean id="FoodDAO" class="food.FoodDAO"/>
<jsp:useBean id="FoodDTO" class="food.FoodDTO"/>
<jsp:useBean id="LikedDAO" class="food.LikedDAO"/>
<jsp:useBean id="CartDAO" class="food.CartDAO"/>
<%
    String mem_id = (String)session.getAttribute("memID");
    if(mem_id == null){
%>
    <script>
        alert("로그인을 먼저 해주세요.");
        window.history.back();
    </script>
<%
   }
    String num = request.getParameter("num");
    FoodDTO = FoodDAO.getFood(Integer.parseInt(num));
    CartDAO.inOut(num,mem_id);
%>
    
<script>
    alert("장바구니에 추가되었습니다.");
    location.href = "./cart.jsp?num=<%=num%>";
</script>