<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>  
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.9.3/css/bulma.min.css"/>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.1/css/dataTables.bulma.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
        integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
        crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="css/base.css"/>
    <link rel="stylesheet" href="css/main.css"/>
</head>
<body>
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
                    <div class="search-titlecart search-titlecart--separate">Quản lý hóa đơn</div>
                    <div class="search-searchbar" style="margin-left: 184px;">
                        <input class="search-searchbar-input" type="text" placeholder="Nhập tên sản phẩm cần tìm kiếm..." />
                        <button class="search-searchbar-btn"><i
                                class="search-searchbar-btn-icon fa-solid fa-magnifying-glass"></i></button>
                    </div>


                </div>
            </div>
        </header>
                            
    <div class="container" style="width: 1200px; margin-top: 10px;">
    <table id="example" class="table is-striped" style="width:100%">
        <thead>
            <tr>
                <th>Order ID</th>
                <th>Product ID</th>
                <th>Số lượng</th>
                <th>Kích cỡ</th>
                <th>Giá</th>
                <th>Xóa</th>
            </tr>
        </thead>
        <tbody>           
            <c:forEach items="${listOD}" var="i">
                <tr>
                    <td>${i.oid}</td>
                    <td>${i.pid}</td>
                    <td>${i.quantity}</td>
                    <td>${i.size}</td>
                    <td><c:set var ="balance" value = "${i.price}" />
                                <fmt:formatNumber type="number" pattern = "###,###" value = "${balance}" />đ</td>
                    <td><a>Xóa</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.13.1/js/dataTables.bulma.min.js"></script>
<script>
    $(document).ready(function () {
     $('#example').DataTable();
     });
</script>
</html>

