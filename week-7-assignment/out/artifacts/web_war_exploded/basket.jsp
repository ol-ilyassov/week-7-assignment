<%@ page import="products.Product" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: olgas
  Date: 20.10.2020
  Time: 19:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp"/>
<head>
<style>
    .container{
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        flex-direction: column;
    }
    .items{
        font-size: 30px;
        border: solid black;
        border-radius: 1px;
        width: 80%;
    }
    td,table,th{
        text-align: center;
        border: 1px solid black;
    }
</style>
</head>
<div class="container">
<table class="items">
    <tr>
        <th>Title</th>
        <th>Price</th>
        <th>Description</th>
    </tr>
<%
    ArrayList<Product> basket = (ArrayList<Product>) session.getAttribute("basket");
    int totalprice=0;
    for(int i=0;i<basket.size();i++){
        out.println("<tr>");
        out.println("<td>"+basket.get(i).getTitle()+"</td>");
        out.println("<td>"+basket.get(i).getPrice()+"</td>");
        out.println("<td>"+basket.get(i).getDescription()+"</td>");
        totalprice+=basket.get(i).getPrice();
        out.println("</tr>");
    }
%>
</table><br>
    <p style="font-size: 30px"><%="Total price of basket: "+totalprice%>
</p>
<jsp:include page="footer.jsp"/>
