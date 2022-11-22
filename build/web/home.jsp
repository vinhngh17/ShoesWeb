<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css"
        integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="css/main.css" />
    <link rel="stylesheet" href="css/base.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
        integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>

<body>
    <div class="wrapper">
        
        <!--Header-->
        <jsp:include page="header.jsp"></jsp:include>
        
        <!-- Big image -->
        <div class="big-img">
            <div class="grid">
                <img class="big-img-src" src="img/47581.jpg" />
            </div>
        </div>
        
        <!-- Container -->
        <div class="container">
            <div class="grid">
                <div class="grid__row">
                    <div class="grid__column-2">
                        <nav class="category">
                            <h3 class="category-heading">
                                DANH MỤC
                            </h3>

                            <ul class="category-list">
                                <c:forEach items= "${listC}" var = "o">
                                    <li class="category-item">
                                        <a href="category?cid=${o.cid}" class="category-item-link">${o.cname}</a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </nav>
                    </div>

                    <div class="grid__column-10">
                        <div class="home-bar">
                            <div class="home-bar-item">
                                <ul class="home-bar-pagination">
                                    <li class="home-bar-pagination-item">
                                        <a href="" class="home-bar-pagination-item-link">
                                            <i class="home-bar-pagination-item-icon fa-solid fa-angle-left"></i>
                                        </a>
                                    </li>
                                    <li class="home-bar-pagination-item home-bar-pagination-item--active">
                                        <a href="" class="home-bar-pagination-item-link">1</a>
                                    </li>
                                    <li class="home-bar-pagination-item">
                                        <a href="" class="home-bar-pagination-item-link">2</a>
                                    </li>
                                    <li class="home-bar-pagination-item">
                                        <a href="" class="home-bar-pagination-item-link">3</a>
                                    </li>

                                    <li class="home-bar-pagination-item">
                                        <a href="" class="home-bar-pagination-item-link">
                                            <i class="home-bar-pagination-item-icon fa-solid fa-angle-right"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <select class="home-bar-sort">
                                <option value="">Mặc định</option>
                                <option value="">Tăng dần</option>
                                <option value="">Giảm dần</option>
                                <option value="">Mới nhất</option>
                                <option value="">Cũ nhất</option>
                            </select>
                        </div>
                        <div class="home-product">
                            <div class="grid__row">
                                <!-- Product-items -->
                                <c:forEach items="${listP}" var="o">
                                    <div class="grid__column-2-4">     
                                        <a class="home-product-item" href="detail?pid=${o.id}">
                                            <div class="home-product-item-img"
                                                style="background-image: url(${o.image});">
                                            </div>
                                            <h4 class="home-product-item-name">${o.name}</h4>
                                            <div class="home-product-item-price">
                                                <div class="home-product-item-pricenew">${o.price}đ</div>
                                                <div class="home-product-item-priceold">${o.price}đ</div>
                                            </div>
                                            <div class="home-product-item-sale">
                                                <span class="home-product-item-sale-percent">-10%</span>
                                                <span class="home-product-item-sale-lable">GIẢM</span>
                                            </div>
                                        </a>
                                    </div>
                                </c:forEach>

                            </div>
                        </div>

                        <ul class="pagination home-product-pagination">
                            <li class="pagination-item">
                                <a href="" class="pagination-item-link">
                                    <i class="pagination-item-icon fa-solid fa-angle-left"></i>
                                </a>
                            </li>
                            <li class="pagination-item pagination-item--active">
                                <a href="" class="pagination-item-link">1</a>
                            </li>
                            <li class="pagination-item">
                                <a href="" class="pagination-item-link">2</a>
                            </li>
                            <li class="pagination-item">
                                <a href="" class="pagination-item-link">3</a>

                            <li class="pagination-item">
                                <a href="" class="pagination-item-link">
                                    <i class="pagination-item-icon fa-solid fa-angle-right"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>

            </div>
        </div>
        
        <!--Footer-->
        <jsp:include page="footer.jsp"></jsp:include>
    </div>
</body>

</html>