<%@ page import="entity.Products" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 28/12/2023
  Time: 11:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page buffer="64kb" %>
<%List<Products> data = (List<Products>) request.getAttribute("data");
    if (data==null) data=new ArrayList<>();
%>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Milktea Store</title>
    <link rel="icon" href="../img/logo/snapedit_1699446793064.png">
    <script src="https://kit.fontawesome.com/263257cb2f.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<style>

    .nav-tabs {
        max-width: 720px;
        display: flex;
        list-style: none;
        margin: 0px auto;
        padding-top: 20px;
        border-bottom: 3px solid #ddd;
    }

    .nav-tabs li {
        margin-right: 10px;
    }

    .nav-tabs li a {
        color: black;
        display: block;
        padding: 6px 30px;
        text-decoration: none;
        position: relative;
    }

    .nav-tabs li a::after {
        content: "";
        height: 3px;
        width: 100%;
        position: absolute;
        left: 0px;
        bottom: -3px;
        background: transparent;
    }

    .nav-tabs li.active a::after, .nav-tabs li:hover a::after {
        background: #088178;

    }
</style>
<jsp:include page="header.jsp"></jsp:include>


<section id="page-banner"></section>

<section id="page-header">
    <div class="container">
        <ul class="breadcrumb" aria-label="breadcrumbs">
            <li><a href="home.html">Trang chủ</a></li>
            <li class="active"><a href="#">Thức uống</a></li>
        </ul>
        <h1>Thức uống</h1>
        <div class="separator-icon gray"></div>
        <ul class="menu">
            <li class="active">
                <a href="milktea.html" class="dish text-uppercase">Trà sữa</a>
            </li>

            <li class="">
                <a href="tea.html" class="dish text-uppercase">Trà</a>
            </li>

            <li class="">
                <a href="coffee.html" class="dish text-uppercase">Cà phê</a>
            </li>

            <li class="">
                <a href="yaourt.html" class="dish text-uppercase">Yaourt</a>
            </li>

            <li class="">
                <a href="soda.html" class="dish text-uppercase">Soda</a>
            </li>

            <li class="">
                <a href="smoothie.html" class="dish text-uppercase">Sinh tố</a>
            </li>

            <li class="">
                <a href="juice.html" class="dish text-uppercase">Nước ép</a>
            </li>

        </ul>

    </div>

</section>

<section id="#section-ca-phe-wrapper">
    <section id="product1" class="section-p1">
        <div class="pro-container">
<%--            <c:forEach items="${productList}" var="p">--%>
<%--                <div class="pro" onclick="window.location.href='sproduct.html';">--%>
<%--                    <img src="${p.image}" alt="">--%>
<%--                    <div class="des">--%>
<%--                        <span>${p.category.name}</span>--%>
<%--                        <h5>${p.name}</h5>--%>
<%--                        <div class="star">--%>
<%--                            <i class="fas fa-star"></i>--%>
<%--                            <i class="fas fa-star"></i>--%>
<%--                            <i class="fas fa-star"></i>--%>
<%--                            <i class="fas fa-star"></i>--%>
<%--                            <i class="fas fa-star"></i>--%>
<%--                        </div>--%>
<%--                        <h4>${p.price} VND</h4>--%>
<%--                    </div>--%>
<%--                    <a><i class="fa-solid fa-cart-shopping cart"></i></a>--%>
<%--                </div>--%>
<%--            </c:forEach>--%>
    <%for (Products p:data){%>
    <div class="pro" onclick="window.location.href='sproduct.html';">
        <img src="<%=p.getImage()%>" alt="">
        <div class="des">
            <span><%= p.getCategory() %></span>
            <h5><%=p.getName()%></h5>
            <div class="star">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>
            <h4><%=p.getPrice()%></h4>
        </div>
        <a><i class="fa-solid fa-cart-shopping cart"></i></a>
    </div>
    <%}%>
        </div>

    </section>

    <section id="pagination" class="section-p1">
        <a href="#">1</a>
        <a href="milktea2.html">2</a>
        <a href="milktea2.html"><i class="fas fa-long-arrow-alt-right"></i></a>
    </section>

    <section id="newsletter" class="section-p1 section-m1">
        <div class="newstext">
            <h4>Sign Up For Newsletter</h4>
            <p>Get E-mail updates about our latest shop and <span>special offers.</span>
            </p>
        </div>
        <div class="form">
            <input type="text" placeholder="Your email address">
            <button class="normal">Sign Up</button>
        </div>
    </section>
</section>

<jsp:include page="footer.jsp"></jsp:include>

<a href="#" class="scrollTop"><i class="fa-solid fa-arrow-up"></i></a>

<script src="../js/script.js"></script>
</body>
<script src="https://code.jquery.com/jquery-3.6.2.js"></script>
<script>
    $(document).ready(function () {
        $('.tab-content-item').hide();
        $('.tab-content-item:first-child').fadeIn();
        $('.nav-tabs li').click(function () {
            $('.nav-tabs li').removeClass('active');
            $(this).addClass('active');

            let id_tabs = $(this).children('a').attr('href');
            $('.tab-content-item').hide();
            $(id_tabs).fadeIn();
            return false;
        });
    });

</script>
</html>
