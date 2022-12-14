
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <link rel="stylesheet" type="text/css" href="css/login.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
              integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
              crossorigin="anonymous" referrerpolicy="no-referrer"/>
    </head>

    <body>
        <div class="container-login">
            <div class="login">
                <h1>Đăng Ký Tài Khoản</h1>
                <hr>
                <p class="text-danger">${messpass}</p>
                <p class="text-danger">${messuser}</p>
                <form action="signup" method="post">
                    <label for="email"><b>Tên đăng nhập</b></label>
                    <input type="text" placeholder="Username" name="user" required autocomplete="off"/>
                    <label for="psw"><b>Mật Khẩu</b></label>
                    <input type="password" placeholder="Password" name="pass" required autocomplete="off"/>
                    <label for="psw"><b>Nhập lại mật khẩu</b></label>
                    <input type="password" placeholder="Repeat password" name="repass" required autocomplete="off"/>
                    <label for="psw"><b>Họ và tên</b></label>
                    <input type="text" placeholder="Full name" name="name" required/>
                    <label for="psw"><b>Số điện thoại</b></label>
                    <input type="text" placeholder="Phone number" name="phone" required/>
                    <div class="clearfix">
                        <button type="submit" id="submit" class="signupbtn">Sign up</button>
                    </div>
                    <div class="signup">
                        <a href="login.jsp">Quay lại</a>
                    </div>
                </form>
            </div>

        </div>
        ${alert}
    </body>

</html>
