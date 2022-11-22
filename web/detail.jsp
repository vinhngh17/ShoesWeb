<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
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
        <!-- Header -->
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
                        <!-- <li class="nav-item nav-item--separate">
                            <a href="" class="nav-item-link">Đăng ký</a>
                        </li>
                        <li class="nav-item">
                            <a href="" class="nav-item-link">Đăng nhập</a>
                        </li> -->
                        <li class="nav-item nav-user">
                            <span class="nav-user-name">vinhprovip123</span>
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
                                    <a href="">Đăng xuất</a>
                                </li>

                            </ul>
                        </li>
                    </ul>
                </div>
                <!-- Search -->
                <div class="search">
                    <div class="search-shopname">Phake Shoes</div>

                    <div class="search-searchbar">
                        <input class="search-searchbar-input" type="text"
                            placeholder="Nhập tên sản phẩm cần tìm kiếm..." />
                        <button class="search-searchbar-btn"><i
                                class="search-searchbar-btn-icon fa-solid fa-magnifying-glass"></i></button>
                    </div>

                    <div class="search-cart">
                        <div class="search-cart-wrap">
                            <i class="search-cart-icon fa-solid fa-cart-shopping"></i>
                            <span class="search-cart-notice">3</span>

                            <!-- search-cart-list--nocart -->
                            <div class="search-cart-list">
                                <img class="search-cart-nocart-img" src="https://foodhub.vn/assets/images/no-cart.png"
                                    alt="" />
                                <span class="search-cart-nocart-msg">
                                    Chưa có sản phẩm trong giỏ hàng
                                </span>

                                <h4 class="search-cart-heading">Sản phẩm đã thêm</h4>
                                <ul class="search-cart-list-item">
                                    <!-- Cart item -->
                                    <li class="search-cart-item">
                                        <img src="https://drake.vn/image/catalog/H%C3%ACnh%20content/hinh-anh-giay-vans/hinh-anh-giay-vans-17.jpg"
                                            alt="" class="search-cart-img" />
                                        <div class="search-cart-item-info">
                                            <div class="search-cart-item-head">
                                                <h5 class="search-cart-item-name">VANS OLD SKOOL CLASSIC</h5>
                                                <div class="search-cart-item-price-wrap">
                                                    <span class="search-cart-item-price">2.000.000đ</span>
                                                    <span class="search-cart-item-multiply">x</span>
                                                    <span class="search-cart-item-quantity">2</span>
                                                </div>
                                            </div>
                                            <div class="search-cart-item-body">
                                                <span class="search-cart-item-description">
                                                    Phân loại: giày Vans
                                                </span>
                                                <span class="search-cart-item-remove">Xóa</span>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="search-cart-item">
                                        <img src="https://drake.vn/image/catalog/H%C3%ACnh%20content/hinh-anh-giay-vans/hinh-anh-giay-vans-17.jpg"
                                            alt="" class="search-cart-img" />
                                        <div class="search-cart-item-info">
                                            <div class="search-cart-item-head">
                                                <h5 class="search-cart-item-name">VANS OLD SKOOL CLASSIC</h5>
                                                <div class="search-cart-item-price-wrap">
                                                    <span class="search-cart-item-price">2.000.000đ</span>
                                                    <span class="search-cart-item-multiply">x</span>
                                                    <span class="search-cart-item-quantity">2</span>
                                                </div>
                                            </div>
                                            <div class="search-cart-item-body">
                                                <span class="search-cart-item-description">
                                                    Phân loại: giày Vans
                                                </span>
                                                <span class="search-cart-item-remove">Xóa</span>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="search-cart-item">
                                        <img src="https://drake.vn/image/catalog/H%C3%ACnh%20content/hinh-anh-giay-vans/hinh-anh-giay-vans-17.jpg"
                                            alt="" class="search-cart-img" />
                                        <div class="search-cart-item-info">
                                            <div class="search-cart-item-head">
                                                <h5 class="search-cart-item-name">VANS OLD SKOOL CLASSIC</h5>
                                                <div class="search-cart-item-price-wrap">
                                                    <span class="search-cart-item-price">2.000.000đ</span>
                                                    <span class="search-cart-item-multiply">x</span>
                                                    <span class="search-cart-item-quantity">2</span>
                                                </div>
                                            </div>
                                            <div class="search-cart-item-body">
                                                <span class="search-cart-item-description">
                                                    Phân loại: giày Vans
                                                </span>
                                                <span class="search-cart-item-remove">Xóa</span>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="search-cart-item">
                                        <img src="https://drake.vn/image/catalog/H%C3%ACnh%20content/hinh-anh-giay-vans/hinh-anh-giay-vans-17.jpg"
                                            alt="" class="search-cart-img" />
                                        <div class="search-cart-item-info">
                                            <div class="search-cart-item-head">
                                                <h5 class="search-cart-item-name">VANS OLD SKOOL CLASSIC</h5>
                                                <div class="search-cart-item-price-wrap">
                                                    <span class="search-cart-item-price">2.000.000đ</span>
                                                    <span class="search-cart-item-multiply">x</span>
                                                    <span class="search-cart-item-quantity">2</span>
                                                </div>
                                            </div>
                                            <div class="search-cart-item-body">
                                                <span class="search-cart-item-description">
                                                    Phân loại: giày Vans
                                                </span>
                                                <span class="search-cart-item-remove">Xóa</span>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="search-cart-item">
                                        <img src="https://drake.vn/image/catalog/H%C3%ACnh%20content/hinh-anh-giay-vans/hinh-anh-giay-vans-17.jpg"
                                            alt="" class="search-cart-img" />
                                        <div class="search-cart-item-info">
                                            <div class="search-cart-item-head">
                                                <h5 class="search-cart-item-name">VANS OLD SKOOL CLASSIC</h5>
                                                <div class="search-cart-item-price-wrap">
                                                    <span class="search-cart-item-price">2.000.000đ</span>
                                                    <span class="search-cart-item-multiply">x</span>
                                                    <span class="search-cart-item-quantity">2</span>
                                                </div>
                                            </div>
                                            <div class="search-cart-item-body">
                                                <span class="search-cart-item-description">
                                                    Phân loại: giày Vans
                                                </span>
                                                <span class="search-cart-item-remove">Xóa</span>
                                            </div>
                                        </div>
                                    </li>
                                </ul>

                                <a href="" class="search-cart-btn btn">Xem Giỏ Hàng</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>

        <!-- Container -->
        <div class="container">
            <div class="grid" style="width: 1100px;">
                
                <div class="product-container">
                    <div class="product-bar">
                        <div class="product-url">Trang chủ > ${detail.cname} > ${detail.name}</div>
                    </div>

                    <div class="grid__row">
                        <!-- <div class="grid__column-1"></div> -->
                        <div class="grid__column-5-img">
                            
                            <div class="product-content1">
                                <div class="product-img">
                                    <img class="product-img-src"
                                        src="${detail.image}" />
                                </div>

                                <div class="product-content1-ending">
                                    <label>Chia sẻ:</label>
                                    <i class="product-content1-ending-item fa-brands fa-facebook"></i>
                                    <i class="product-content1-ending-item fa-brands fa-facebook-messenger"></i>
                                    <i class="product-content1-ending-item fa-brands fa-twitter"></i>
                                    <i class="product-content1-ending-item fa-brands fa-pinterest"></i>
                                </div>
                            </div>
                        </div>

                        <div class="grid__column-6">
                            <div class="product-content2">
                                <h2 class="product-name">
                                    ${detail.name}
                                </h2>
                                <div class="product-inf">
                                    <label>Loại:</label>
                                    <span class="product-inf-item">Giày ${detail.cname}</span>
                                </div>

                                <div class="product-inf">
                                    <label>Hãng:</label>
                                    <span class="product-inf-item">${detail.cname}</span>
                                </div>

                                <div class="product-inf">
                                    <label>Xuất xứ:</label>
                                    <span class="product-inf-item">Không rõ</span>
                                </div>

                                <div class="product-inf">
                                    <label>Tình trạng:</label>
                                    <span class="product-inf-item">Còn hàng</span>
                                </div>

                                <div class="product-inf">
                                    <label>SKU:</label>
                                    <span class="product-inf-item">AO9819-200_40.5</span>
                                </div>
                                <div class="product-price">
                                    <c:set var = "balance" value = "${detail.price}" />
                                    <fmt:formatNumber  type = "number" pattern = "###,###" value = "${balance}" />đ
                                </div>

                                <div class="product-inf">
                                    <label>Vận chuyển:</label>
                                    <span class="product-inf-item">Miễn phí vận chuyển toàn quốc</span>
                                </div>

                                <div class="product-inf">
                                    <label>Bảo hành:</label>
                                    <span class="product-inf-item">Không có</span>
                                </div>

                                <form class="product-form" action="" method="">
                                    <ul class="product-size">
                                        <label>Size:</label>
                                        <li class="product-size-num product-size-num--active">39</li>
                                        <li class="product-size-num">40</li>
                                        <li class="product-size-num">41</li>
                                        <li class="product-size-num">42</li>
                                        <li class="product-size-num">43</li>
                                        <li class="product-size-num">44</li>
                                    </ul>

                                    <div class="product-quantity">
                                        <label>Số lượng:</label>
                                        <span class="minus">-</span>
                                        <span class="num">1</span>
                                        <span class="plus">+</span>
                                    </div>
                                    <div class="product-btn">
                                        <div class="product-buy-btn btn">
                                            Mua ngay
                                        </div>
                                        <div class="btn product-add-btn btn">
                                            Thêm vào giỏ
                                        </div>
                                    </div>
                                </form>
                            </div>

                            <div class="grid__column-1"></div>
                        </div>
 
                    </div>
                    
                    <div class="product-detail">
                        <label class="product-detail-heading">Chi tiết sản phẩm:</label>
                        <ul>
                            <li>
                                Chất liệu 59.7% Da; 40.3% Vải, tạo cảm giác thoải mái cho trải nghiệm của người dùng
                            </li>
                            <li>Phối màu Black/White ấn tượng đem lại sự cuốn hút đặc biệt</li>
                            <li>Họa tiết đậm dấu ấn thương hiệu được cách điệu bên ngoài đế giày</li>
                            <li>Thiết kế Era với form dáng vừa vặn, thoải mái</li>
                            <li>Đệm lót cổ giày êm ái, mềm mại</li>
                            <li>Tem logo được thiết kế trùng với phối màu của bộ sưu tập</li>
                            <li>Đệm lót trong êm ái với độ đàn hồi và chịu lực tốt</li>
                            <li>Mặt đế vân Waffle đặc trưng tạo độ bám, tăng ma sát và giảm trơn hiệu quả</li>
                            <li>Đường may tỉ mỉ đến từng chi tiết nhỏ</li>
                            <li>Các khoen giày kim loại được phủ một lớp bóng cùng màu </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        const plus = document.querySelector(".plus");
        const minus = document.querySelector(".minus");
        const num = document.querySelector(".num");

        let a = 1;
        plus.addEventListener("click", ()=> {
            a++;
            num.innerText = a;
        })

        minus.addEventListener("click", ()=> {
            if(a > 1){
                a--;
                num.innerText = a;
            }
        })
    </script>
</body>

</html>