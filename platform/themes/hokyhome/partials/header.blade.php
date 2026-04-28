
<!-- GT Back To Top Start -->
<button id="gt-back-top" class="gt-back-to-top show">
    <i class="fa-solid fa-arrow-up"></i>
</button>

<!-- Offcanvas Area Start -->
<div class="fix-area">
    <div class="offcanvas__info">
        <div class="offcanvas__wrapper">
            <div class="offcanvas__content">
                <div class="offcanvas__top mb-5 d-flex justify-content-between align-items-center">
                    <div class="offcanvas__logo">
                        <a href="index.html">
                            <img src="assets/img/logo/black-logo.svg" alt="logo-img">
                        </a>
                    </div>
                    <div class="offcanvas__close">
                        <button>
                            <i class="fas fa-times"></i>
                        </button>
                    </div>
                </div>
                <p class="text d-none d-xl-block">
                    Nullam dignissim, ante scelerisque the is euismod fermentum odio sem semper the is erat, a feugiat
                    leo urna eget eros. Duis Aenean a imperdiet risus.
                </p>
                <div class="mobile-menu fix mb-3"></div>
                <div class="offcanvas__contact">
                    <h4>Contact Info</h4>
                    <ul>
                        <li class="d-flex align-items-center">
                            <div class="offcanvas__contact-icon">
                                <i class="fal fa-map-marker-alt"></i>
                            </div>
                            <div class="offcanvas__contact-text">
                                <a target="_blank" href="#">{{ theme_option('company_address') }}</a>
                            </div>
                        </li>
                        <li class="d-flex align-items-center">
                            <div class="offcanvas__contact-icon mr-15">
                                <i class="fal fa-envelope"></i>
                            </div>
                            <div class="offcanvas__contact-text">
                                <a href="mailto:{{ theme_option('company_email') }}">
                                    <span class="mailto:{{ theme_option('company_email') }}">{{ theme_option('company_email') }}</span></a>
                            </div>
                        </li>
                        <li class="d-flex align-items-center">
                            <div class="offcanvas__contact-icon mr-15">
                                <i class="far fa-phone"></i>
                            </div>
                            <div class="offcanvas__contact-text">
                                <a href="tel:{{ theme_option('company_phone') }}">{{ theme_option('company_phone') }}</a>
                            </div>
                        </li>
                    </ul>
                    <div class="header-button mt-4">

                    </div>
                    <a href="tel:{{ theme_option('company_phone') }}" class="gt-theme-btn">
                        <span class="gt-icon-btn"><i class="icon-icon-1"></i></span>
                        <span class="gt-text-btn">
                            <span class="gt-text-2">Liên hệ ngay</span>
                        </span>
                    </a>
                    <div class="social-icon d-flex align-items-center">
                        <a href="{{ theme_option('company_facebook') }}" target="_blank"><i class="fab fa-facebook-f"></i></a>
                        <a href="#"><i class="fab fa-twitter"></i></a>
                        <a href="#"><i class="fab fa-youtube"></i></a>
                        <a href="#"><i class="fab fa-linkedin-in"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="offcanvas__overlay"></div>

