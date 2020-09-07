<%-- 
    Document   : Admin
    Created on : Jul 20, 2020, 4:38:41 PM
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
        <style>
            .payment{
                padding:100px 0;
                .container{

                    .rw-top{

                        .col-sm-12{

                            ul{
                                list-style:none;
                                text-align:center;
                                li{
                                    display:inline-block;
                                    a{
                                        text-decoration:none;
                                        display:block;
                                        color:#333;
                                        font-size:24px;
                                        padding:5px;
                                    }
                                }
                            }
                        }
                    }
                    .row-center{

                        .col-xs-12{

                            .title-header{
                                h2{
                                    font-size:22px;
                                    color:#FFC312;
                                }
                            }
                            .input-payment-contain{
                                .input-comment{
                                    display:block;
                                    width:100%;
                                    height:100px;
                                }
                                .input-text{
                                    display:block;
                                    width:100%;
                                    height:40px;
                                    padding:10px;
                                    box-shadow:none;
                                }
                                .firstname-form{


                                }
                            }
                        }
                    }
                }
            }
        </style>
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
                                        <a href="/lien-he" title="Miễn phí ship cho đơn hàng trên 1tr VNĐ">Koi - Bento</a>
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
                                        <a class="nav-link" href="http://localhost:8080/KoiBento/Home.jsp">Trang chủ</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="http://localhost:8080/KoiBento/GioiThieu.jsp#">giới thiệu</a>

                                    <li class="nav-item">
                                        <a class="nav-link" href="http://localhost:8080/KoiBento/Menu.jsp#">Menu</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="http://localhost:8080/KoiBento/News.jsp#">News</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="http://localhost:8080/KoiBento/Contact.jsp">Liên Hệ</a>
                                    </li>	
                                    <li class="nav-item">
                                        <a class="nav-link link-phone" href="#"><i class="fa fa-phone"></i> (+84) 0329139333</a>
                                    </li>
                                    <li>
                                        <a class ="nav-link" href="http://localhost:8080/KoiBento/Login.jsp">Login</a>
                                    </li>
                                    <li>
                                        <a class="nav-link" href="http://localhost:8080/KoiBento/Home.jsp">Logout</a>
                                    </li>

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
                                        <a href="#">Cá hồi nướng sốt bò tỏi</a>
                                    </li>
                                    <li class="dropdown-item">
                                        <a href="#">Cơm bò nướng</a>
                                    </li>
                                    <li class="dropdown-item">
                                        <a href="#">Cứt trộn lá xoan</a>
                                    </li>
                                    <li class="dropdown-item">
                                        <a href="#">Cơm cuộn tôm chiên</a>
                                    </li>
                                    <li class="dropdown-item">
                                        <a href="#">Cơm thịt lợn sốt gừng</a>
                                    </li>
                                    <li class="dropdown-item">
                                        <a href="#">Cơm gà sốt nấm</a>
                                    </li>
                                    <li class="dropdown-item">
                                        <a href="#">Cơm cá kho sốt nhật</a>
                                    </li>
                                    <li class="dropdown-item">
                                        <a href="#">Cá saba nướng muối</a>
                                    </li>
                                    <li class="dropdown-item">
                                        <a href="#">cơm cuộn quả bơ</a>
                                    </li>		
                                    <li class="dropdown-item">
                                        <a href="#">Cơm cuộn rau củ</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-7 col-xs-12">
                            <form action="" method="POST" id="Search-dropdown">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Bạn muốn mua gì?" name="seach-dropdow" id="search-dropdown-input">
                                    <button type="submit" value="Search" class="btn-search" type="button">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </div>
                            </form>
                        </div>
                        <div class="col-md-3 col-xs-12 hidden-xs">
                            <span class="cart-koi cart-koi-img">
                                <a href="http://localhost:8080/KoiBento/Cart.jsp#">
                                    <span class="hd-cart-title">GIỎ HÀNG / 
                                        <span class="cart-price">
                                            <span class="cart-amount price-amout">0$</span>
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
        <!-- start slider -->
        <div class="main-slider">
            <div id="slider-koibento" class="carousel slide container-fluid" data-ride="carousel">
                <div class="row">
                    <div class="col-md-12 col-xs-12">
                        <ul class="carousel-indicators slider-prev-next-list">
                            <li data-target="#slider-koibento" data-slide-to="0" class="list-ol active"></li>
                            <li data-target="#slider-koibento" data-slide-to="1" class="list-ol"></li>
                            <li data-target="#slider-koibento" data-slide-to="2" class="list-ol"></li>
                        </ul>
                        <div class="carousel-inner slider-img">
                            <div class="carousel-item active slider-item-img">
                                <img class="slide" src="images/slide/item_slide1.jpg" alt="First slide">
                                <div class="slide-caption d-none d-md d-block">
                                    <p>KOI BENTO - </p> <span class="lunch-box"> JAPANSE LUNCH BOX</span>
                                    <p>Khi Ẩm Thực Xuất Phát Từ lòng yêu thương</p>
                                    <a class ="oder-slider" href="http://localhost:8080/KoiBento/Menu.jsp#">đặt hàng</a>
                                </div>
                            </div>
                            <div class="carousel-item slider-item-img">
                                <img class="slide slider-item-img" src="images/slide/item_slide2.jpg" alt="Second slide">
                                <div class="slide-caption d-none d-md d-block">
                                    <p>KOI BENTO - </p><span class="lunch-box"> JAPANSE LUNCH BOX</span>
                                    <p>Khi Ẩm Thực Xuất Phát Từ lòng yêu thương</p>
                                    <a class ="oder-slider" href="#">đặt hàng</a>
                                </div>
                            </div>
                            <div class="carousel-item slider-item-img">
                                <img class="slide slider-item-img" src="images/slide/item_slide3.jpg" alt="Third slide">
                                <div class="slide-caption d-none d-md d-block">
                                    <p>KOI BENTO - </p><span class="lunch-box"> JAPANSE LUNCH BOX</span>
                                    <p>Khi Ẩm Thực Xuất Phát Từ lòng yêu thương</p>
                                    <a class ="oder-slider" href="#">đặt hàng</a>
                                </div>
                            </div>
                            <div class="ovrly-slide"></div>
                        </div>
                        <a class="carousel-control-prev prev-a" href="#slider-koibento" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"><i class="fas fa-caret-left"></i></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next next-a" href="#slider-koibento" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"><i class="fas fa-caret-right"></i></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div> 
            </div>
        </div>
        <!-- end slider -->

        <div class="tab-menu-main">
            <div class="payment">
                <div class="container">
                    <div class="row rw-top">
                        <div class="col-sm-12 col-xs-12">
                            <ul style="list-style:none; text-align:center;">
