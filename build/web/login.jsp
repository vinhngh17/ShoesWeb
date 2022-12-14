
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <link rel="stylesheet" type="text/css" href="css/login.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
        integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>

<body>
  <div class="container-login">
    <div class="login">
      <h1>Đăng Nhập</h1>
      <hr>
      <p class="text-danger">${mess}</p>
      <form action="login" method="post">
        <label for="email"><b>Tên đăng nhập</b></label>
        <input type="text" placeholder="Username" name="user" required autocomplete="off"/>
        <label for="psw"><b>Mật Khẩu</b></label>
        <input type="password" placeholder="Password" name="pass" required autocomplete="off"/>

        <label>
          <input type="checkbox" class="check" name="remember"/> Nhớ đăng nhập
        </label>

        <div class="clearfix">
          <button type="submit" class="signupbtn">Đăng nhập</button>
        </div>
      </form>
      <div class="signup">
        <div>Chưa có tài khoản?</div><a href="signup.jsp"> Đăng ký</a>
      </div>
    </div>
  </div>

</body>

</html>