<!-- Header Section Start -->
<header id="header-sticky" class="header-1">
    <div class="container-fluid">
        <div class="mega-menu-wrapper">
            <div class="header-main">
                <div class="logo">
                    <a href="{{ route('home') }}" class="header-logo">
                        <img src="{{ theme_option('logo') }}" alt="logo-img">
                    </a>
                    <a href="{{ route('home') }}" class="header-logo-2">
                        <img src="{{ theme_option('logo') }}" alt="logo-img">
                    </a>
                </div>
                <div class="mean__menu-wrapper">
                    <div class="main-menu">
                        <nav id="mobile-menu">
                            <ul>
                                <li class="has-dropdown active menu-thumb">
                                    <a href="index.html">
                                        Home
                                    </a>
                                    <ul class="submenu has-homemenu">
                                        <li>
                                            <div class="homemenu-items">
                                                <div class="homemenu">
                                                    <div class="homemenu-thumb">
                                                        <img src="assets/img/header/home-1.jpg" alt="img">
                                                        <div class="demo-button">
                                                            <a href="index.html" class="gt-theme-btn">
                                                                <span class="gt-text-btn">
                                                                    <span class="gt-text-2"> Multi Page <i
                                                                            class="fa-solid fa-arrow-right"></i></span>
                                                                </span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="homemenu-content text-center">
                                                        <h4 class="homemenu-title">
                                                            Constraction
                                                        </h4>
                                                    </div>
                                                </div>
                                                <div class="homemenu">
                                                    <div class="homemenu-thumb mb-15">
                                                        <img src="assets/img/header/home-2.jpg" alt="img">
                                                        <div class="demo-button">
                                                            <a href="index-2.html" class="gt-theme-btn">
                                                                <span class="gt-text-btn">
                                                                    <span class="gt-text-2"> Multi Page <i
                                                                            class="fa-solid fa-arrow-right"></i></span>
                                                                </span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="homemenu-content text-center">
                                                        <h4 class="homemenu-title">
                                                            Architecture
                                                        </h4>
                                                    </div>
                                                </div>
                                                <div class="homemenu">
                                                    <div class="homemenu-thumb mb-15">
                                                        <img src="assets/img/header/home-3.jpg" alt="img">
                                                        <div class="demo-button">
                                                            <a href="index-3.html" class="gt-theme-btn">
                                                                <span class="gt-text-btn">
                                                                    <span class="gt-text-2"> Multi Page <i
                                                                            class="fa-solid fa-arrow-right"></i></span>
                                                                </span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="homemenu-content text-center">
                                                        <h4 class="homemenu-title">
                                                            Roofing Home
                                                        </h4>
                                                    </div>
                                                </div>
                                                <div class="homemenu">
                                                    <div class="homemenu-thumb mb-15">
                                                        <img src="assets/img/header/home-4.jpg" alt="img">
                                                        <div class="demo-button">
                                                            <a href="index-4.html" class="gt-theme-btn">
                                                                <span class="gt-text-btn">
                                                                    <span class="gt-text-2"> Multi Page <i
                                                                            class="fa-solid fa-arrow-right"></i></span>
                                                                </span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="homemenu-content text-center">
                                                        <h4 class="homemenu-title">
                                                            Solar
                                                        </h4>
                                                    </div>
                                                </div>
                                                <div class="homemenu">
                                                    <div class="homemenu-thumb mb-15">
                                                        <img src="assets/img/header/home-5.jpg" alt="img">
                                                        <div class="demo-button">
                                                            <a href="index-5.html" class="gt-theme-btn">
                                                                <span class="gt-text-btn">
                                                                    <span class="gt-text-2"> Multi Page <i
                                                                            class="fa-solid fa-arrow-right"></i></span>
                                                                </span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="homemenu-content text-center">
                                                        <h4 class="homemenu-title">
                                                            Industry
                                                        </h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </li>
                                <li class="has-dropdown active d-xl-none">
                                    <a href="index.html" class="border-none">
                                        Home
                                    </a>
                                    <ul class="submenu">
                                        <li><a href="index.html">Constraction</a></li>
                                        <li><a href="index-2.html">Architecture</a></li>
                                        <li><a href="index-3.html">Roofing Home</a></li>
                                        <li><a href="index-4.html">Solar</a></li>
                                        <li><a href="index-5.html">Industry</a></li>
                                    </ul>
                                </li>
                                <li><a href="about.html">About Us</a></li>
                                <li class="has-dropdown">
                                    <a href="news.html">
                                        Pages
                                    </a>
                                    <ul class="submenu">
                                        <li class="has-dropdown">
                                            <a href="team-details.html">
                                                Our Team
                                                <i class="fas fa-angle-right"></i>
                                            </a>
                                            <ul class="submenu">
                                                <li><a href="team.html">Our Team</a></li>
                                                <li><a href="team-details.html">Team Details</a></li>
                                            </ul>
                                        </li>
                                        <li class="has-dropdown">
                                            <a href="project-details.html">
                                                Our Project
                                                <i class="fas fa-angle-right"></i>
                                            </a>
                                            <ul class="submenu">
                                                <li><a href="project.html">Our Project</a></li>
                                                <li><a href="project-details.html">Project Details</a></li>
                                            </ul>
                                        </li>
                                        <li class="has-dropdown">
                                            <a href="shop-details.html">
                                                Shop Page
                                                <i class="fas fa-angle-right"></i>
                                            </a>
                                            <ul class="submenu">
                                                <li><a href="shop.html">Shop Grid</a></li>
                                                <li><a href="shop-list.html">Shop List</a></li>
                                                <li><a href="shop-cart.html">Shop Cart</a></li>
                                                <li><a href="shop-details.html">Shop Details</a></li>
                                                <li><a href="checkout.html">Checkout</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="pricing.html">Our Pricing</a></li>
                                        <li><a href="coming-soon.html">Coming Soon</a></li>
                                        <li><a href="404.html">404 Page</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="service-details.html">
                                        Services
                                    </a>
                                    <ul class="submenu">
                                        <li><a href="service.html">Service Page</a></li>
                                        <li><a href="service-details.html">Service Details</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="news-details.html">
                                        Blog
                                    </a>
                                    <ul class="submenu">
                                        <li><a href="news-grid.html">Blog Grid</a></li>
                                        <li><a href="news.html">Blog Standard</a></li>
                                        <li><a href="news-details.html">Blog Details</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="contact.html">Contact Us</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="header-right d-flex justify-content-end align-items-center">
                    <div class="header-right-icon">
                        <a href="#" class="main-header__search search-toggler">
                            <i class="fa-regular fa-magnifying-glass"></i>
                        </a>
                    </div>
                    <div class="header__hamburger my-auto">
                        <div class="sidebar__toggle">
                            <div class="header-bar">
                                <img src="assets/img/home-1/dot.svg" alt="img">
                            </div>
                        </div>
                    </div>
                    <a href="contact.html" class="gt-theme-btn">
                        <span class="gt-text-btn">
                            <span class="gt-text-2">get a quote</span>
                        </span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</header>

