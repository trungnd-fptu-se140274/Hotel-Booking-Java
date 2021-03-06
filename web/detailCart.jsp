<%-- 
    Document   : detailCart
    Created on : Oct 25, 2020, 4:33:29 PM
    Author     : User
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="description" content="" />
        <meta name="keywords" content="Ogani, unica, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Tra vồ lô ca - CART</title>
        <link rel="icon" type="image/x-icon" href="images/favicon.png"/>

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

        <!-- Css Styles -->
        <link rel="stylesheet" href="css1/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="css1/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="css1/elegant-icons.css" type="text/css">
        <link rel="stylesheet" href="css1/nice-select.css" type="text/css">
        <link rel="stylesheet" href="css1/jquery-ui.min.css" type="text/css">
        <link rel="stylesheet" href="css1/owl.carousel.min.css" type="text/css">
        <link rel="stylesheet" href="css1/slicknav.min.css" type="text/css">
        <link rel="stylesheet" href="css1/style.css" type="text/css">
    </head>
    <body>
        <div id="preloder">
            <div class="loader"></div>
        </div>
        <!-- Humberger Begin -->
        <div class="humberger__menu__overlay"></div>
        <div class="humberger__menu__wrapper">
            <div class="humberger__menu__logo">
                <a href="#"><img src="img/logo.png" alt=""></a>
            </div>
            <div class="humberger__menu__cart">
                <ul>
                    <li><a href="#"><i class="fa fa-heart"></i> <span></span></a></li>
                    <li><a href="DetailCartController"><i class="fa fa-shopping-bag"></i> <span></span></a></li>
                </ul>
                <div class="header__cart__price"></div>
            </div>
            <div class="humberger__menu__widget">
                <div class="header__top__right__language">
                    <img src="img/language.png" alt="">
                    <div>English</div>
                    <span class="arrow_carrot-down"></span>
                    <ul>
                        <li><a href="#">Spanish</a></li>
                        <li><a href="#">English</a></li>
                    </ul>
                </div>
                <div class="header__top__right__auth">
                    <a href="#"><i class="fa fa-user"></i> Login</a>
                </div>
            </div>
            <nav class="humberger__menu__nav mobile-menu">
                <ul>
                    <li class="active"><a href="SearchController">Home</a></li> <!--search-->
                    <li><a href="./shop-grid.html">Shop</a></li>
                    <li><a>Pages</a>
                        <ul class="header__menu__dropdown">
                            <li><a href="DetailCartController">Shopping Cart</a></li>
                            <li><a href="./checkout.html">Check Out</a></li>
                        </ul>
                    </li>
                    <li><a href="./blog.html">Blog</a></li>
                    <li><a href="./contact.html">Contact</a></li>
                </ul>
            </nav>
            <div id="mobile-menu-wrap"></div>
            <div class="header__top__right__social">
                <a href="#"><i class="fa fa-facebook"></i></a>
                <a href="#"><i class="fa fa-twitter"></i></a>
                <a href="#"><i class="fa fa-linkedin"></i></a>
                <a href="#"><i class="fa fa-pinterest-p"></i></a>
            </div>
            <div class="humberger__menu__contact">
                <ul>
                    <li><i class="fa fa-envelope"></i> trungndse140274@fpt.edu.vn</li>
                    <li>Sale Off Traveling 50% for each week</li>
                </ul>
            </div>
        </div>
        <!-- Humberger End -->

        <header class="header">
            <div class="header__top">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 col-md-6">
                            <div class="header__top__left">
                                <ul>
                                    <li><i class="fa fa-envelope"></i> trungndse140274@fpt.edu.vn</li>
                                    <li>Sale Off Traveling 50% for each week</li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <div class="header__top__right">
                                <div class="header__top__right__social">
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                    <a href="#"><i class="fa fa-linkedin"></i></a>
                                    <a href="#"><i class="fa fa-pinterest-p"></i></a>
                                </div>
                                <div class="header__top__right__language">
                                    <img src="img/language.png" alt="">
                                    <div>English</div>
                                    <span class="arrow_carrot-down"></span>
                                    <ul>
                                        <li><a href="#">English</a></li>
                                        <li><a href="#">Vietnamese</a></li>
                                    </ul>
                                </div>
                                <div class="header__top__right__auth">
                                    <a href="login.jsp"><i class="fa fa-user"></i> ${sessionScope.EMAILID} - ${sessionScope.ROLE}</a>
                                    <form action="LogoutController" method="POST">
                                        <input type="submit" value="Log Out" name="action"/>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="header__logo">
                            <a href="#"><img src="images/YellowMoonShop.png" alt=""></a><!--hình-->
                        </div>                      
                    </div>    
                    <div class="col-lg-6">
                        <nav class="header__menu">
                            <ul>
                                <li class="active"><a href="SearchController">Home</a></li><!--trang chủ-->
                                <li><a>Pages</a>
                                    <ul class="header__menu__dropdown">          
                                        <li><a href="DetailCartController">Shopping Cart</a></li> <%-- shopping cart --%>
                                        <li><a href="./checkout.html">Check Out</a></li> <%-- bill --%>
                                    </ul>
                                </li>
                                <li><a href="./blog.html">Blog</a></li> <%-- tóm tắt blog --%>
                                <li><a href="./contact.html">Contact</a></li> <%-- liên hệ kịp thì làm --%>
                            </ul>
                        </nav>
                    </div>
                    <div class="col-lg-3">
                        <div class="header__cart">
                            <ul>
                                <li><a href="#"><i class="fa fa-heart"></i> <span></span></a></li> <%-- thông báo --%>
                                <li><a href="DetailCartController"><i class="fa fa-shopping-bag"></i> <span></span></a></li> <%-- thông báo --%>
                            </ul>
                            <div class="header__cart__price">item: <span>-----đ</span></div> <%-- Tiền còn dư --%>
                        </div>
                    </div>
                </div>
                <div class="humberger__open">
                    <i class="fa fa-bars"></i>
                </div>
            </div>
        </header>
        <!-- Header Section End -->

        <!-- Hero Section Begin -->
        <section class="hero hero-normal">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">

                    </div>
                    <div class="col-lg-9">
                        <div class="hero__search">
                            <div class="hero__search__phone">
                                <div class="hero__search__phone__icon">
                                    <i class="fa fa-phone"></i>
                                </div>
                                <div class="hero__search__phone__text">
                                    <h5>+84915723136</h5>
                                    <span>support 24/7 time</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Breadcrumb Section Begin -->
        <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="breadcrumb__text">
                            <h2>Tra vơ lô kà</h2>
                            <div class="breadcrumb__option">
                                <a href="SearchController">Home</a>
                                <span>Shop</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb Section End -->
        <!-- Product Section Begin -->
        <section class="product spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-5">
                        <div class="sidebar">
                            <div class="sidebar__item">
                                <form action="SearchController">
                                    <div class="hero__search__categories">  
                                        <h3>Lỗi search</h3>
                                        <h5>Hotel</h5>
                                        <select name="cbxHotelName">         
                                            <option value="">--- Choose or not ---</option>
                                            <c:forEach items="${requestScope.LIST_HOTEL}" var="list_hotel1">
                                                <option>${list_hotel1.name}</option>
                                            </c:forEach>
                                        </select>
                                        <br/><br/>
                                        <h5>Area</h5>
                                        <select name="cbxArea">
                                            <option value="">--- Choose or not ---</option>
                                            <c:forEach items="${requestScope.LIST_HOTEL}" var="list_hotel2">
                                                <option>${list_hotel2.area}</option>
                                            </c:forEach>
                                        </select>
                                        <br/><br/>
                                        <h5>Room</h5>
                                        <select name="cbxTypeRoom">
                                            <c:forEach items="${requestScope.LIST_ROOM}" var="list_room">
                                                <option>${list_room.type}</option>
                                            </c:forEach>
                                        </select>
                                        <br/><br/>
                                        <h5>Check-in</h5>
                                        <input type="date" name="txtCheckInDate" value="${params.txtCheckInDate}"/><br/>
                                        <h5>Check-out</h5>
                                        <input type="date" name="txtCheckOutDate" value="${params.txtCheckOutDate}"/>
                                    </div>

                                    <button type="submit" name="" class="site-btn" value="Search">SEARCH</button>        
                                </form>
                            </div>    
                            <div class="sidebar__item">
                                <h4>Price</h4>
                                <div class="price-range-wrap">
                                    ------------
                                    ------------
                                </div>
                            </div>
                        </div>                           
                    </div>

                    <div class="col-lg-9 col-md-7">
                        <h3>View Your Cart ...</h3>
                        <table border="1">
                            <thead>
                                <tr>
                                    <th>Room's Type</th>
                                    <th>Quantity In Stock</th>
                                    <th>Quantity In Cart</th>
                                    <th>Price</th>
                                    <th>Total</th>
                                    <th>Update</th>
                                    <th>Delete</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:set var="sum" value="${0}"/>
                                <c:forEach var="cart" items="${sessionScope.CART.bookingDetailList}">
                                    <c:set var="sum" value="${sum + cart.roomID.price * cart.quantity}"/>
                                    <tr>
                                <form action="UpdateCartController" method="POST">
                                    <td>${cart.roomID.type}</td>
                                    <td>${cart.roomID.quantity}</td>
                                    <td><input type="number" name="txtCartQty" value="${cart.quantity}"</td>
                                    <td>${cart.roomID.price}</td>
                                    <td>${cart.roomID.price * cart.quantity}</td>
                                    <td><input type="submit" value="Update"<td/>
                                    <input type="hidden" name="txtCheckIn" value="${requestScope.CHECKIN}"/>
                                    <input type="hidden" name="txtCheckOut" value="${requestScope.CHECKOUT}"/>
                                    <input type="hidden" name="txtId" value="${cart.roomID.roomID}"/>
                                    <input type="hidden" name="txtCartQty" value="${cart.quantity}"/>
                                    <input type="hidden" name="txtQuantity" value="${cart.roomID.quantity}"/>
                                </form>
                                <form action="DeleteCartController" method="POST">
                                    <td><input type="submit" value="Delete"/></td>
                                    <input type="hidden" name="txtId" value="${cart.roomID.roomID}"/>
                                </form>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                        <br/><br/><br/>
                        <div>
                            <form action="ConfirmController" method="POST">
                                Discount <input type="text" name="txtDiscount" size="6" /><br/>
                                CheckIn Date:<input type="date" name="txtCheckIn" value="${requestScope.CHECKIN}"/></br>
                                CheckOut Date:<input type="date" name="txtCheckOut" value="${requestScope.CHECKOUT}"/></br>
                                <input type="hidden" name="txtSum" value="${sum}" />
                                <c:out value="${requestScope.DATE}"/><br/>
                                <input type="submit" value="Confirm"/>
                            </form>

                            <font color="red">
                            <h2>${requestScope.NOTIFY}</h2>
                            </font>
                            <form action="RoomDetailController" method="POST">
                                <input type="hidden" name="txtHotelName" value="${requestScope.NAME}"/>
                                <input type="hidden" name="txtHotelID" value="${requestScope.IDHOTEL}"/>
                                <input type="submit" value="Choose More?" />
                            </form>

                        </div>
                    </div>
                    <form action="SearchController" method="POST">
                        <input type="submit" value="Want To Choose More Hotel?" />
                    </form>
                </div>                  
            </div>
        </section>
        <!-- Product Section End -->

        <!-- Footer Section Begin -->
        <footer class="footer spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="footer__about">
                            <div class="footer__about__logo">
                                <a href="#"><img src="images/YellowMoonShop.png" alt=""></a>
                            </div>
                            <ul>
                                <li>Address: 54/45B Phạm Văn Sáng, Xuân Thới Thượng, Hóc Môn, TpHCM, VN</li>
                                <li>Phone: +84915723136</li>
                                <li>Email: trungndse140274@fpt.edu.vn</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
                        <div class="footer__widget">
                            <h6>Useful Links</h6>
                            <ul>
                                <li><a href="#">About Us</a></li>
                                <li><a href="#">About Our Shop</a></li>
                                <li><a href="#">Secure Shopping</a></li>
                                <li><a href="#">Delivery infomation</a></li>
                                <li><a href="#">Privacy Policy</a></li>
                                <li><a href="#">Our Sitemap</a></li>
                            </ul>
                            <ul>
                                <li><a href="#">Who We Are</a></li>
                                <li><a href="#">Our Services</a></li>
                                <li><a href="#">Projects</a></li>
                                <li><a href="#">Contact</a></li>
                                <li><a href="#">Innovation</a></li>
                                <li><a href="#">Testimonials</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12">
                        <div class="footer__widget">
                            <h6>Join Our Newsletter Now</h6>
                            <div class="footer__widget__social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-pinterest"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="footer__copyright">
                            <div class="footer__copyright__text"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                    Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="#" target="_blank">TrungND</a>
                                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p></div>
                            <div class="footer__copyright__payment"><img src="img/payment-item.png" alt=""></div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>


        <!-- Js Plugins -->
        <script src="js1/jquery-3.3.1.min.js"></script>
        <script src="js1/bootstrap.min.js"></script>
        <script src="js1/jquery.nice-select.min.js"></script>
        <script src="js1/jquery-ui.min.js"></script>
        <script src="js1/jquery.slicknav.js"></script>
        <script src="js1/mixitup.min.js"></script>
        <script src="js1/owl.carousel.min.js"></script>
        <script src="js1/main.js"></script>
    </body>
</html>
