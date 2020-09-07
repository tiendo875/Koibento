<%-- 
    Document   : Contact
    Created on : Jul 3, 2020, 11:28:25 PM
    Author     : XPS 13
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <title>Koi Bento</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://kit.fontawesome.com/31a284aacb.js"></script>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <!-- start header -->

        <header class="header">
            <!-- start toplink -->
            <div class="top-link header-link hidden-sm hidden-xs">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 col-xs-12">
                            <div class="header-static">
                                <ul>

                                    <li>
                                        <a href="mailto:davidanh2811@gmail.com" title="davidanh2811@gmail.com"><i class="fa fa-envelope" aria-hidden="true"></i> davidanh2811@gmail.com</a>
                                    </li>


                                    <li>
                                        <a href="/lien-he" title="Miễn phí ship cho đơn hàng trên 1tr VNĐ">Miễn phí ship cho đơn hàng trên 500000 VNĐ</a>
                                    </li>

                                </ul>
                            </div>
                        </div>
                        <div class="col-md-6 col-xs-12 right">
                            <div class="top-link-dropdown">
                                <ul class="header-social">

                                    <li>
                                        <a href="#" title="Facebook" target="_blank">
                                            <i class="fab fa-facebook-f"></i>
                                        </a>
                                    </li>


                                    <li>
                                        <a href="#" title="Twitter" target="_blank">
                                            <i class="fab fa-twitter"></i>
                                        </a>
                                    </li>

                                    <li>
                                        <a href="#" title="Instagram" target="_blank">
                                            <i class="fab fa-google-plus-g"></i>
                                        </a>
                                    </li>								
                                    <li>
                                        <a href="#" title="Instagram" target="_blank">
                                            <i class="fab fa-instagram"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end topplink -->
        </header>
        <!-- end header -->
        <!-- <!-- navigation logo header -->
        <div class="main-header" id="site-header">
            <div class="container main-header-container">
                <div class="row">
                    <div class="col-sm-1 col-xs-12">
                        <div class="logo">
                            <a href="#"><img src="images/logo.png" alt="logo koibento"></a>
                        </div>
                    </div>
                    <div class="col-sm-11 col-xs-12">
                        <nav class="navbar navbar-expand-lg navbar-main-nav">
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#my-narbar">
                                <span class="toggler-icon"></span>
                                <span class="toggler-icon"></span>
                                <span class="toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="my-narbar">
                                <ul class="navbar-nav menu">
                                    <li class="nav-item">
                                        <a class="nav-link" href="HomeServlet?username=<%=session.getAttribute("username")%>">Trang chủ</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="GioithieuServlet?username=<%=session.getAttribute("username")%>">giới thiệu</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="MenuServlet?username=<%=session.getAttribute("username")%>">Menu</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="NewsServlet?username=<%=session.getAttribute("username")%>">News</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="LienheServlet?username=<%=session.getAttribute("username")%>">Liên Hệ</a>
                                    </li>	
                                    <li class="nav-item">
                                        <a class="nav-link link-phone" href="#"><i class="fa fa-phone"></i> (+84) 0329139333</a>
                                    </li>
                                    <%if(session.getAttribute("username") != null){%>
                                    <li>
                                        <u>
                                         <a class ="nav-link" href="http://localhost:8080/KoiBento/Login.jsp"><%=session.getAttribute("username")%></a>
                                        </u>
                                    </li>
                                    <%}else{%>
                                    <li>
                                        <a class ="nav-link" href="http://localhost:8080/KoiBento/Login.jsp">Login</a>
                                    </li>
                                    <%}%>
                                    
                                    <%if(session.getAttribute("username") != null){%>
                                    <li>
                                        <a class="nav-link" href="LogoutServlet">Logout</a>
                                    </li>
                                    <%}%>
                                </ul>
                            </div>
                        </nav>
                    </div>
                    <div class="cart-koi-top cart-koi-img-top show-xs">
                        <a href="#">
                            <span class="cart-price">
                                <span class="cart-amount price-amout"></span>
                            </span>
                            <img src="images/cart.png">
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <!-- <!-- end nav logo header -->
        <!-- start menu dropdown search -->
        <div class="fix-menu">
            <div class="header-dropdown">
                <div class="container dropdown-container-header">
                    <div class="row">
                        <div class="col-md-2 col-xs-12 hidden-xs">
                            <div class="dropdown">
                                <button type="button" class="dropdown-toggle btn-libary" data-toggle="dropdown"><i class="fas fa-list"> </i></button>
                                <ul class="dropdown-menu dropdown-libary">
                                    <li class="dropdown-item">
                                        <a href="#"> Ca hoi nuong sot bo toi</a>
                                    </li>
                                    <li class="dropdown-item">
                                        <a href="#">Com bo nuong</a>
                                    </li>
                                    <li class="dropdown-item">
                                        <a href="#">Com cuon tom chien</a>
                                    </li>
                                    <li class="dropdown-item">
                                        <a href="#">Com thit lon sot gung</a>
                                    </li>
                                    <li class="dropdown-item">
                                        <a href="#">Com ga sot nam</a>
                                    </li>
                                    <li class="dropdown-item">
                                        <a href="#">Com ca kho sot nhat</a>
                                    </li>
                                    <li class="dropdown-item">
                                        <a href="#">Ca basa nuong muoi</a>
                                    </li>
                                    <li class="dropdown-item">
                                        <a href="#">Com cuon qua bo</a>
                                    </li>		
                                    <li class="dropdown-item">
                                        <a href="#">Com cuon rau cu</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-7 col-xs-12">
                            <form action="${pageContext.request.contextPath}/SearchController" method="POST" id="Search-dropdown">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Bạn muốn mua gì?" name="seach-dropdow" id="search-dropdown-input">
                                    <button type="submit" value="Search" name="search" class="btn-search">
                                        <i class="fa fa-search"></i>
                                    </button>
                                    <input type="submit" value="sortDow" name="sortDow" >
                                </div>
                            </form>
                        </div>
                        <div class="col-md-3 col-xs-12 hidden-xs">
                            <span class="cart-koi cart-koi-img">
                                <a href="CartServlet">
                                    <span class="hd-cart-title">GIỎ HÀNG  
                                        <span class="cart-price">
                                            <span class="cart-amount price-amout"></span>
                                        </span>
                                    </span><img src="images/cart.png">
                                </a>
                            </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end menu dropdown search -->
        <!-- start bg-menu -->
        <div class="bgmenu_box" style="max-height:406px;
                                        height:306px;
                                        background-image: url('images/menu-bg.png');
                                        background-size:cover;
                                        background-position:center;
                                        position:relative;">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12 bgmenu_box">
                        <div class="ovrly-bg"></div>
                        <div class="caption-bg">
                            <h2 class="menu-text" style="color: white">Menu</h2>
                            <a href="http://localhost:8080/KoiBento/Home.jsp">Trang chủ /</a>  <span style="color: white">Liên hệ với chúng tôi </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end bg-menu -->
        <div class="vekoi-blog">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-xs-12">
                        <div class="text-content">
                            <h2>Góp ý của quý khánh là nền tảng cho chúng tôi cải thiện và nâng cao chất lượng dịch vụ. chúng tôi luôn luôn tôn trọng mọi ý kiến của khánh hàng với tiêu chí khách hàng là thượng đế, Mọi ý kiến đóng góp vui lòng liên hệ với chúng tôi.</h2>
                            <p>Xin chân thành cảm ơn</p>
                            <p>liên hệ với Koi-Bento</p>
                            <p>HOTLINE: 0329139333, 0329139999</p>
                            <p>Hoặc qua email :</p>
                            <p><i class="block_icon fas fa-envelope" aria-hidden="true"></i>davidanh2811@gmail.com</p>
                            <p><i class="block_icon fas fa-envelope" aria-hidden="true"></i>MinhTien1999@gmail.com</p>
                            <p>Địa chỉ koi-Bento ở đâu</p>
                            <p>- chi nhánh hà nội - </p>
                            <p>Trung tâm Thương Mại Dịch vụ: <span> Khu đô thị Vinaconex 3, Mễ Trì, Nam Từ Liêm, Hà Nội</span></p>
                            <p>Mở của lúc 8h30 sáng - đóng cửa 5h30 chiều</p>
                            <p>- chi nhánh Hồ Chí Minh -</p>
                            <p>coming soon....</p>
                        </div>
                    </div>	
                    <div class="col-md-6 col-xs-12">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.9423507788388!2d105.77894541493205!3d20.994947886016703!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313453c082632f71%3A0x2786aae6d03f649b!2zS09JIEJlbnRvIOG6qG0gdGjhu7FjIE5o4bqtdCBC4bqjbg!5e0!3m2!1svi!2s!4v1568435751797!5m2!1svi!2s" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
                    </div>
                </div>
            </div>
        </div>
        <!-- start footer -->
        <footer id="footer">
            <div class="container container-footer">
                <div class="row row-footer">
                    <div class="col-md-4 col-Contact">
                        <p class="koi-footer">Koi-Bento</p>
                        <div class="hr-footer"></div>
                        <p class="content-footer-p">Cung cấp các sản phẩm cơm hộp Bento, Sushi Nhật Bản<br> được chế biến bởi các đầu bếp hàng đầu của KOI-Bento.</p>
                        <a href="#" class="fb">Facebook</a>
                        <a href="#" class="instagram">instagram</a>
                        <a class="vietnammm"href="https://www.vietnammm.com/koi-bento">Vietnammm</a>
                    </div>
                    <div class="col-md-4 koi-phone">
                        <p class="koiphone-item1">Giới Thiệu</p>
                        <a class="koiphone-item2" href="#"><i class="block_icon fas fa-map-marker-alt"></i> Add: Trung tâm Thương Mại Dịch vụ, Cổng 1B, khu VL1, Nam Từ Liêm</a>
                        <p class="koiphone-item3"><i class="block_icon fas fa-phone"></i> Phone:0329139333|0329139999</p>
                        <a class="koiphone-item4"href="mailto:davidanh2811@gmail.com"><i class="block_icon fas fa-envelope"></i>
                            davidanh2811@gmail.com</a>
                    </div>
                    <div class="col-md-4">
                        <div class="fb-page" data-href="https://www.facebook.com/koibentovietnam/?__tn__=%2Cd%2CP-R&amp;eid=ARB6Sttkhg3_W6YjGUyhLSQKC4pHX1hhkgf-ppkNb6nXnrtxJCI0DVV8hwl28Fxxd61nwAcO-CRXATPT" data-tabs="b&#xe1;n h&#xe0;ng" data-width="320" data-height="300" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/koibentovietnam/?__tn__=%2Cd%2CP-R&amp;eid=ARB6Sttkhg3_W6YjGUyhLSQKC4pHX1hhkgf-ppkNb6nXnrtxJCI0DVV8hwl28Fxxd61nwAcO-CRXATPT" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/koibentovietnam/?__tn__=%2Cd%2CP-R&amp;eid=ARB6Sttkhg3_W6YjGUyhLSQKC4pHX1hhkgf-ppkNb6nXnrtxJCI0DVV8hwl28Fxxd61nwAcO-CRXATPT">KOI BENTO - Ẩm thực Nhật Bản</a></blockquote></div>
                    </div>
                </div>
            </div>
        </footer>
        <div class="footer-end">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <p>© Copyright KOI Bento 2020. All Right Reserved. Designed and Developed by TT Team </p>
                    </div>
                </div>
            </div>
        </div>
        <!-- end footer -->
        <!-- jquery silider -->

        <!-- sticky fixed nav script -->
        <script>
            $(function () {
                var navbar = $('.fix-menu');
                $(window).scroll(function () {
                    if ($(window).scrollTop() >= 20) {
                        navbar.addClass('fixtop-menu');
                    } else {
                        navbar.removeClass('fixtop-menu');
                    }
                });
            });
        </script>
        <!-- sticky fixed nav script end -->
        <!-- facebook script -->
        <div id="fb-root"></div>
        <script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v4.0"></script>
        <!-- facebook script -->
        <!-- poppy jquery -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>