<!-- GT Search Start -->
<div class="search-popup">
    <div class="search-popup__overlay search-toggler"></div>
    <div class="search-popup__content">
        <form role="search" method="get" class="search-popup__form" action="#">
            <input type="text" id="search" name="search" placeholder="Search Here...">
            <button type="submit" aria-label="search submit" class="search-btn">
                <span><i class="fa-regular fa-magnifying-glass"></i></span>
            </button>
        </form>
    </div>
</div>

<!-- GT Shop Details Popup Start -->
<div class="modal modal-common-wrap fade" id="exampleModal2" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog style-shop-details modal-dialog-centered modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="gt-shop-details-wrapper">
                    <div class="row g-4">
                        <div class="col-lg-6">
                            <div class="gt-shop-details-image">
                                <img src="assets/img/inner/shop-details/details-01.jpg" alt="img">
                                <span class="gt-box-text">(09% Of)</span>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="gt-shop-details-content">
                                <h6><span>Brand:</span> Conztra</h6>
                                <h2>Cordless Screwdriver Drill</h2>
                                <ul class="price-list">
                                    <li>
                                        Price: <span>$250.00</span>
                                    </li>
                                    <li>
                                        <del>$279.00</del>
                                    </li>
                                </ul>
                                <span class="eye-icon">
                                    <i class="fa-regular fa-eye"></i>
                                    16 people are viewing this right now
                                </span>
                                <ul class="color-list">
                                    <li>
                                        <span>Color:</span>
                                    </li>
                                    <li></li>
                                    <li></li>
                                    <li></li>
                                    <li></li>
                                </ul>
                                <div class="star">
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <span>(79+ Review)</span>
                                </div>
                                <p>
                                    Hurry! Only 12 units left in stock!
                                </p>
                                <div class="cart-quantity">
                                    <p class="qty">
                                        <button class="qtyminus" aria-hidden="true">−</button>
                                        <input type="number" name="qty" id="qty2" min="1" max="10" step="1" value="1">
                                        <button class="qtyplus" aria-hidden="true">+</button>
                                    </p>
                                    <a href="shop-details.html" class="shop-btn theme-btn">Add to cart</a>
                                    <div class="icon-item">
                                        <a href="shop-details.html" class="icon">
                                            <i class="far fa-heart"></i>
                                        </a>
                                    </div>
                                </div>
                                <button type="submit" class="buy-btn">
                                    Buy It Now
                                </button>
                                <ul class="gt-list-items">
                                    <li>
                                        <span>Certification:</span> Meets DOT, ECE, or Snell safety standards
                                    </li>
                                    <li>
                                        <span>Maximum Protection:</span> Full coverage for your head, face, and chin
                                    </li>
                                </ul>
                                <div class="share-list">
                                    <span>Share With:</span>
                                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                                    <a href="#"><i class="fab fa-twitter"></i></a>
                                    <a href="#"><i class="fab fa-vimeo-v"></i></a>
                                    <a href="#"><i class="fab fa-pinterest-p"></i></a>
                                </div>
                                <div class="gt-bank-list">
                                    <div class="">
                                        Guaranteed
                                        <span>Safe & Secure Checkout</span>
                                    </div>
                                    <img src="assets/img/inner/shop-details/pay_brand.png" alt="img">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>