<!--                                <li style="display: inline-block">
                                    <a href="http://localhost:8080/KoiBento/Home.jsp">TRANG CHỦ /</a> 
                                </li>-->

<!--                                <li style="display: inline-block">
                                    <a href="http://localhost:8080/KoiBento/Cart.jsp#">ADD SẢN PHẨM /</a>
                                </li>-->
                                
                                <li style="display: inline-block">
                                    <a href="MenuServlet?username=<%=session.getAttribute("username")%>">MENU /</a>
                                </li>
                                
                                <li style="display: inline-block">
                                    <a href="http://localhost:8080/KoiBento/Admin.jsp">ADMIN</a>
                                </li>

                            </ul>
                        </div>
                    </div>
                    <div class="row row-center">
                        <div class="col-sm-6 col-xs-12">
                            <form action="AddProduct"  class="check-out check-out-peyment" method="post" action="" name="check-peyment">
                                <div class="title-header">
                                    <h2 class="content-title"style="color: #FFC312">Thông tin sản phẩm</h2>
                                </div>
                                <div class="input-payment-contain">
                                    <p class="form-firstname form-first" id="firstname-form">
                                        <label for="firstname-billing" style="color: #FFC312">Tên sản phẩm</label>
                                        <input type="text" name="tensanpham" style="display:block;
                                               width:100%;
                                               height:40px;
                                               padding:10px;
                                               box-shadow:none;" class="input-text" name="billing-firstname" id="firstname-billing" placeholder="" value="" autocomplete="Nhập Tên" autofocus="autofocus">
                                    </p>
                                    <p class="form-nth-2 form-first" id="adress-form">
                                        <label for="billing-address"  style="color: #FFC312">Giá sản phẩm</label>
                                        <input type="text" name="giasanpham" style="display:block;
                                               width:100%;
                                               height:40px;
                                               padding:10px;
                                               box-shadow:none;" class="input-text" name="billing-address" id="billing-address" placeholder="" value="" autocomplete="Nhập địa chỉ" autofocus="autofocus">
                                    </p>
                                    <p class="form-phone form-first" id="phone-form">
                                        <label for="billing-phonen" style="color: #FFC312">Đơn vị</label>
                                        <input type="text" name="donvi" style="display:block;
                                               width:100%;
                                               height:40px;
                                               padding:10px;
                                               box-shadow:none;" class="input-text" name="billing-phone" id="billing-phone" placeholder="" value="" autocomplete="Nhập sdt" autofocus="autofocus">
                                    </p>
                                    <p class="form-mail-cl form-first" id="form-mail">
                                        <label for="billing-formmail-id" style="color: #FFC312">Hình ảnh</label>
                                        <!--                                        <input type="email" style="display:block;
                                                                                       width:100%;
                                                                                       height:40px;
                                                                                       padding:10px;
                                                                                       box-shadow:none;" class="input-text" name="billing-formmail" id="billing-formmail-id" placeholder="" value="" autocomplete="Nhập email" autofocus="autofocus">-->
                                        
                                        <input type="file" id="img" name="img" accept="image/*" style="color: #FFC312">
                                    </p>

                                    <br>
                                    <p>
                                        <button type="submit" name="" value="Thanh Toán">Add Product</button>
                                    </p>
                                </div>
                            </form>
                        </div>
                        <div class="col-sm-6 col-xs-12"></div>
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

