<%-- 
    Document   : Home
    Created on : Jun 14, 2020, 10:33:22 PM
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
                                        <a class="nav-link" href="HomeServlet?username=<%=session.getAttribute("username")%>">Trang chủ</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="GioithieuServlet?username=<%=session.getAttribute("username")%>">giới thiệu</a>
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
                                    <%if (session.getAttribute("username") != null) {%>
                                    <li>
                                        <u>
                                            <a class ="nav-link" href="http://localhost:8080/KoiBento/Login.jsp"><%=session.getAttribute("username")%></a>
                                        </u>
                                    </li>
                                    <%} else {%>
                                    <li>
                                        <a class ="nav-link" href="http://localhost:8080/KoiBento/Login.jsp">Login</a>
                                    </li>
                                    <%}%>

                                    <%if (session.getAttribute("username") != null) {%>
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
        <!-- start title forr yêu thương -->
        <div class="menu-title-main">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-xs-12 col-title-img">
                        <div class="div-title-img">
                            <img src="images/cover.jpg" alt="thong diep tu yeu thuong">
                        </div>
                    </div>
                    <div class="col-sm-6 col-xs-12 col-tile-text">
                        <div class="p-title">
                            <p>Khi ẩm thực xuất phát từ lòng yêu thương</p>
                            <p>Bạn có từng hoài niệm món canh ngoại nấu, món ăn mẹ làm hay một món ăn đường phố từng ăn với người cũ,Món yêu thương mi làm cho ta thấy gần gũi, thân quen vì trong mi có tình yêu, tình bạn và tình cảm gia đình đó là những thứ tình cảm thiêng liêng nhất của con người. Bí quyết nấu chao của mi đã mang lại một tình yêu đẹp cho Lâm Thục Văn và Thẩm Hằng, đúng là con đường ngắn nhất đến với tình yêu là đi qua con đường dạ dày nhưng rồi ta lại ghét mi làm ta mơ tưởng vẽ ra một viễn cảnh trong đầu về một tình yêu.</p>
                            <p>Mấy ngày nay trời lại trở rét ta lại nhớ về mi, nhớ về bát mì ven đương trong đêm đông giá rét mà khiến con người ta sinh ra ảo giác hạnh phúc tràn trề. Cao lương mỹ vị hay những nhà hàng sang trọng kiểu tây khi đó không thể sánh được với bát mì ven đường,Trong mi vẫn còn ô mai, thịt dê hầm, cánh gà nướng, hoành thánh...,Mi làm ta thấy thỏa mãn, vui vẻ và quan trọng là luôn cho ta cảm thấy hạnh phúc hơn nữa mi làm ta vương vấn không thôi.</p>
                            <p>KOI BENTO- Hộp Cơm trưa Nhật Bản<p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- start title forr yêu thương -->
        <!-- start vekoi tab -->
        <div class="tab-menu-main">
            <div class="container container-tab-menu">
                <div class="row row-panel-title">
                    <div class="col-md-12 col-xs-12">
                        <div class="tab-menu-wraper">
                            <h3 class="tab-title">
                                <b></b>
                                <span class="tab-title-content">Menu Food</span>
                                <b></b>
                            </h3>
                        </div>
                    </div>
                </div>
                <div class="row row-btn-group">
                    <div class="col-sm-12 col-xs-12">
                        <ul class="button-tab-pannel button-group">
                            <li>
                                <a class="tab-link" href="#tab-1">TẤT CẢ MÓN</a>
                            </li>
                            <li>
                                <a class="tab-link" href="#tab-2">sushi</a>
                            </li>
                            <li>
                                <a class="tab-link" href="#tab-3">Bento box</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div id="tab-1" class="row tab-content row-show ">
                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 my-col-fod">
                            <div class="box-shadow">
                                <div class="food-menu1-show">
                                    <img src="images/com-bo-nuong.png" alt="com-bo-nuong">
                                    <div class="ovrly"></div>
                                    <div class="buttons-img">
                                        <a href="#" class="fa fa-link"></a>
                                    </div>
                                </div>
                                <div class="box-food-text text-center">
                                    <div class="title-wrapper">
                                        <span class="price-food">250000VND</span>
                                        <span class="price-food-no-sale">200000VND</span>
                                        <p class="product-title">Com bo nuong</p>

                                    </div>
                                    <div class="add-to-cart-food">
                                        <a href="#" class="add-to-cart-a-food button-food-cart-more">Thêm vào Giỏ</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 my-col-fod ">
                            <div class="box-shadow">
                                <div class="food-menu1-show">
                                    <img src="images/com-cuon-trung-tom.png" alt="com-cuon-trung-tom">
                                    <div class="ovrly"></div>
                                    <div class="buttons-img">
                                        <a href="#" class="fa fa-link"></a>
                                    </div>
                                </div>
                                <div class="box-food-text text-center">
                                    <div class="title-wrapper">
                                        <span class="price-food">120000VND</span>
                                        <span class="price-food-no-sale">80000VND</span>
                                        <p class="product-title">Com cuon trung tom</p>

                                    </div>
                                    <div class="add-to-cart-food">
                                        <a href="#" class="add-to-cart-a-food button-food-cart-more">Thêm vào Giỏ</a>
                                    </div>
                                </div>
                            </div>
                        </div>	
                        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 my-col-fod ">
                            <div class="box-shadow">
                                <div class="food-menu1-show">
                                    <img src="images/com-chay-nhat-ban.png" alt="com-chay-nhat-ban">
                                    <div class="ovrly"></div>
                                    <div class="buttons-img">
                                        <a href="#" class="fa fa-link"></a>
                                    </div>
                                </div>
                                <div class="box-food-text text-center">
                                    <div class="title-wrapper">
                                        <span class="price-food">100000VND</span>
                                        <span class="price-food-no-sale">80000VND</span>
                                        <p class="product-title">Com chay nhat</p>

                                    </div>
                                    <div class="add-to-cart-food">
                                        <a href="#" class="add-to-cart-a-food button-food-cart-more">Thêm vào Giỏ</a>
                                    </div>
                                </div>
                            </div>
                        </div>	
                        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 my-col-fod ">
                            <div class="box-shadow">
                                <div class="food-menu1-show">
                                    <img src="images/ca-hoi-nuong-sot-bo-toi.png" alt="ca-hoi-nuong-sot-bo-toi">
                                    <div class="ovrly"></div>
                                    <div class="buttons-img">
                                        <a href="#" class="fa fa-link"></a>
                                    </div>
                                </div>
                                <div class="box-food-text text-center">
                                    <div class="title-wrapper">
                                        <span class="price-food">240000VND</span>
                                        <span class="price-food-no-sale">180000VND</span>
                                        <p class="product-title">Ca hoi sot bo toi</p>

                                    </div>
                                    <div class="add-to-cart-food">
                                        <a href="#" class="add-to-cart-a-food button-food-cart-more">Thêm vào Giỏ</a>
                                    </div>
                                </div>
                            </div>
                        </div>	
                        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 my-col-fod ">
                            <div class="box-shadow">
                                <div class="food-menu1-show">
                                    <img src="images/com-cuon-tong-hop.png" alt="ca-hoi-nuong-sot-bo-toi">
                                    <div class="ovrly"></div>
                                    <div class="buttons-img">
                                        <a href="#" class="fa fa-link"></a>
                                    </div>
                                </div>
                                <div class="box-food-text text-center">
                                    <div class="title-wrapper">
                                        <span class="price-food">60000VND</span>
                                        <span class="price-food-no-sale">40000VND</span>
                                        <p class="product-title">Com cuon tong hop</p>

                                    </div>
                                    <div class="add-to-cart-food">
                                        <a href="#" class="add-to-cart-a-food button-food-cart-more">Thêm vào Giỏ</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 my-col-fod ">
                            <div class="box-shadow">
                                <div class="food-menu1-show">
                                    <img src="images/com-cuon-rau-cu-tam-vung.png" alt="ca-hoi-nuong-sot-bo-toi">
                                    <div class="ovrly"></div>
                                    <div class="buttons-img">
                                        <a href="#" class="fa fa-link"></a>
                                    </div>
                                </div>
                                <div class="box-food-text text-center">
                                    <div class="title-wrapper">
                                        <span class="price-food">50000VND</span>
                                        <span class="price-food-no-sale">30000VND</span>
                                        <p class="product-title">com cuon rau cu</p>

                                    </div>
                                    <div class="add-to-cart-food">
                                        <a href="#" class="add-to-cart-a-food button-food-cart-more">Thêm vào Giỏ</a>
                                    </div>
                                </div>
                            </div>
                        </div>	
                        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 my-col-fod ">
                            <div class="box-shadow">
                                <div class="food-menu1-show">
                                    <img src="images/com-cuon-tom-chien.png" alt="ca-hoi-nuong-sot-bo-toi">
                                    <div class="ovrly"></div>
                                    <div class="buttons-img">
                                        <a href="#" class="fa fa-link"></a>
                                    </div>
                                </div>
                                <div class="box-food-text text-center">
                                    <div class="title-wrapper">
                                        <span class="price-food">80000VND</span>
                                        <span class="price-food-no-sale">60000VND</span>
                                        <p class="product-title">Com cuon tom chien</p>

                                    </div>
                                    <div class="add-to-cart-food">
                                        <a href="#" class="add-to-cart-a-food button-food-cart-more">Thêm vào Giỏ</a>
                                    </div>
                                </div>
                            </div>
                        </div>	
                        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 my-col-fod ">
                            <div class="box-shadow">
                                <div class="food-menu1-show">
                                    <img src="images/com-cuon-qua-bo.png" alt="ca-hoi-nuong-sot-bo-toi">
                                    <div class="ovrly"></div>
                                    <div class="buttons-img">
                                        <a href="#" class="fa fa-link"></a>
                                    </div>
                                </div>
                                <div class="box-food-text text-center">
                                    <div class="title-wrapper">
                                        <span class="price-food">60000VND</span>
                                        <span class="price-food-no-sale">40000VND</span>
                                        <p class="product-title">Com cuon qua bo</p>

                                    </div>
                                    <div class="add-to-cart-food">
                                        <a href="#" class="add-to-cart-a-food button-food-cart-more">Thêm vào Giỏ</a>
                                    </div>
                                </div>
                            </div>
                        </div>	
                        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 my-col-fod ">
                            <div class="box-shadow">
                                <div class="food-menu1-show">
                                    <img src="images/ca-saba-nuong-muoi.png" alt="ca-saba-nuong-muoi">
                                    <div class="ovrly"></div>
                                    <div class="buttons-img">
                                        <a href="#" class="fa fa-link"></a>
                                    </div>
                                </div>
                                <div class="box-food-text text-center">
                                    <div class="title-wrapper">
                                        <span class="price-food">150000VND</span>
                                        <span class="price-food-no-sale">120000VND</span>
                                        <p class="product-title">Ca basa nuong muoi</p>

                                    </div>
                                    <div class="add-to-cart-food">
                                        <a href="#" class="add-to-cart-a-food button-food-cart-more">Thêm vào Giỏ</a>
                                    </div>
                                </div>
                            </div>
                        </div>	
                        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 my-col-fod ">
                            <div class="box-shadow">
                                <div class="food-menu1-show">
                                    <img src="images/luon-nhat-nuong-sot-teri.png" alt="luon-nhat-nuong-sot-teri">
                                    <div class="ovrly"></div>
                                    <div class="buttons-img">
                                        <a href="#" class="fa fa-link"></a>
                                    </div>
                                </div>
                                <div class="box-food-text text-center">
                                    <div class="title-wrapper">
                                        <span class="price-food">150000VND</span>
                                        <span class="price-food-no-sale">120000VND</span>
                                        <p class="product-title">Luon nhat sot teri</p>

                                    </div>
                                    <div class="add-to-cart-food">
                                        <a href="#" class="add-to-cart-a-food button-food-cart-more">Thêm vào Giỏ</a>
                                    </div>
                                </div>
                            </div>
                        </div>	
                        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 my-col-fod ">
                            <div class="box-shadow">
                                <div class="food-menu1-show">
                                    <img src="images/suon-bo-my-sot.png" alt="suon-bo-my-sot">
                                    <div class="ovrly"></div>
                                    <div class="buttons-img">
                                        <a href="#" class="fa fa-link"></a>
                                    </div>
                                </div>
                                <div class="box-food-text text-center">
                                    <div class="title-wrapper">
                                        <span class="price-food">400000VND</span>
                                        <span class="price-food-no-sale">350000VND</span>
                                        <p class="product-title">Suon bo my sot</p>

                                    </div>
                                    <div class="add-to-cart-food">
                                        <a href="#" class="add-to-cart-a-food button-food-cart-more">Thêm vào Giỏ</a>
                                    </div>
                                </div>
                            </div>
                        </div>	
                    </div>
                </div>
                <div id="tab-2" class="row tab-content row-show">
                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 my-col-fod">
                            <div class="box-shadow">
                                <div class="food-menu1-show">
                                    <img src="images/com-cuon-qua-bo.png" alt="com-cuon-qua-bo">
                                    <div class="ovrly"></div>
                                    <div class="buttons-img">
                                        <a href="#" class="fa fa-link"></a>
                                    </div>
                                </div>
                                <div class="box-food-text text-center">
                                    <div class="title-wrapper">
                                        <span class="price-food">80000VND</span>
                                        <span class="price-food-no-sale">60000VND</span>
                                        <p class="product-title">Sushi qua bo</p>
                                    </div>
                                    <div class="add-to-cart-food">
                                        <a href="#" class="add-to-cart-a-food button-food-cart-more">Thêm vào Giỏ</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 my-col-fod">
                            <div class="box-shadow">
                                <div class="food-menu1-show">
                                    <img src="images/com-cuon-rau-cu-tam-vung.png" alt="com-cuon-rau-cu-tam-vung">
                                    <div class="ovrly"></div>
                                    <div class="buttons-img">
                                        <a href="#" class="fa fa-link"></a>
                                    </div>
                                </div>
                                <div class="box-food-text text-center">
                                    <div class="title-wrapper">
                                        <span class="price-food">60000VND</span>
                                        <span class="price-food-no-sale">40000VND</span>
                                        <p class="product-title">Sushi rau cu tam vung</p>

                                    </div>
                                    <div class="add-to-cart-food">
                                        <a href="#" class="add-to-cart-a-food button-food-cart-more">Thêm vào Giỏ</a>
                                    </div>
                                </div>
                            </div>
                        </div>	
                        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 my-col-fod">
                            <div class="box-shadow">
                                <div class="food-menu1-show">
                                    <img src="images/com-cuon-tom-chien.png" alt="com-cuon-tom-chien">
                                    <div class="ovrly"></div>
                                    <div class="buttons-img">
                                        <a href="#" class="fa fa-link"></a>
                                    </div>
                                </div>
                                <div class="box-food-text text-center">
                                    <div class="title-wrapper">
                                        <span class="price-food">80000VND</span>
                                        <span class="price-food-no-sale">60000VND</span>
                                        <p class="product-title">sushi cuon tom</p>

                                    </div>
                                    <div class="add-to-cart-food">
                                        <a href="#" class="add-to-cart-a-food button-food-cart-more">Thêm vào Giỏ</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 my-col-fod">
                            <div class="box-shadow">
                                <div class="food-menu1-show">
                                    <img src="images/com-cuon-tong-hop.png" alt="com-cuon-tong-hop">
                                    <div class="ovrly"></div>
                                    <div class="buttons-img">
                                        <a href="#" class="fa fa-link"></a>
                                    </div>
                                </div>
                                <div class="box-food-text text-center">
                                    <div class="title-wrapper">
                                        <span class="price-food">100000VND</span>
                                        <span class="price-food-no-sale">80000VND</span>
                                        <p class="product-title">sushi thap cam</p>

                                    </div>
                                    <div class="add-to-cart-food">
                                        <a href="#" class="add-to-cart-a-food button-food-cart-more">Thêm vào Giỏ</a>
                                    </div>
                                </div>
                            </div>
                        </div>	
                        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 my-col-fod">
                            <div class="box-shadow">
                                <div class="food-menu1-show">
                                    <img src="images/com-cuon-trung-tom.png" alt="com-cuon-trung-tom">
                                    <div class="ovrly"></div>
                                    <div class="buttons-img">
                                        <a href="#" class="fa fa-link"></a>
                                    </div>
                                </div>
                                <div class="box-food-text text-center">
                                    <div class="title-wrapper">
                                        <p class="product-title">sushi cuon trung tom</p>
                                        <span class="price-food">100000VND</span>
                                        <span class="price-food-no-sale">80000VND</span>
                                    </div>
                                    <div class="add-to-cart-food">
                                        <a href="#" class="add-to-cart-a-food button-food-cart-more">Thêm vào Giỏ</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>	
                <div id="tab-3" class="row tab-content row-show">
                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 my-col-fod">
                            <div class="box-shadow">
                                <div class="food-menu1-show">
                                    <img src="images/ca-hoi-nuong-sot-bo-toi.png" alt="com ca hoi nuong">
                                    <div class="ovrly"></div>
                                    <div class="buttons-img">
                                        <a href="#" class="fa fa-link"></a>
                                    </div>
                                </div>
                                <div class="box-food-text text-center">
                                    <div class="title-wrapper">
                                        <span class="price-food">200000VND</span>
                                        <span class="price-food-no-sale">150000VND</span>
                                        <p class="product-title">ca hoi nuong sot bo toi</p>
                                    </div>
                                    <div class="add-to-cart-food">
                                        <a href="#" class="add-to-cart-a-food button-food-cart-more">Thêm vào Giỏ</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 my-col-fod ">
                            <div class="box-shadow">
                                <div class="food-menu1-show">
                                    <img src="images/ca-saba-nuong-muoi.png" alt="ca saba nuong muoi">
                                    <div class="ovrly"></div>
                                    <div class="buttons-img">
                                        <a href="#" class="fa fa-link"></a>
                                    </div>
                                </div>
                                <div class="box-food-text text-center">
                                    <div class="title-wrapper">
                                        <span class="price-food">180000VND</span>
                                        <span class="price-food-no-sale">140000VND</span>
                                        <p class="product-title">ca basa nuong</p>
                                    </div>
                                    <div class="add-to-cart-food">
                                        <a href="#" class="add-to-cart-a-food button-food-cart-more">Thêm vào Giỏ</a>
                                    </div>
                                </div>
                            </div>
                        </div>	
                        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 my-col-fod ">
                            <div class="box-shadow">
                                <div class="food-menu1-show">
                                    <img src="images/luon-nhat-nuong-sot-teri.png" alt="luon-nhat-nuong-sot-teri">
                                    <div class="ovrly"></div>
                                    <div class="buttons-img">
                                        <a href="#" class="fa fa-link"></a>
                                    </div>
                                </div>
                                <div class="box-food-text text-center">
                                    <div class="title-wrapper">
                                        <span class="price-food">140000VND</span>
                                        <span class="price-food-no-sale">120000VND</span>
                                        <p class="product-title">luon nhat sot teri</p>
                                    </div>
                                    <div class="add-to-cart-food">
                                        <a href="#" class="add-to-cart-a-food button-food-cart-more">Thêm vào Giỏ</a>
                                    </div>
                                </div>
                            </div>
                        </div>	
                        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 my-col-fod ">
                            <div class="box-shadow">
                                <div class="food-menu1-show">
                                    <img src="images/suon-bo-my-sot.png" alt="suon-bo-my-sot">
                                    <div class="ovrly"></div>
                                    <div class="buttons-img">
                                        <a href="#" class="fa fa-link"></a>
                                    </div>
                                </div>
                                <div class="box-food-text text-center">
                                    <div class="title-wrapper">
                                        <span class="price-food">140000VND</span>
                                        <span class="price-food-no-sale">100000VND</span>
                                        <p class="product-title">Suon bo my sot</p>
                                    </div>
                                    <div class="add-to-cart-food">
                                        <a href="#" class="add-to-cart-a-food button-food-cart-more">Thêm vào Giỏ</a>
                                    </div>
                                </div>
                            </div>
                        </div>	
                    </div>
                </div>
            </div>
        </div>
        <!-- end tab text food -->
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
                                <p class="date-blog-title">12/06/2020</p>
                                <a data-target="_blank" href="https://duhochoasen.com/jp/doi-net-ve-van-hoa-a%CC%89m-thu%CC%A3c-nha%CC%A3t-ba%CC%89n-com-bento.html" class="Information-blog">Đôi nét về văn hóa ẩm thực nhật bản - cơm bento</a>
                                <p class="content-blog">Bento ngày nay đã không còn xa lạ gì với hầu hết mọi người. Sự đổ bộ của các...&</p>
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
                                <p class="date-blog-title">12/06/2020</p>
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
                                <p class="date-blog-title">12/06/2020</p>
                                <a data-target="_blank" href="https://www.bbc.com/vietnamese/vietnam-48205835" class="Information-blog">Cơm hộp bento Truyền thống Nhật có sức lan tỏa lớn BBC</a>
                                <p class="content-blog">Những hộp cơm bento đựng nhiều món ăn được bài trí hấp dẫn là một nét đặc trưng trong văn hoá ẩm thực Nhật Bản được nhiều người trên thế giới biết đến....&</p>
                                <a href="https://www.bbc.com/vietnamese/vietnam-48205835" class="more-blog-a">Xem thêm</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-xs-12 hidden-xs">
                        <div class="blog-dev-right">
                            <a data-target="_blank" href="http://morningjapan.com/kien-thuc-can-thiet/van-hoa-nhat-ban/9-dieu-ban-chua-biet-ve-com-hop-bento/" class="blog-item-img-blog">
                                <img src="images/vietravel.jpg" alt="8 điểm thú vị về cơm hộp Bento Nhật Bản">
                            </a>
                            <div class="blog-item-title">
                                <p class="date-blog-title">12/06/2020</p>
                                <a data-target="_blank" href="http://morningjapan.com/kien-thuc-can-thiet/van-hoa-nhat-ban/9-dieu-ban-chua-biet-ve-com-hop-bento/" class="Information-blog">8 điểm thú vị về cơm hộp Bento Nhật Bản</a>
                                <p class="content-blog">Người Nhật rất cầu kì trong việc ăn uống, món ăn vừa phải ngon và sạch, đồng thời phải có tính thẩm mĩ và nghệ thuật tinh tế về phần nhìn. Hãy cùng khám phá 8 điều thú vị về hộp cơm Bento đáng yêu của đất nước mặt trời mọc...&</p>
                                <a href="http://morningjapan.com/kien-thuc-can-thiet/van-hoa-nhat-ban/9-dieu-ban-chua-biet-ve-com-hop-bento/" class="more-blog-a">Xem thêm</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-xs-12 hidden-xs">
                        <div class="blog-dev-right">
                            <a data-target="_blank" href="http://chiecthiavang.com/tin-tuc/bento-tu-hop-com-den-bieu-tuong-van-hoa-c943a2017081108093868.htm" class="blog-item-img-blog">
                                <img src="images/justbont.jpg" alt="doi net am thuc nhat">
                            </a>
                            <div class="blog-item-title">
                                <p class="date-blog-title">12/06/2020</p>
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
