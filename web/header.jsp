<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<header class="header">
    <div class="grid">
        <!-- Navbar -->
        <div class="nav">
            <ul class="nav-list">
                <li class="nav-item">
                    <a href="home" class="nav-item-link">Trang chủ</a>
                </li>
                <li class="nav-item">
                    <a href="" class="nav-item-link">Giới thiệu</a>
                </li>
                <li class="nav-item">
                    <a href="" class="nav-item-link">Khuyến mãi</a>
                </li>
                <li class="nav-item">
                    <a href="" class="nav-item-link">Liên hệ</a>
                </li>
            </ul>
            <ul class="nav-list">
                <c:if test="${sessionScope.acc == null}">
                    <li class="nav-item nav-item--separate">
                        <a href="signup.jsp" class="nav-item-link">Đăng ký</a>
                    </li>
                    <li class="nav-item">
                        <a href="login.jsp" class="nav-item-link">Đăng nhập</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.acc != null && sessionScope.acc.isAdmin != 1}">
                    <li class="nav-item nav-user">
                        <span class="nav-user-name">${sessionScope.acc.user}</span>
                        <img src="https://sme.hust.edu.vn/wp-content/uploads/2022/02/Avatar-Facebook-trang.jpg"
                             alt="" class="nav-user-img">

                        <ul class="nav-user-menu">
                            <li class="nav-user-item">
                                <a href="">Thông tin cá nhân</a>
                            </li>
                            <li class="nav-user-item">
                                <a href="">Đơn mua</a>
                            </li>
                            <li class="nav-user-item nav-user-item--separate">
                                <a href="logout">Đăng xuất</a>
                            </li>
                        </ul>
                    </li>
                </c:if>
                <c:if test="${sessionScope.acc.isAdmin == 1}">
                    <li class="nav-item nav-user">
                        <span class="nav-user-name">${sessionScope.acc.user}</span>
                        <img src="https://sme.hust.edu.vn/wp-content/uploads/2022/02/Avatar-Facebook-trang.jpg"
                             alt="" class="nav-user-img">

                        <ul class="nav-user-menu">
                            <li class="nav-user-item">
                                <a href="manageruser">Quản lý tài khoản</a>
                            </li>
                            <li class="nav-user-item">
                                <a href="manager">Quản lý sản phẩm</a>
                            </li>   
                            <li class="nav-user-item">
                                <a href="managerorder">Quản lý đơn hàng</a>
                            </li> 
                            <li class="nav-user-item nav-user-item--separate">
                                <a href="logout">Đăng xuất</a>
                            </li>
                        </ul>
                    </li>
                </c:if>
            </ul>
        </div>
        <!-- Search -->
        <div class="search">
            <div class="search-shopname">Phake Shoes</div>

            <form action="search" method="get" class="search-searchbar">
                <input name="txt" value="${txtS}" class="search-searchbar-input" type="text" autocomplete="off"
                       placeholder="Nhập tên sản phẩm cần tìm kiếm..." />
                <button type="submit" class="search-searchbar-btn"><i
                        class="search-searchbar-btn-icon fa-solid fa-magnifying-glass"></i></button>
            </form>
            <c:set var="size" value="${sessionScope.size}"/>
            <div class="search-cart">
                <div class="search-cart-wrap">
                    <i class="search-cart-icon fa-solid fa-cart-shopping"></i>
                    <span class="search-cart-notice">${size}</span>

                    <!-- search-cart-list--nocart -->
                    <div class="search-cart-list">
                        <c:if test="${sessionScope.cart.getSize() == 0 || sessionScope.size == null}">
                            <img class="search-cart-nocart-img" src="https://foodhub.vn/assets/images/no-cart.png"
                                 alt="" />
                            <span class="search-cart-nocart-msg">
                                Chưa có sản phẩm trong giỏ hàng
                            </span>
                        </c:if>
                        <c:if test="${sessionScope.cart.getSize() != 0 && sessionScope.size != null}">
                            <h4 class="search-cart-heading">Sản phẩm đã thêm</h4>
                            <c:set var="o" value="${sessionScope.cart}"/>
                            <ul class="search-cart-list-item">
                                <!-- Cart item -->
                                <c:forEach items="${o.items}" var="i">
                                    <li class="search-cart-item">
                                        <img src="${i.product.image}"
                                             alt="" class="search-cart-img" />
                                        <div class="search-cart-item-info">
                                            <div class="search-cart-item-head">
                                                <h5 class="search-cart-item-name">${i.product.name}</h5>
                                                <div class="search-cart-item-price-wrap">
                                                    <span class="search-cart-item-price">
                                                        <c:set var ="balance" value = "${i.price}" />
                                                        <fmt:formatNumber type="number" pattern = "###,###" value = "${balance}" />đ
                                                    </span>
                                                    <span class="search-cart-item-multiply">x</span>
                                                    <span class="search-cart-item-quantity">${i.quantity}</span>
                                                </div>
                                            </div>
                                            <div class="search-cart-item-body">
                                                <span class="search-cart-item-description">
                                                    ${i.product.cname}
                                                </span>
                                                <span class="search-cart-item-remove">Xóa</span>
                                            </div>
                                        </div>
                                    </li>
                                </c:forEach>
                            </ul>
                            <a href="cart.jsp" class="search-cart-btn btn">Xem Giỏ Hàng</a>
                        </c:if>        
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
