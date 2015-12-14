<!DOCTYPE HTML>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="food.*,java.util.*" %>
<jsp:useBean id="FoodDAO" class="food.FoodDAO"/>
<jsp:useBean id="FoodDTO" class="food.FoodDTO"/>
<%
    String num = request.getParameter("num");
    String style = request.getParameter("style");
    FoodDTO = FoodDAO.getFood(Integer.parseInt(num));
%>