
<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>@yield("title")</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/png" href="{{ asset('frontend_asset') }}/images/favicon.png">
    <!-- Place favicon.ico in the root directory -->
    <!-- all css here -->
    <!-- bootstrap v3.3.7 css -->
    <link rel="stylesheet" href="{{ asset('frontend_asset') }}/css/bootstrap.min.css">
    <!-- owl.carousel.2.0.0-beta.2.4 css -->
    <link rel="stylesheet" href="{{ asset('frontend_asset') }}/css/owl.carousel.min.css">
    <!-- font-awesome v4.6.3 css -->
    <link rel="stylesheet" href="{{ asset('frontend_asset') }}/css/font-awesome.min.css">
    <!-- flaticon.css -->
    <link rel="stylesheet" href="{{ asset('frontend_asset') }}/css/flaticon.css">
    <!-- jquery-ui.css -->
    <link rel="stylesheet" href="{{ asset('frontend_asset') }}/css/jquery-ui.css">
    <!-- metisMenu.min.css -->
    <link rel="stylesheet" href="{{ asset('frontend_asset') }}/css/metisMenu.min.css">
    <!-- swiper.min.css -->
    <link rel="stylesheet" href="{{ asset('frontend_asset') }}/css/swiper.min.css">
    <!-- style css -->
    <link rel="stylesheet" href="{{ asset('frontend_asset') }}/css/styles.css">
    <!-- responsive css -->
    <link rel="stylesheet" href="{{ asset('frontend_asset') }}/css/responsive.css">
    <!-- modernizr css -->
    <script src="{{ asset('frontend_asset') }}/js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
  <!--Start Preloader-->
  <div class="preloader-wrap">
      <div class="spinner"></div>
  </div>
  <!-- search-form here -->
  <div class="search-area flex-style">
      <span class="closebar">Close</span>
      <div class="container">
          <div class="row">
              <div class="col-md-8 offset-md-2 col-12">
                  <div class="search-form">
                      <form action="#">
                          <input type="text" placeholder="Search Here...">
                          <button><i class="fa fa-search"></i></button>
                      </form>
                  </div>
              </div>
          </div>
      </div>
  </div>
  <!-- search-form here -->
  <!-- header-area start -->
  <header class="header-area">
      <div class="header-top bg-2">
          <div class="fluid-container">
              <div class="row">
                  <div class="col-md-6 col-12">
                      <ul class="d-flex header-contact">
                          <li><i class="fa fa-phone"></i> +01 123 456 789</li>
                          <li><i class="fa fa-envelope"></i> youremail@gmail.com</li>
                      </ul>
                  </div>
                  <div class="col-md-6 col-12">
                      <ul class="d-flex account_login-area">
                          <li>
                              <a href="javascript:void(0);"><i class="fa fa-user"></i> My Account <i class="fa fa-angle-down"></i></a>
                              <ul class="dropdown_style">
                                  <li><a href="{{ route('customer.login') }}">Login</a></li>
                                  <li><a href="{{ route('customer.register') }}">Register</a></li>
                                  <li><a href="{{ route('cart.index') }}">Cart</a></li>
                              </ul>
                          </li>
                          <li><a href="{{ route('customer.dashbaord') }}">
                            @auth
                                        {{ Auth::user()->name }}
                                    @endauth
                                    @guest

                                    Register / Login
                                    @endguest
                        </a></li>
                      </ul>
                  </div>
              </div>
          </div>
      </div>
      <div class="header-bottom">
          <div class="fluid-container">
              <div class="row">
                  <div class="col-lg-3 col-md-7 col-sm-6 col-6">
                      <div class="logo">
                          <a href="{{ route('/') }}">
                      <img src="{{ asset('frontend_asset') }}/images/logo.png" alt="">
                      </a>
                      </div>
                  </div>
                  <div class="col-lg-7 d-none d-lg-block">
                      <nav class="mainmenu">
                          <ul class="d-flex">
                              <li class="@yield('home')"><a href="{{ url('/') }}">Home</a></li>
                              <li class="@yield('about')"><a href="{{ route('about') }}">About</a></li>
                              <li class="@yield('shope')"><a href="{{ route('shope') }}">Shope</a></li>
                              <li class="@yield('contact')"><a href="{{ route('contact') }}">Contact</a></li>
                          </ul>
                      </nav>
                  </div>
                  <div class="col-md-4 col-lg-2 col-sm-5 col-4">
                      <ul class="search-cart-wrapper d-flex">

                          <li>
                              <a href="javascript:void(0);"><i class="flaticon-shop"></i> <span>{{ cart_count() }}</span></a>
                              <ul class="cart-wrap dropdown_style">
                                  @php
                                     $subtotal = 0;
                                  @endphp
                                  @foreach (cart_item() as $cart_item)
                                  <li class="cart-items">
                                      <div class="cart-img">
                                          <img src="{{ asset('frontend_asset') }}/images/cart/1.jpg" alt="">
                                      </div>
                                      <div class="cart-content">
                                          <a href="{{ route('product.details',$cart_item->product->slug_link) }}">{{ $cart_item->product->product_name }}</a>
                                          <span>QTY : {{ $cart_item->product_quantity }}</span>
                                          <p>${{ $cart_item->product->product_price * $cart_item->product_quantity  }}</p>
                                          @php
                                              $subtotal += $cart_item->product->product_price * $cart_item->product_quantity
                                          @endphp
                                          <a href="{{ route('cart.remove',$cart_item->id) }}"><i class="fa fa-times "></i></a>

                                      </div>
                                  </li>
                                  @endforeach
                                  <li>Subtotol: <span class="pull-right">${{ $subtotal }}</span></li>
                                  <li>
                                      <a href="{{ route('cart.index') }}" class="btn btn-danger">Check Out</a>
                                  </li>
                              </ul>
                          </li>
                      </ul>
                  </div>
                  <div class="col-md-1 col-sm-1 col-2 d-block d-lg-none">
                      <div class="responsive-menu-tigger">
                          <a href="javascript:void(0);">
                      <span class="first"></span>
                      <span class="second"></span>
                      <span class="third"></span>
                      </a>
                      </div>
                  </div>
              </div>
          </div>
          <!-- responsive-menu area start -->
          <div class="responsive-menu-area">
              <div class="container">
                  <div class="row">
                      <div class="col-12 d-block d-lg-none">
                          <ul class="metismenu">
                              <li class="@yield('home')"><a href="{{ route('/') }}">Home</a></li>
                              <li class="@yield('about')"><a href="{{ route('about') }}">About</a></li>
                              <li class="@yield('shope')"><a href="{{ route('shope') }}">Shope</a></li>

                              <li class="@yield('contact')"><a href="{{ route('contact') }}">Contact</a></li>
                          </ul>
                      </div>
                  </div>
              </div>
          </div>
          <!-- responsive-menu area start -->
      </div>
  </header>
  <!-- header-area end -->

