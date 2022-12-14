<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css"
              integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="css/main.css" />
        <link rel="stylesheet" href="css/base.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
              integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <title>Document</title>
    </head>

    <body>
        <c:set var="size" value="${sessionScope.size}"/>
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
                                        <a href="">Quản lý tài khoản</a>
                                    </li>
                                    <li class="nav-user-item">
                                        <a href="manager">Quản lý sản phẩm</a>
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
                    <div class="search-titlecart search-titlecart--separate">Giỏ hàng</div>
                    <div class="search-searchbar" style="margin-left: 184px;">
                        <input class="search-searchbar-input" type="text" placeholder="Nhập tên sản phẩm cần tìm kiếm..." />
                        <button class="search-searchbar-btn"><i
                                class="search-searchbar-btn-icon fa-solid fa-magnifying-glass"></i></button>
                    </div>


                </div>
            </div>
        </header>
        <div class="cart-container">
            <div class="grid">
                <img src="https://as2.ftcdn.net/v2/jpg/03/83/82/35/1000_F_383823517_aqubmITTeyazMtApMLV7grhTObkzKphk.jpg" style="width: inherit; height: 250px;"/>
                <div class="cart-nav">
                    <a class="cart-nav-link" href="home">Trang chủ</a>
                    <i class="cart-nav-icon fa-solid fa-angles-right"></i>
                    <div class="cart-name"> Giỏ hàng</div>
                </div>
                <div class="cart-heading">
                    <div class="cart-heading-item-sp">Sản phẩm</div>
                    <div class="cart-heading-item-dg">Đơn giá</div>
                    <div class="cart-heading-item-sl">Số lượng</div>
                    <div class="cart-heading-item-st">Số tiền</div>
                    <div class="cart-heading-item-tt">Thao tác</div>
                </div>

                <div class="cart-content">
                    <c:set var="o" value="${sessionScope.cart}"/>
                    <c:forEach items="${o.items}" var="i">
                        <div class="cart-item">
                            <div class="cart-item-inf">
                                <img src="${i.product.image}" alt="" class="cart-item-img"/>
                                <div class="cart-item-name">${i.product.name}</div>

                            </div>
                                <div class="cart-item-size">Kích cỡ: ${i.size}</div>
                                <div class="cart-item-priceonly">
                                    <c:set var ="balance" value = "${i.price}" />
                                    <fmt:formatNumber type="number" pattern = "###,###" value = "${balance}" />đ
                                </div>
                            <div class="cart-item-quantity">
                                <a href="process?num=-1&id=${i.product.id}&size=${i.size}">-</a>
                                <input type="text" readonly value="${i.quantity}"/>
                                <a href="process?num=1&id=${i.product.id}&size=${i.size}">+</a>
                            </div>
                            <div class="cart-item-money">
                                <c:set var ="balance" value = "${i.price * i.quantity}" />
                                <fmt:formatNumber type="number" pattern = "###,###" value = "${balance}" />đ
                            </div>
                            <div class="cart-item-remove">
                                <form action="process" method="post">
                                    <input type="hidden" name="id" value="${i.product.id}"/>
                                    <input type="hidden" name="size" value="${i.size}"/>
                                    <input class="cart-item-remove-btn" type="submit" value="Xóa"/>
                                </form>
                            </div>

                        </div>
                    </c:forEach>
                    <div class="cart-payment">
                        <div class="cart-money">
                            <span>Tổng tiền:</span>
                            <div><c:set var ="balance" value = "${o.getTotalMoney()}" />
                                <fmt:formatNumber type="number" pattern = "###,###" value = "${balance}" />đ</div>
                        </div>
                    </div>
                </div>
                 
                <form action="checkout" method="post">        
                    <div class="cart-btn">
                        <a href="home" class="cart-payment-btn cart-payment-btn--con">TIẾP TỤC MUA HÀNG</a>
                        <c:if test="${sessionScope.acc != null}">      
                            <button class="cart-payment-btn cart-payment-btn--buy" onclick="popupToggle();">TIẾN HÀNH ĐẶT HÀNG</button>
                            <div class="modal" id="modal">
                                <div class="modal-overlay"></div>
                                <div class="modal-body">
                                    <div class="modal-inner">
                                        <div class="auth-form">
                                            <h1>Xác nhận đặt hàng</h1>
                                            <hr>
                                            <div class="order-form">
                                                <label for="email">Họ và tên</label>
                                                <input type="text" class="order-input-text" required autocomplete="off"/>
                                                <label for="email">Số điện thoại</label>
                                                <input type="text" class="order-input-text" required autocomplete="off"/>
                                                <label for="psw">Email</label>
                                                <input type="text" class="order-input-text" required/>
                                                <label for="psw">Địa chỉ nhận hàng</label>
                                                <input type="text" class="order-input-text" required/>
                                                <label for="psw">Phương thức thanh toán</label><br/>
                                                <div class="order-radio">
                                                    <input type="radio" name="checkout-btn" class="order-radio-input"/>Thanh toán khi nhận hàng
                                                    <input type="radio" name="checkout-btn" class="order-radio-input"/>Chuyển khoản<br/>
                                                </div>   
                                                <div class="clearfix">
                                                    <input type="submit" id="submit" class="orderbtn" value="ĐẶT HÀNG"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                        <c:if test="${sessionScope.acc == null}">
                            <a class="cart-payment-btn cart-payment-btn--buy" href="login.jsp">TIẾN HÀNH ĐẶT HÀNG</a>
                        </c:if>
                    </div>
                </form>
                <div class="cart-ending">
                    <i class="cart-ending-icon fa-sharp fa-solid fa-truck"></i>
                    <label>VẬN CHUYỂN: </label>
                    <div> Hỗ trợ ship COD toàn quốc</div>
                </div>
            </div>
        </div>
        <!--     Footer-->
        <%@include file="footer.jsp"%>
        <script>
            function popupToggle() {
                const popup = document.getElementById('modal');
                popup.classList.toggle('active');
            }
        </script>
    </body>

</html>
