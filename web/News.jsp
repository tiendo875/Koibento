<%-- 
    Document   : News
    Created on : Jul 3, 2020, 11:36:10 PM
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
                                        <a class="nav-link link-phone" href="#"><i class="fa fa-phone"></i> (+84) 0378774588</a>
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
                            <a href="http://localhost:8080/KoiBento/Home.jsp">Trang chủ /</a>  <span style="color: white">BLOG</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end bg-menu -->
        <!-- start blog koi -->
        <div class="main-blog-koi blog-home" id="main-blog">
            <div class="container">
                <div class="row row-title-blog">
                    <div class="col-md-12 col-xs-12">
                        <h1 class="blog-title h1-title-blog">
                            - TIN TỨC -
                        </h1>
                    </div>
                </div>
                <div class="row row-main-blog">
                    <div class="col-md-7 col-xs-12">
                        <div class="blog-dev-left">
                            <a data-target="_blank" href="https://duhochoasen.com/jp/doi-net-ve-van-hoa-a%CC%89m-thu%CC%A3c-nha%CC%A3t-ba%CC%89n-com-bento.html" class="blog-item-img-blog">
                                <img src="images/about-top.jpg" alt="doi net am thuc nhat">
                            </a>
                            <div class="blog-item-title">
                                <p class="date-blog-title">12/09/2019</p>
                                <a data-target="_blank" href="https://duhochoasen.com/jp/doi-net-ve-van-hoa-a%CC%89m-thu%CC%A3c-nha%CC%A3t-ba%CC%89n-com-bento.html" class="Information-blog">Đôi nét về văn hóa ẩm thực nhật bản - cơm bento</a>
                                <p class="content-blog">Bento ngày này hầu hết không còn xa lạ gì với mọi người. Sự đổ bộ của các ...&</p>
                                <a href="https://duhochoasen.com/jp/doi-net-ve-van-hoa-a%CC%89m-thu%CC%A3c-nha%CC%A3t-ba%CC%89n-com-bento.html" class="more-blog-a">Xem thêm</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-5 col-xs-12">
                        <div class="blog-dev-right">
                            <a data-target="_blank" href="http://morningjapan.com/kien-thuc-can-thiet/van-hoa-nhat-ban/9-dieu-ban-chua-biet-ve-com-hop-bento/" class="blog-item-img-blog">
                                <img src="images/db1.jpg" alt="doi net am thuc nhat">
                            </a>
                            <div class="blog-item-title">
                                <p class="date-blog-title">12/09/2019</p>
                                <a data-target="_blank" href="https://duhochoasen.com/jp/doi-net-ve-van-hoa-a%CC%89m-thu%CC%A3c-nha%CC%A3t-ba%CC%89n-com-bento.html" class="Information-blog">9 điều bạn chưa biết về cơm hộp Bento</a>
                                <p class="content-blog">Cơm hộp Bento cũng như văn hóa ẩm thực Nhật Bản, luôn cầu kỳ, tỉ mỉ nhưng lại ngon và hấp dẫn ngay từ cái nhìn đầu tiên...&</p>
                                <a href="https://duhochoasen.com/jp/doi-net-ve-van-hoa-a%CC%89m-thu%CC%A3c-nha%CC%A3t-ba%CC%89n-com-bento.html" class="more-blog-a">Xem thêm</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row row-footer-blog">
                    <div class="col-md-4 col-xs-12">
                        <div class="blog-dev-right">
                            <a data-target="_blank" href="https://www.bbc.com/vietnamese/vietnam-48205835" class="blog-item-img-blog">
                                <img src="images/bbc.jpg" alt="bbc thong tin bento">
                            </a>
                            <div class="blog-item-title">
                                <p class="date-blog-title">12/09/2019</p>
                                <a data-target="_blank" href="https://www.bbc.com/vietnamese/vietnam-48205835" class="Information-blog">Cơm hộp bento Truyền thống Nhật có sức lan tỏa lớn BBC</a>
                                <p class="content-blog">Những hộp cơm bento đựng nhiều món ăn được bài trí hấp dẫn là một nét đặc trưng trong văn hoá ẩm thực Nhật Bản được nhiều người trên thế giới biết đến....&</p>
                                <a href="https://www.bbc.com/vietnamese/vietnam-48205835" class="more-blog-a">Xem thêm</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-xs-12">
                        <div class="blog-dev-right">
                            <a data-target="_blank" href="http://morningjapan.com/kien-thuc-can-thiet/van-hoa-nhat-ban/9-dieu-ban-chua-biet-ve-com-hop-bento/" class="blog-item-img-blog">
                                <img src="images/vietravel.jpg" alt="8 điểm thú vị về cơm hộp Bento Nhật Bản">
                            </a>
                            <div class="blog-item-title">
                                <p class="date-blog-title">12/09/2019</p>
                                <a data-target="_blank" href="http://morningjapan.com/kien-thuc-can-thiet/van-hoa-nhat-ban/9-dieu-ban-chua-biet-ve-com-hop-bento/" class="Information-blog">8 điểm thú vị về cơm hộp Bento Nhật Bản</a>
                                <p class="content-blog">Người Nhật rất cầu kì trong việc ăn uống, món ăn vừa phải ngon và sạch, đồng thời phải có tính thẩm mĩ và nghệ thuật tinh tế về phần nhìn. Hãy cùng khám phá 8 điều thú vị về hộp cơm Bento đáng yêu của đất nước mặt trời mọc...&</p>
                                <a href="http://morningjapan.com/kien-thuc-can-thiet/van-hoa-nhat-ban/9-dieu-ban-chua-biet-ve-com-hop-bento/" class="more-blog-a">Xem thêm</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-xs-12">
                        <div class="blog-dev-right">
                            <a data-target="_blank" href="http://chiecthiavang.com/tin-tuc/bento-tu-hop-com-den-bieu-tuong-van-hoa-c943a2017081108093868.htm" class="blog-item-img-blog">
                                <img src="images/justbont.jpg" alt="doi net am thuc nhat">
                            </a>
                            <div class="blog-item-title">
                                <p class="date-blog-title">12/09/2019</p>
                                <a data-target="_blank" href="http://chiecthiavang.com/tin-tuc/bento-tu-hop-com-den-bieu-tuong-van-hoa-c943a2017081108093868.htm" class="Information-blog">Bento, từ hộp cơm đến biểu tượng văn hóa</a>
                                <p class="content-blog">Vốn chỉ là một từ vựng thuần Nhật nhưng nay đã được sử dụng trên toàn thế giới, Bento không chỉ được xem là cơm hộp như thông thường mà đã trở thành nét đẹp văn hóa của quốc gia....&</p>
                                <a href="http://chiecthiavang.com/tin-tuc/bento-tu-hop-com-den-bieu-tuong-van-hoa-c943a2017081108093868.htm" class="more-blog-a">Xem thêm</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row row-bottom-blog"><a class="more-blog-a" href="#">SHOW ALL</a></div>
            </div>
        </div>
        <!-- end blog koi -->
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
        <!-- script tabpannel -->
        <script>

            $(document).ready(function ()
            {
                // Hàm active tab nào đó
                function activeTab(obj)
                {
                    // Xóa class active tất cả các tab
                    $('.tab-menu-main .container-tab-menu .row-btn-group .col-xs-12 ul li').removeClass('active');

                    // Thêm class active vòa tab đang click
                    $(obj).addClass('active');

                    // Lấy href
                    var id = $(obj).find('a').attr('href');

                    // Ẩn hết nội dung các tab đang hiển thị
                    $('.tab-content').hide();

                    // Hiển thị
                    $(id).show();
                }

                // Sự kiện click đổi tab
                $('.button-group li').click(function () {
                    activeTab(this);
                    return false;
                });

                // Active tab đầu tiên khi trang web được chạy
                activeTab($('.button-group li:first-child'));
            });
        </script>
        <!-- script tabpannel end -->
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
