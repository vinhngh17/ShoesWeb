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
            <jsp:include page="header.jsp"></jsp:include>

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
                                    <form action="buy" method="get" id="form">
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
                                            <c:set var ="balance" value = "${detail.price}" />
                                            <fmt:formatNumber type="number" pattern = "###,###" value = "${balance}" />đ
                                        </div>

                                        <div class="product-inf">
                                            <label>Vận chuyển:</label>
                                            <span class="product-inf-item">Miễn phí vận chuyển toàn quốc</span>
                                        </div>

                                        <div class="product-inf">
                                            <label>Bảo hành:</label>
                                            <span class="product-inf-item">Không có</span>
                                        </div>

                                        <div class="product-form">
                                            <ul class="product-size">
                                                <label>Size:</label>
                                                <li class="product-size-num"><input class="product-size-num-input" type="button" onclick="getInputValue(this)" value="39"/></li>
                                                <li class="product-size-num"><input class="product-size-num-input" type="button" onclick="getInputValue(this)" value="40"/></li>
                                                <li class="product-size-num"><input class="product-size-num-input" type="button" onclick="getInputValue(this)" value="41"/></li>
                                                <li class="product-size-num"><input class="product-size-num-input" type="button" onclick="getInputValue(this)" value="42"/></li>
                                                <li class="product-size-num"><input class="product-size-num-input" type="button" onclick="getInputValue(this)" value="43"/></li>
                                                <li class="product-size-num"><input class="product-size-num-input" type="button" onclick="getInputValue(this)" value="44"/></li>
                                            </ul>

                                            <div class="product-quantity">
                                                <label>Số lượng:</label>
                                                <span class="minus">-</span>
                                                <input type="text" id="num" name="num" value="1"/>
                                                <span class="plus">+</span>
                                            </div>
                   
      
                                            <input type="hidden" name="id" value="${detail.id}"/>
                                            <input type="hidden" name="psize" id="size_num" value=""/>
                                            <div class="product-btn">
                                                <input type="submit" class="product-buy-btn btn" value="THÊM VÀO GIỎ"/>
                                                    
                                                <div class="btn product-add-btn btn">
                                                    MUA NGAY
                                                </div>
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
        
        <!--Footer-->
        <jsp:include page="footer.jsp"></jsp:include>
        
        <script>
            var valueCount = 1;
            document.querySelector(".plus").addEventListener("click",function(){
                valueCount = document.getElementById("num").value;
                valueCount++;
                document.getElementById("num").value = valueCount
            })

            document.querySelector(".minus").addEventListener("click",function(){
                valueCount = document.getElementById("num").value;
                if(valueCount > 1){
                    valueCount--;
                    document.getElementById("num").value = valueCount
                }
            })
            
            let list = document.querySelectorAll('.product-size-num-input');
            list.forEach(item => {
                item.addEventListener('click', function () {
                    list.forEach(li => li.classList.remove('product-size-num-input--active'));
                    this.classList.add('product-size-num-input--active');
                });
            });
            
            function buy(id) {
            document.f.action = "buy?id=" + id;
            document.f.submit();
        }
        
        
        function getInputValue(e) {
        var inputVal = e.value;
        var input = document.getElementById("size_num");
        input.value = inputVal;
        }
        </script>
    </body>

</html>