@yield('frontend_content')

<div class="footer-area">
    <div class="footer-top">
        <div class="container">
            <div class="footer-top-item">
                <div class="row">
                    <div class="col-lg-12 col-12">
                        <div class="footer-top-text text-center">
                            <ul>
                                <li><a href="{{ route('home') }}">home</a></li>
                                <li><a href="{{ route('about') }}">our story</a></li>
                                <li><a href="{{ route('shope') }}">feed shop</a></li>
                                <li><a href="{{ route('contact') }}">contact</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-bottom">
        <div class="container">
            <div class="row">
                <div class="col-lg-2 col-md-3 col-sm-12">
                    <div class="footer-icon">
                        <ul class="d-flex">
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-8 col-sm-12">
                    <div class="footer-content">
                        <p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure righteous indignation and dislike</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-8 col-sm-12">
                    <div class="footer-adress">
                        <ul>
                            <li><a href="#"><span>Email:</span> domain@gmail.com</a></li>
                            <li><a href="#"><span>Tel:</span> 0131234567</a></li>
                            <li><a href="#"><span>Adress:</span> 52 Web Bangale , Adress line2 , ip:3105</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-12">
                    <div class="footer-reserved">
                        <ul>
                            <li>Copyright © 2019 Tohoney All rights reserved.</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- .footer-area end -->
<!-- jquery latest version -->
<script src="{{ asset('frontend_asset') }}/js/vendor/jquery-2.2.4.min.js"></script>
<!-- bootstrap js -->
<script src="{{ asset('frontend_asset') }}/js/bootstrap.min.js"></script>
<!-- owl.carousel.2.0.0-beta.2.4 css -->
<script src="{{ asset('frontend_asset') }}/js/owl.carousel.min.js"></script>
<!-- mouse_scroll.js -->
<script src="{{ asset('frontend_asset') }}/js/mouse_scroll.js"></script>
<!-- scrollup.js -->
<script src="{{ asset('frontend_asset') }}/js/scrollup.js"></script>
<!-- isotope.pkgd.min.js -->
<script src="{{ asset('frontend_asset') }}/js/isotope.pkgd.min.js"></script>
<!-- imagesloaded.pkgd.min.js -->
<script src="{{ asset('frontend_asset') }}/js/imagesloaded.pkgd.min.js"></script>
<!-- jquery.zoom.min.js -->
<script src="{{ asset('frontend_asset') }}/js/jquery.zoom.min.js"></script>
<!-- swiper.min.js -->
<script src="{{ asset('frontend_asset') }}/js/swiper.min.js"></script>
<!-- metisMenu.min.js -->
<script src="{{ asset('frontend_asset') }}/js/metisMenu.min.js"></script>
<!-- mailchimp.js -->
<script src="{{ asset('frontend_asset') }}/js/mailchimp.js"></script>
<!-- jquery-ui.min.js -->
<script src="{{ asset('frontend_asset') }}/js/jquery-ui.min.js"></script>
<!-- main js -->
<script src="{{ asset('frontend_asset') }}/js/scripts.js"></script>
</body>


<!-- Mirrored from themepresss.com/tf/html/tohoney/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 13 Mar 2020 03:34:48 GMT -->
</html>
