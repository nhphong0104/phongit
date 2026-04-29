<ul {!! BaseHelper::clean($options) !!}>
    @foreach ($menu_nodes as $key => $row)
        <li class="@if ($row->has_child) has-dropdown @endif {{ $row->css_class }} @if ($row->active) active @endif">
            <a href="{{ $row->url }}" target="{{ $row->target }}" @if($row->has_child) class="has-dropdown" @endif>
                {!! $row->icon_html !!}
                <span class="menu-title">{{ $row->title }}</span>
            </a>
            @if ($row->has_child)
                {!!
                    Menu::generateMenu([
                        'menu' => $menu,
                        'menu_nodes' => $row->child,
                        'view' => 'main-menu-mobile',
                        'options' => ['class' => 'submenu'],
                    ])
                !!}
            @endif
        </li>
    @endforeach
</ul>
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