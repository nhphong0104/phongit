<!-- Preloader Start -->
<div id="preloader" class="preloader">
    <div class="animation-preloader">
        <div class="spinner">
        </div>
        <div class="txt-loading">
            <span data-text-preloader="H" class="letters-loading">
                H
            </span>
            <span data-text-preloader="O" class="letters-loading">
                O
            </span>
            <span data-text-preloader="K" class="letters-loading">
                K
            </span>
            <span data-text-preloader="Y" class="letters-loading">
                Y
            </span>
            
        </div>
        <p class="text-center">Loading</p>
    </div>
    <div class="loader">
        <div class="row">
            <div class="col-3 loader-section section-left">
                <div class="bg"></div>
            </div>
            <div class="col-3 loader-section section-left">
                <div class="bg"></div>
            </div>
            <div class="col-3 loader-section section-right">
                <div class="bg"></div>
            </div>
            <div class="col-3 loader-section section-right">
                <div class="bg"></div>
            </div>
        </div>
    </div>
</div>

<!-- GT Back To Top Start -->
<button id="gt-back-top" class="gt-back-to-top show">
    <i class="fa-solid fa-arrow-up"></i>
</button>

<!-- GT MouseCursor Start -->
<div class="mouseCursor cursor-outer"></div>
<div class="mouseCursor cursor-inner"></div>

<!-- Offcanvas Area Start -->
<div class="fix-area">
    <div class="offcanvas__info">
        <div class="offcanvas__wrapper">
            <div class="offcanvas__content">
                <div class="offcanvas__top mb-5 d-flex justify-content-between align-items-center">
                    <div class="offcanvas__logo">
                        <a href="{{ BaseHelper::getHomepageUrl() }}">
                            @if ($logo = theme_option('logo'))
                                {{ RvMedia::image($logo, theme_option('site_title')) }}
                            @endif
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
                    Nullam dignissim, ante scelerisque the is euismod fermentum odio sem semper the is erat, a
                    feugiat
                    leo urna eget eros. Duis Aenean a imperdiet risus.
                </p>
                <div class="mobile-menu fix mb-3"></div>
                <div class="offcanvas__contact">
                    <h4>{{ __('Contact Info') }}</h4>
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
                                    <span
                                        class="mailto:{{ theme_option('company_email') }}">{{ theme_option('company_email') }}</span></a>
                            </div>
                        </li>
                        <li class="d-flex align-items-center">
                            <div class="offcanvas__contact-icon mr-15">
                                <i class="far fa-phone"></i>
                            </div>
                            <div class="offcanvas__contact-text">
                                <a
                                    href="tel:{{ theme_option('company_phone') }}">{{ theme_option('company_phone') }}</a>
                            </div>
                        </li>
                    </ul>
                    <div class="header-button mt-4">

                    </div>
                    <a href="tel:{{ theme_option('company_phone') }}" class="gt-theme-btn">
                        <span class="gt-icon-btn"><i class="icon-icon-1"></i></span>
                        <span class="gt-text-btn">
                            <span class="gt-text-2">{{ __('Contact Now') }}</span>
                        </span>
                    </a>
                    <div class="social-icon d-flex align-items-center">
                        <a href="{{ theme_option('company_facebook') }}" target="_blank"><i
                                class="fab fa-facebook-f"></i></a>
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

<div class="header-top-section">
    <div class="container-fluid">
        <div class="header-top-wrapper">
            <span>
                <i class="fa-solid fa-envelope"></i>
                <a href="mailto:{{ theme_option('company_email') }}">{{ theme_option('company_email') }}</a>
            </span>
            <h6>Chào mừng bạn đến với {{ theme_option('company_name') }}</h6>
            <span>
                <i class="fa-solid fa-phone-volume"></i>
                <a href="tel:{{ theme_option('company_phone') }}">{{ theme_option('company_phone') }}</a>
            </span>
        </div>
    </div>
</div>

<header id="header-sticky" class="header-1 header-2">
    <div class="container-fluid">
        <div class="mega-menu-wrapper">
            <div class="header-main">
                <div class="logo">
                    <a href="{{ BaseHelper::getHomepageUrl() }}" class="header-logo">
                        @if ($logo = theme_option('logo'))
                            {{ RvMedia::image($logo, theme_option('site_title')) }}
                        @endif
                    </a>
                    <a href="{{ BaseHelper::getHomepageUrl() }}" class="header-logo-2">
                        @if ($logo = theme_option('logo'))
                            {{ RvMedia::image($logo, theme_option('site_title')) }}
                        @endif
                    </a>
                </div>
                <div class="mean__menu-wrapper">
                    <div class="main-menu">
                        <nav id="mobile-menu">
                            {!!
Menu::renderMenuLocation('main-menu', [
    'options' => ['id' => 'mobile-menu'],
    'view' => 'main-menu-mobile',
])
                    !!}
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
                    <a href="tel:{{ theme_option('company_phone') }}" class="gt-theme-btn">
                        <span class="gt-text-btn">
                            <span class="gt-text-2">{{ __('Contact Now') }}</span>
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
        <form role="search" method="get" class="search-popup__form" action="{{ route('public.search') }}">
            <input type="text" id="search" name="q" placeholder="Tìm kiếm ...">
            <button type="submit" aria-label="search submit" class="search-btn">
                <span><i class="fa-regular fa-magnifying-glass"></i></span>
            </button>
        </form>
    </div>
</div>